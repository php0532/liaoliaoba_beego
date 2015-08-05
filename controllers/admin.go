package controllers

import (
	"github.com/astaxie/beego"
  "github.com/liaoliaoba/models"
)

type AdminController struct {
	beego.Controller
}

func (c *AdminController) Get() {
	c.TplNames = "admin/login.tpl"
  //c.Ctx.WriteString("123123")

}

func (c *AdminController) Post() {
      //un := c.GetString("username")
      //pw := c.GetString("password")
     ad := new(models.Admin)
     ad.insertOne("zhangyong","mima")
    //var info = models.insertOne()


}
