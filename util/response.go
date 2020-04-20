package util

import (
	"github.com/gin-gonic/gin"
	"net/http"
)

const (
	SuccessCode = 0
)

type Response struct {
	HttpCode     int         `json:"-"`
	Code         int         `json:"code"`
	Error        bool        `json:"error"`
	ErrorMessage string      `json:"error_message,omitempty"`
	Data         interface{} `json:"data,omitempty"`
}

type ErrorCode struct {
	HttpCode int
	Code     int
	Message  string
}

func Error(error *ErrorCode) Response {
	return Response{
		HttpCode:     error.HttpCode,
		Code:         error.Code,
		Error:        true,
		ErrorMessage: error.Message,
	}
}

func Ok(data interface{}) Response {
	return Response{
		HttpCode: http.StatusOK,
		Code:     SuccessCode,
		Error:    false,
		Data:     data,
	}
}

func Respond(response Response, c *gin.Context) {
	c.AbortWithStatusJSON(response.HttpCode, response)
}

func RespondOkStatus(c *gin.Context) {
	c.AbortWithStatus(http.StatusOK)
}

func RespondOk(data interface{}, c *gin.Context) {
	Respond(Ok(data), c)
}

func RespondError(error *ErrorCode, c *gin.Context) {
	Respond(Error(error), c)
}

func RespondMalformedDataError(err error, c *gin.Context) {
	RespondError(MalformedData(err), c)
}

func RespondDatabaseError(err error, c *gin.Context) {
	RespondError(DatabaseError(err), c)
}
