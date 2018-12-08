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
            if(Session["TenDN"]!=null)
            {
                if (Session["quyen"].ToString() == "1")
                {
                    HyperLink1.NavigateUrl = "~/AdminFood.aspx";
                    HyperLink1.ForeColor = System.Drawing.Color.White;
                    HyperLink2.NavigateUrl = "";
                    HyperLink3.NavigateUrl = "";
                }
                else if (Session["quyen"].ToString() == "2")
                {
                    HyperLink1.NavigateUrl = "";
                    HyperLink2.NavigateUrl = "~/AdminKH.aspx";
                    HyperLink2.ForeColor = System.Drawing.Color.White;
                    HyperLink3.NavigateUrl = "";
                }
                else
                {
                    HyperLink1.NavigateUrl = "~/AdminFood.aspx";
                    HyperLink2.NavigateUrl = "~/AdminKH.aspx";
                    HyperLink3.NavigateUrl = "~/AdminAD.aspx";
                    HyperLink1.ForeColor = System.Drawing.Color.White;
                    HyperLink2.ForeColor = System.Drawing.Color.White;
                    HyperLink3.ForeColor = System.Drawing.Color.White;
                }
            }
        }
    }
}