using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace test2
{
    public partial class Category : System.Web.UI.Page
    {
        DemoDataContext dt = new DemoDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            int idbantin = Convert.ToInt32(Request["idbantin"]);
            RpCategory.DataSource = dt.Bantin_Selectid(idbantin);
            RpCategory.DataBind();
            RpterTest.DataSource = dt.Chitiet_Selectbantin(idbantin);
            RpterTest.DataBind();
        }
    }
}