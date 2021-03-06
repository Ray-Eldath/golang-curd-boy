# golang-curd-boy

This repository is a demonstration of how a typical, or very likely simplified web backend will be programmed in Golang, using [Gin](https://gin-gonic.com/) as backend framework and [GORM](https://gorm.io/) as ORM engine.

Feature of this application is to expose a set of API which allows user to list, filter, create or delete continents and countries on the world. Data is derived from [MySQL `world` demonstration database](https://dev.mysql.com/doc/world-setup/en/) and [Wikipedia](https://en.wikipedia.org/wiki/Continent).

You should firstly properly import data into your MySQL database using the `world_x.sql`, then set environment variables `GOLANG_CURD_BOY_ROOT_PASSWORD` and `GOLANG_CURD_BOY_DATABASE` properly. The application will expose 6 endpoints on your machine, as shown in `GIN-debug` message.

Try it with different HTTP verbs! Typically `GET` for general simple request, `POST` for creation, `PATCH` for updating and `DELETE` for deletion.

BTW, The `ETL.sc` file is an [Ammonite](https://ammonite.io/) script for transforming data of MySQL `world` demonstration database into their ad-hoc representation for this application, it is fine to omit them and only use exported data in `world_x.sql`. 