using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Giohang : System.Web.UI.Page
{
    CLASS x = new CLASS();
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            if (Session["quyen"] != null)
            {
                if (Session["quyen"].ToString() == "1")
                    Response.Redirect("~/AdminFood.aspx");
                else if (Session["quyen"].ToString() == "2")
                    Response.Redirect("~/AdminKH.aspx");
                else Response.Redirect("~/AdminAD.aspx");
            }


            if (Request.QueryString["msp"] != null)
            {
                int MaSP = int.Parse(Request.QueryString["msp"]);
                DataTable dt = x.GetData("SELECT TENSP,DONGIA FROM SANPHAM WHERE MASP=" + MaSP);
                String TenSP = dt.Rows[0][0].ToString();
                float DonGia = float.Parse(dt.Rows[0][1].ToString());
                int SoLuong = 1;
                ThemVaoGioHang(MaSP, TenSP, DonGia, SoLuong);
            }
            if (Session["GioHang"]!=null)
            {
                DataTable dt = new DataTable();
                dt = (DataTable)Session["GioHang"];
                System.Decimal TongThanhTien = 0;
                foreach(DataRow r in dt.Rows)
                {
                    r["ThanhTien"] = Convert.ToInt32(r["SoLuong"]) * Convert.ToDecimal(r["DonGia"]);
                    TongThanhTien += Convert.ToDecimal(r["ThanhTien"]);
                    lbTongThanhTien.Text = TongThanhTien.ToString();
                }
                gvGioHang.DataSource = dt;
                gvGioHang.DataBind();
            }
        }
    }
    public void ThemVaoGioHang(int MaSP,string TenSP,float DonGia,int SoLuong)
    {
        DataTable dt;
        if (Session["GioHang"] == null)
        {
            dt = new DataTable();
            dt.Columns.Add("MaSP");
            dt.Columns.Add("TenSP");
            dt.Columns.Add("DonGia");
            dt.Columns.Add("SoLuong");
            dt.Columns.Add("ThanhTien");

        }
        else dt = (DataTable)Session["GioHang"];
        int dong = SPDaCoTrongGioHang(MaSP, dt);
        if(dong!=-1)
        {
            dt.Rows[dong]["SoLuong"] = Convert.ToInt32(dt.Rows[dong]["SoLuong"]) + SoLuong;

        }
        else
        {
            DataRow dr = dt.NewRow();
            dr["MaSP"] = MaSP;
            dr["TenSP"] = TenSP;
            dr["DonGia"] = DonGia;
            dr["SoLuong"] = SoLuong;
            dr["ThanhTien"] = DonGia * SoLuong;
            dt.Rows.Add(dr);
        }
        Session["GioHang"] = dt;
    }
    public static int SPDaCoTrongGioHang(int MaSP,DataTable dt)
    {
        int dong = -1;
        for(int i=0;i<dt.Rows.Count;i++)
        {
            if(int.Parse(dt.Rows[i]["MaSP"].ToString())==MaSP)
            {
                dong = i;
                break;
            }
        }
        return dong;
    }


    protected void btDatHang_Click(object sender, EventArgs e)
    {
        if(Session["TenDN"]==null)
        {
            lbThongBaoLoi.Text = "Bạn chưa đăng nhập.";
            Response.Redirect("~/Dangnhap.aspx");
        }
        else
        {
            Response.Redirect("~/Thanhtoan.aspx");
        }
    }

    protected void btTiepTucMua_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Default.aspx");
    }

    protected void btXoaGioHang_Click(object sender, EventArgs e)
    {
        Session["GioHang"] = null;
        Response.Redirect("~/Default.aspx");
    }

    protected void btCapNhat_Click(object sender, EventArgs e)
    {
        DataTable dt = (DataTable)Session["GioHang"];
        foreach(GridViewRow r in gvGioHang.Rows)
        {
            foreach(DataRow dr in dt.Rows)
            {
                if(Convert.ToString(gvGioHang.DataKeys[r.DataItemIndex].Value)==dr["MaSP"].ToString())
                {
                    TextBox t = (TextBox)r.Cells[2].FindControl("txtSoLuong");
                    if (Convert.ToInt32(t.Text) <= 0) dt.Rows.Remove(dr);
                    else dr["SoLuong"] = t.Text;
                    break;
                }
            }
        }
        Session["GioHang"] = dt;
        Response.Redirect("~/Giohang.aspx");
    }


    protected void gvGioHang_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if(e.CommandName=="Xoa")
        {
            int chiso = int.Parse(e.CommandArgument.ToString());
            try
            {
                DataTable dt = (DataTable)Session["GioHang"];
                dt.Rows.RemoveAt(chiso);
                Session["GioHang"] = dt;
                Response.Redirect("~/GioHang.aspx");
            }
            catch
            {
                Response.Redirect("~/Giohang.aspx");
            }
        }
    }
}