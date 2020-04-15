package controller

import (
	. "awesomeProject/model"
	. "awesomeProject/util"
	"github.com/gin-gonic/gin"
)

func (CountryController) List(c *gin.Context) {
	var pagination Pagination
	if err := c.BindQuery(&pagination); err != nil {
		RespondMalformedDataError(err, c)
		return
	}

	var filter CountryFilter
	if err := c.BindQuery(&filter); err != nil {
		RespondMalformedDataError(err, c)
		return
	}
	countries, total, err := CountrySingleton.Find(&filter, &pagination)
	if err != nil {
		RespondDatabaseError(err, c)
		return
	}

	RespondOk(ListResponse{
		Total: total,
		List:  countries,
	}, c)
}

func RegisterCountry(router *gin.Engine) {
	c := CountryController{}
	router.GET("/countries", c.List)
}

type CountryController struct {
}
