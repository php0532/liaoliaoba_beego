package controllers

import (
	"github.com/astaxie/beego"
  "github.com/liaoliaoba/models"
  "crypto/md5"
  "encoding/hex"
  "strconv"
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
     ad.AdminName="test2"
     h := md5.New()
     h.Write([]byte("ad.PassWord"))
     ad.AdminPass=hex.EncodeToString(h.Sum(nil))
     ad.AdminStatus=12
     ad.AdminLower = "good2"
     insertId:=ad.InsertOne()
       
    //var info = models.insertOne()
   
    //return hex.EncodeToString(h.Sum(nil))
     insStr := strconv.FormatInt(insertId,10)
    c.Ctx.WriteString(insStr)

}
