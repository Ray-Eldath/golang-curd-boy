package controller

import (
	"github.com/gin-gonic/gin"
	. "golang-curd-boy/model"
	. "golang-curd-boy/util"
	"strconv"
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

func (CountryController) Single(c *gin.Context) {
	id, paramErr := strconv.Atoi(c.Param("id"))
	if paramErr != nil {
		RespondMalformedDataError(paramErr, c)
		return
	}

	countries, _, err := CountrySingleton.Find(&CountryFilter{ID: int32(id)}, SingleElementPage)
	if err != nil {
		RespondDatabaseError(err, c)
		return
	}

	RespondOk(countries, c)
}

func (CountryController) Create(c *gin.Context) {
	var country Country
	if err := c.BindJSON(&country); err != nil {
		RespondMalformedDataError(err, c)
		return
	}

	if err := CountrySingleton.Create(&country); err != nil {
		RespondDatabaseError(err, c)
		return
	}

	RespondOk(IDResponse{ID: *country.ID}, c)
}

func (CountryController) Update(c *gin.Context) {
	var country CountryUpdate
	if err := c.BindJSON(&country); err != nil {
		RespondMalformedDataError(err, c)
		return
	}

	id, convertErr := strconv.Atoi(c.Param("id"))
	if convertErr != nil {
		RespondMalformedDataError(convertErr, c)
		return
	}

	if err := CountrySingleton.Update(int32(id), &country); err != nil {
		RespondDatabaseError(err, c)
		return
	}

	RespondOkStatus(c)
}

func RegisterCountry(router *gin.Engine) {
	c := CountryController{}
	router.GET("/countries", c.List)
	router.POST("/countries", c.Create)

	router.GET("/countries/:id", c.Single)
	router.PATCH("/countries/:id", c.Update)
}

type CountryController struct {
}
