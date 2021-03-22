using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace test2
{
    public partial class register : System.Web.UI.Page
    {
        DemoDataContext dt = new DemoDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(IsPostBack)
            {
                var txtfullname = Request.Form["txtfullname"];
                var txtbirhday = Request.Form["txtbirthday"];
                var txtUserName = Request.Form["txtuser"];
                var txtPassWord = Request.Form["txtpassword"];


                dt.DangNhap_Insert1(txtfullname, txtbirhday, txtUserName, txtPassWord);
                lbthongbao.Text = "đăng ký thành công ";
                Response.Redirect("index.aspx");
            }

        }

    }
}