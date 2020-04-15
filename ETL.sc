import $ivy.`org.scalikejdbc::scalikejdbc:3.4.1`
import $ivy.`mysql:mysql-connector-java:8.0.19`

import scalikejdbc._

case class Country(code: String, name: String, surfaceArea: Double, population: Long, capital: String, continent: String)

val root = System.getenv("GOLANG_CURD_BOY_ROOT_PASSWORD")
val db = System.getenv("GOLANG_CURD_BOY_DATABASE")

println(s"Connecting to database world, $db with username root and password $root...")
ConnectionPool.add('world, "jdbc:mysql://localhost/world", "root", root)
ConnectionPool.add('world_x, s"jdbc:mysql://localhost/$db", "root", root)
println("Database connected.")

val origin = 
    NamedDB('world) readOnly { implicit session =>
        sql"""
            select *
            from country
                inner join city on city.ID = country.Capital
        """.map { rs => 
                new Country(rs.string("Code"), 
                        rs.string("country.Name"), 
                        rs.double("SurfaceArea"), 
                        rs.long("Population"), 
                        rs.string("city.Name"), 
                        rs.string("Continent"))
            }.list.apply()
    }

NamedDB('world_x) autoCommit { implicit session =>
    val continents: Map[String, Int] =
        sql"select * from continents".map(rs => rs.string("name") -> rs.int("id")).list.apply().toMap

    for (row <- origin)
        sql"""
            insert into countries (code, name, surface_area, population, capital, continent_id) values 
            (${row.code}, ${row.name}, ${row.surfaceArea}, ${row.population}, ${row.capital}, ${continents.get(row.continent)})
        """.update.apply()
}

println("ETL process done successfully.")