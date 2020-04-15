package controller

import (
	. "awesomeProject/util"
	"fmt"
	"github.com/gin-gonic/gin"
)

type HelloRequest struct {
	Name string `json:"name"  uri:"name"  binding:"required"`
	Age  uint   `json:"age"  uri:"age"`
}

func (h HelloController) JSON(c *gin.Context) {
	var json HelloRequest
	if bindError := c.BindJSON(&json); bindError != nil {
		RespondMalformedDataError(bindError, c)
		return
	}

	h.Handle(json, c)
}

func (h HelloController) Path(c *gin.Context) {
	var request HelloRequest
	if bindError := c.BindUri(&request); bindError != nil {
		RespondMalformedDataError(bindError, c)
		return
	}

	h.Handle(request, c)
}

func (HelloController) Handle(request HelloRequest, c *gin.Context) {
	fmt.Println(request)

	var beverage = "lemon juice"
	if request.Age >= 18 {
		beverage = "beer"
	}

	message := fmt.Sprintf("Handle %s, do you want some %s?", request.Name, beverage)
	RespondOk(gin.H{
		"message":  message,
		"your_age": request.Age,
	}, c)
}

func RegisterHello(router *gin.Engine) {
	h := HelloController{}
	router.POST("/hello/json", h.JSON)
	router.GET("/hello/path/:name/:age", h.Path)
}

type HelloController struct {
}
