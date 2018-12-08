using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class AdminLogin : System.Web.UI.Page
{
    CLASS x = new CLASS();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DataTable dt;
            if (Session["TenDN"] != null)
            {
                if(Session["quyen"]==null) Response.Redirect("~/Default.aspx");
                string tendn = Session["TenDN"].ToString();
                dt = x.GetData("SELECT QUYENADMIN FROM ADMIN WHERE TENDNADMIN='" + tendn + "'");
                string quyen = dt.Rows[0][0].ToString();
                if (quyen == "2")
                {
                    Response.Redirect("~/AdminKH.aspx");
                }
            }
            else Response.Redirect("~/AdminLogin.aspx");

            dt = x.GetData("SELECT* FROM SANPHAM");
            gvGioHang.DataSource = dt;
            gvGioHang.DataBind();
        }
    }

    protected void btAdd_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(x.strCon);
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandType = CommandType.Text;
        cmd.Connection = con;
        cmd.CommandText = @"INSERT INTO SANPHAM(TENSP,MALOAI,DONGIA,MOTA,HINHMINHHOA,HINHCHITIET)
VALUES(N'" + txtTenSP.Text + "'," + (ddlmaloai.SelectedIndex + 1).ToString() + "," + txtdongia.Text
+ ",N'" + txtmota.Text + "','" + txthmhname.Text + "." + txthmhduoi.Text + "','" + txthctname.Text + "." + txthctduoi.Text + "')";
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Redirect("~/AdminAD.aspx");
    }
    protected void btDelete_Click(object sender, EventArgs e)
    {
        DataTable dt;
        dt = x.GetData("SELECT COUNT(MASP) FROM SANPHAM WHERE MASP=" + txtMaSPxoa.Text);
        string soluong = dt.Rows[0][0].ToString();
        if (soluong == "0") lbthongbaoloixoa.Text = "Không tìm thấy mã sản phẩm!";
        else
        {
            lbthongbaoloi.Text = "";
            SqlConnection con = new SqlConnection(x.strCon);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.Text;
            cmd.Connection = con;
            cmd.CommandText = @"DELETE FROM SANPHAM WHERE MASP="+txtMaSPxoa.Text;
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("~/AdminAD.aspx");
        }
    }
    protected void btUpdate_Click(object sender, EventArgs e)
    {
        DataTable dt;
        dt = x.GetData("SELECT COUNT(MASP) FROM SANPHAM WHERE MASP='"+txtMaSP.Text+"'");
        string soluong = dt.Rows[0][0].ToString();
        if (soluong == "0") lbthongbaoloi.Text = "Không tìm thấy mã sản phẩm!";
        else
        {
            lbthongbaoloi.Text = "";
            SqlConnection con = new SqlConnection(x.strCon);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.Text;
            cmd.Connection = con;
            cmd.CommandText = @"UPDATE SANPHAM SET TENSP=N'" + txtTenSP1.Text + "',MALOAI=" +
                (ddlmaloai1.SelectedIndex + 1).ToString() + ",DONGIA=" + txtdongia1.Text + ",MOTA=N'" +
                txtmota1.Text + "',HINHMINHHOA='" + txthmhname1.Text + "." + txthmhduoi1.Text + "',HINHCHITIET='" + txthctname1.Text + "." + txthctduoi1.Text + "'"
                +" WHERE MASP='"+txtMaSP.Text + "';";
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("~/AdminAD.aspx");
        }
    }
}