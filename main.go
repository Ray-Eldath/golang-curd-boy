package main

import (
	. "awesomeProject/controller"
	"awesomeProject/model"
	. "awesomeProject/util"
	"fmt"
	"github.com/gin-gonic/gin"
	"github.com/jinzhu/gorm"
	_ "github.com/jinzhu/gorm/dialects/mysql"
	"log"
	"os"
)

func main() {
	db, err := gorm.Open("mysql",
		fmt.Sprintf("root:%s@/%s?charset=utf8mb4&parseTime=True&loc=Local",
			os.Getenv("GOLANG_CURD_BOY_ROOT_PASSWORD"),
			os.Getenv("GOLANG_CURD_BOY_DATABASE")))
	if err != nil {
		log.Fatal(err)
	}
	db.LogMode(true)
	Db = db
	db.AutoMigrate(model.ContinentSingleton, model.CountrySingleton)
	defer db.Close()

	engine := gin.Default()
	RegisterHello(engine)
	RegisterResponseTest(engine)
	RegisterContinent(engine)
	RegisterCountry(engine)

	_ = engine.Run()
}
