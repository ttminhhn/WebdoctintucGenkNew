using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace test2
{
    public partial class index : System.Web.UI.Page
    {
        DemoDataContext dt = new DemoDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            Rpradom1.DataSource = dt.Chitiet_SelectHome().Take(1);
            Rpradom1.DataBind();
            //Rphotnew.DataSource = dt.hotnew().Take(1);
            Rphotnew.DataBind();
            RpterTest.DataSource = dt.Chitiet_SelectHome().Take(5);
            RpterTest.DataBind();
            RpterTest2.DataSource = dt.Chitiet_SelectHome().Take(5);
            RpterTest2.DataBind();
            //    RpTintat.DataSource = dt.tintat();
            //    RpTintat.DataBind();
            //    Rptintat2.DataSource = dt.tintat2();
            //    Rptintat2.DataBind();
            //}
        }
    }
}