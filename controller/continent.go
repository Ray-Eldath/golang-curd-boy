package controller

import (
	"github.com/gin-gonic/gin"
	. "golang-curd-boy/model"
	. "golang-curd-boy/util"
)

func (ContinentController) List(c *gin.Context) {
	var pagination Pagination
	if err := c.BindQuery(&pagination); err != nil {
		RespondMalformedDataError(err, c)
		return
	}

	var filter ContinentFilter
	if err := c.BindQuery(&filter); err != nil {
		RespondMalformedDataError(err, c)
		return
	}

	countries, total, err := ContinentSingleton.Find(filter, pagination)
	if err != nil {
		RespondDatabaseError(err, c)
		return
	}

	RespondOk(ListResponse{
		Total: total,
		List:  countries,
	}, c)
}

func RegisterContinent(router *gin.Engine) {
	c := ContinentController{}
	router.GET("/continents", c.List)
}

type ContinentController struct {
}
