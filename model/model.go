package model

type IDResponse struct {
	ID int32 `json:"id"`
}

type ListResponse struct {
	Total int32       `json:"total"`
	List  interface{} `json:"list"`
}

type Pagination struct {
	Page    int32 `form:"page,default=1"`
	PrePage int32 `form:"pre_page,default=20"`
}

func (p Pagination) Paged() (limit int32, offset int32) {
	limit = p.PrePage
	offset = (p.Page - 1) * p.PrePage
	return
}

var SingleElementPage = &Pagination{Page: 1, PrePage: 1}
