using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace test2
{
    public partial class Read : System.Web.UI.Page
    {
        DemoDataContext dt = new DemoDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            int? so = null;
            int id = Convert.ToInt32(Request["ID"]);
            int idBantin = Convert.ToInt32(Request["IDBantin"]);
            dt.chitiet_lanxem(id, ref so);// lấy dữ liệu và convert
            if (so == null)
            {
                so = 0;
            }
            int giatri = Convert.ToInt32(so) + 1;// tăng số lượt xem
            dt.ChiTiet_SLX(giatri, id);
            Rpbantinct.DataSource = dt.Bantin_Selectid(idBantin);
            Rpbantinct.DataBind();
            RpContent.DataSource = dt.ChiTiet_SelectID(id);
            RpContent.DataBind();
            RpterRadom.DataSource = dt.Chitiet_Selectradom();
            RpterRadom.DataBind();
        }
    }
}