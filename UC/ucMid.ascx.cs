using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class UC_ucSachmoi : System.Web.UI.UserControl
{
    CLASS x = new CLASS();
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            string MALOAI = Request.QueryString["MALOAI"];
            DataTable dt=new DataTable();

            if (MALOAI == null)
            {
                dt = x.GetData("select* from SANPHAM WHERE MALOAI=1");
                if (dt.Rows.Count > 0)
                {
                    DataList.DataSource = dt;
                    DataList.DataBind();

                    dt.Clear();
                    dt = x.GetData("SELECT TEN FROM LOAI WHERE MALOAI=1");
                    title.DataSource = dt;
                    title.DataBind();
                }

                dt.Clear();
                dt = x.GetData("select* from SANPHAM WHERE MALOAI=2");
                if (dt.Rows.Count > 0)
                {
                    DataList1.DataSource = dt;
                    DataList1.DataBind();

                    dt.Clear();
                    dt = x.GetData("SELECT TEN FROM LOAI WHERE MALOAI=2");
                    title1.DataSource = dt;
                    title1.DataBind();

                }

                dt.Clear();
                dt = x.GetData("select* from SANPHAM WHERE MALOAI=3");
                if (dt.Rows.Count > 0)
                {
                    DataList2.DataSource = dt;
                    DataList2.DataBind();

                    dt.Clear();
                    dt = x.GetData("SELECT TEN FROM LOAI WHERE MALOAI=3");
                    title2.DataSource = dt;
                    title2.DataBind();
                }

                dt.Clear();
                dt = x.GetData("select* from SANPHAM WHERE MALOAI=4");
                if (dt.Rows.Count > 0)
                {
                    DataList3.DataSource = dt;
                    DataList3.DataBind();

                    dt.Clear();
                    dt = x.GetData("SELECT TEN FROM LOAI WHERE MALOAI=4");
                    title3.DataSource = dt;
                    title3.DataBind();
                }

                dt.Clear();
                dt = x.GetData("select* from SANPHAM WHERE MALOAI=5");
                if (dt.Rows.Count > 0)
                {
                    DataList4.DataSource = dt;
                    DataList4.DataBind();

                    dt.Clear();
                    dt = x.GetData("SELECT TEN FROM LOAI WHERE MALOAI=5");
                    title4.DataSource = dt;
                    title4.DataBind();

                }

                dt.Clear();
                dt = x.GetData("select* from SANPHAM WHERE MALOAI=6");
                if (dt.Rows.Count > 0)
                {
                    DataList5.DataSource = dt;
                    DataList5.DataBind();

                    dt.Clear();
                    dt = x.GetData("SELECT TEN FROM LOAI WHERE MALOAI=6");
                    title5.DataSource = dt;
                    title5.DataBind();
                }
            }

            else
            {
                dt = x.GetData("select* from SANPHAM WHERE MALOAI="+MALOAI);
                if (dt.Rows.Count > 0)
                {
                    DataList.DataSource = dt;
                    DataList.DataBind();

                    dt.Clear();
                    dt = x.GetData("SELECT TEN FROM LOAI WHERE MALOAI="+MALOAI);
                    title.DataSource = dt;
                    title.DataBind();
                }
            }
            /*
            if (dt.Rows.Count > 0)
            {
                DataList.DataSource = dt;
                DataList.DataBind();
            }*/
            
        }
    }
}