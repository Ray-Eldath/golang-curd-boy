package model

import (
	. "golang-curd-boy/util"
)

type Continent struct {
	ID          int32  `gorm:"primary_key,auto_increment"  json:"id"`
	Name        string `gorm:"unique_key"  json:"name"`
	SurfaceArea int64  `json:"surface_area"`
	Population  int64  `json:"population"`
}

func (Continent) TableName() string {
	return "continents"
}

var ContinentSingleton = &Continent{}

type ContinentFilter struct {
	ID   int32  `form:"id"`
	Name string `gorm:"-"  form:"name"`
}

func (ContinentFilter) TableName() string {
	return "continents"
}

func (*Continent) Find(filter ContinentFilter, pagination Pagination) (continents []Continent, total int32, err error) {
	limit, offset := pagination.Paged()
	prefix := Db
	if filter.Name != "" {
		prefix = Db.Where("name like ?", "%"+filter.Name+"%")
	}
	err = prefix.Where(filter).Limit(limit).Offset(offset).Find(&continents).Count(&total).Error

	return
}

func (*Continent) FirstById(id int32) (country Country, err error) {
	err = Db.First(country, CountryFilter{ID: id}).Error
	return
}
