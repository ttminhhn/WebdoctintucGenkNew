using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace test2
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        DemoDataContext dt = new DemoDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                rpbantin.DataSource = dt.Bantin_SelectAll();
                rpbantin.DataBind();
                rpbantin2.DataSource= dt.Bantin_SelectAll();
                rpbantin2.DataBind();
            }
            Btn.OnClientClick = "return checkdodai()";
            //search();
        }
        //protected void search()
        //{
        //    if (IsPostBack)
        //    {
        //        var txtkeysearch = Request.Form["keysearch"];
        //        Response.Redirect("Search.aspx?keysearch=" + txtkeysearch + "");
        //    }

        //}

    }
}