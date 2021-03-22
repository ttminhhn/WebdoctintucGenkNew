using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace test2
{
    public partial class Login : System.Web.UI.Page
    {
        DemoDataContext dt = new DemoDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                String txtUserName = Request.Form["txtuser"];
                String txtPassWord = Request.Form["txtpassword"];
             

                var dl = dt.DangNhap_Search(txtUserName, txtPassWord);
                int kt = dl.Count();
                if (kt > 0)
                {
                    Session["admin"] = true;
                    Response.Redirect("index.aspx");
                }
                else
                {

                    txtUserName = "";
                    txtPassWord = "";
                    lbthongbao.Text = "Đăng nhập thất bại";
                }
            }
        }
        
    }
}