package models

import (
    //"fmt"
    "github.com/astaxie/beego/orm"
    _ "github.com/go-sql-driver/mysql"
)


type Admin struct {
  Id int
  AdminName string
  AdminPass string
  AdminStatus int
  AdminLower string
}


func init() {
  orm.RegisterModel(new(Admin))
  orm.RegisterDriver("mysql", orm.DR_MySQL)
  orm.RegisterDataBase("default", "mysql", "root:@/liaoliaoba?charset=utf8")
}

 

func insertOne(un,pw string) int64 {
  o := orm.NewOrm()
  o.Using("default")
  admin:=new(Admin)
  admin.AdminName=un
  admin.AdminPass=pw
  admin.AdminStatus=1
  admin.AdminLower="good"
  info,_:=o.Insert(admin)
  return info
  //fmt.Println()
}
