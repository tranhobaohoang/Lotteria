using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Sachtheonhaxuatban : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["quyen"] != null)
            {
                if (Session["quyen"].ToString() == "1")
                    Response.Redirect("~/AdminFood.aspx");
                else if (Session["quyen"].ToString() == "2")
                    Response.Redirect("~/AdminKH.aspx");
                else Response.Redirect("~/AdminAD.aspx");
            }
        }
    }
}