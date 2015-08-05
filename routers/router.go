package routers

import (
	"github.com/liaoliaoba/controllers"
	"github.com/astaxie/beego"
)

func init() {
  //  beego.Router("/", &controllers.MainController{})
		beego.Router("/admin", &controllers.AdminController{})
}
