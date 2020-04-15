package controller

import (
	. "awesomeProject/util"
	"github.com/gin-gonic/gin"
)

func RegisterResponseTest(engine *gin.Engine) {
	engine.GET("/hello", func(c *gin.Context) {
		RespondOk(gin.H{
			"hello": "world",
		}, c)
	})
	engine.GET("/error", func(c *gin.Context) {
		RespondError(LoginRequired, c)
	})
}
