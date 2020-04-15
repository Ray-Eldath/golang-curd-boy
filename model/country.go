package model

import (
	. "awesomeProject/util"
)

// use MySQL demonstration database: world
type Country struct {
	ID          int32     `gorm:"primary_key,auto_increment"  json:"id"`
	Code        string    `gorm:"size:3;unique_index"  json:"code"`
	Name        string    `gorm:"size:100"  json:"name"`
	Continent   Continent `json:"continent"`
	ContinentID int32     `json:"-"`
	SurfaceArea float64   `json:"surface_area"`
	Population  int64     `json:"population"`
	Capital     string    `gorm:"size:50"  json:"capital"`
}

func (Country) TableName() string {
	return "countries"
}

var CountrySingleton = &Country{}

type CountryFilter struct {
	ID            int32  `form:"id"`
	Name          string `form:"name"`
	ContinentName string `form:"continent_name"`
	Capital       string `form:"capital"`
}

func (CountryFilter) TableName() string {
	return "countries"
}

func (*Country) Find(filter *CountryFilter, pagination *Pagination) (countries []*Country, total int32, err error) {
	limit, offset := pagination.Paged()
	prefix := Db.Joins("JOIN continents c ON countries.continent_id = c.id")
	if filter.Name != "" {
		prefix = prefix.Where("countries.name like ?", "%"+filter.Name+"%")
	}
	err = prefix.Where(filter).Limit(limit).Offset(offset).Preload("Continent").Find(&countries).Count(&total).Error
	return
}

func (*Country) FirstById(id int32) (country Country, err error) {
	err = Db.First(country, CountryFilter{ID: id}).Error
	return
}
