using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace test2
{
    public partial class addnews : System.Web.UI.Page
    {
        DemoDataContext dt = new DemoDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DrBanTin.DataTextField = "noidung";
                DrBanTin.DataValueField = "IDBantin";
                DrBanTin.DataSource = dt.Bantin_SelectAll();
                DrBanTin.DataBind();
            }
        }

        protected void btnInsert_Click1(object sender, EventArgs e)
        {
            string txtnoidung = Server.HtmlDecode(Request.Unvalidated.Form["ckeditor1"]);
            dt.ChiTiet_Insert(txttieude.Text, Txtmota.Text, txtduongdananh.Text, txtnoidung, DateTime.Now, Convert.ToInt32(DrBanTin.SelectedValue));
            Response.Redirect("index.aspx");
        }
    }

      
}