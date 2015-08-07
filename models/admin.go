package models

import (
    "fmt"
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

   
  orm.RegisterModelWithPrefix("llb_", new(Admin))
  orm.RegisterDriver("mysql", orm.DR_MySQL)
  orm.RegisterDataBase("default", "mysql", "root:@/liaoliaoba?charset=utf8")
 
}

 

func (self *Admin)InsertOne() int64 {
  o := orm.NewOrm()
  o.Using("default")
  info,err:=o.Insert(self)
  if err!=nil {
    fmt.Println(err)
    panic(err)
  }
  return info
  //fmt.Println()
}



