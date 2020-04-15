package util

import (
	"fmt"
	"net/http"
)

// 1: invalid field, only relate to the inbound data itself.
func MalformedData(err error) *ErrorCode {
	return &ErrorCode{
		HttpCode: http.StatusBadRequest,
		Code:     100,
		Message:  fmt.Sprintf("malformed data: %s", err.Error()),
	}
}

// 3: invalid state or data

var LoginRequired = &ErrorCode{
	HttpCode: http.StatusUnauthorized,
	Code:     301,
	Message:  "login required, you should log in first",
}

// 4: not found

// 5: internal server error
func DatabaseError(err error) *ErrorCode {
	return &ErrorCode{
		HttpCode: http.StatusInternalServerError,
		Code:     501,
		Message:  fmt.Sprintf("error when fetching database: %s", err.Error()),
	}
}
