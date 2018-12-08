using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class UC_ucLeft : System.Web.UI.UserControl
{
    CLASS x = new CLASS();
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            ChuDeSach();
        }
    }
    private void ChuDeSach()
    {
        DataTable dt = x.GetData("select* from LOAI");
        if (dt.Rows.Count > 0)
        {
            gvChuDeSach.DataSource = dt;
            gvChuDeSach.DataBind();
        }
    }
}