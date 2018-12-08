using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Dangky : System.Web.UI.Page
{
    CLASS x = new CLASS();
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

    protected void btDangky_Click(object sender, EventArgs e)
    {
        try
        {
            string str1 = @"SELECT 1 FROM KHACHHANG WHERE TENDN=N'" + txtTenDN.Text + "'";
            if(x.GetData(str1).Rows.Count>0)
            {
                lbThongBaoLoi.Text = "Tên đăng nhập đã tồn tại";
                txtTenDN.Focus();
            }
            else
            {
                SqlConnection con = new SqlConnection(x.strCon);
                con.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.Text;
                cmd.Connection = con;
                cmd.CommandText = @"INSERT INTO KHACHHANG(HOTENKH,DIACHIKH,DIENTHOAIKH,EMAIL,TENDN,MATKHAU,NGAYSINH,GIOITINH)
                VALUES(@HOTEN,@DIACHI,@DIENTHOAI,@EMAIL,@TENDN,@MATKHAU,@NGAYSINH,@GIOITINH)";
                cmd.Parameters.Add("@HOTEN", SqlDbType.NVarChar, 50);
                cmd.Parameters["@HOTEN"].Value = txtHoTen.Text;
                
                cmd.Parameters.Add("@DIACHI", SqlDbType.NVarChar, 50);
                cmd.Parameters["@DIACHI"].Value = txtDiachi.Text;

                cmd.Parameters.Add("@DIENTHOAI", SqlDbType.VarChar, 10);
                cmd.Parameters["@DIENTHOAI"].Value = txtDienThoai.Text;

                cmd.Parameters.Add("@EMAIL", SqlDbType.VarChar, 50);
                cmd.Parameters["@EMAIL"].Value = txtEmail.Text;

                
                cmd.Parameters.Add("@TENDN", SqlDbType.VarChar, 15);
                cmd.Parameters["@TENDN"].Value = txtTenDN.Text;
                
                cmd.Parameters.Add("@MATKHAU", SqlDbType.VarChar, 15);
                cmd.Parameters["@MATKHAU"].Value = txtMatKhau.Text;
                
                cmd.Parameters.Add("@NGAYSINH", SqlDbType.SmallDateTime);
                cmd.Parameters["@NGAYSINH"].Value = DateTime.Parse(ddlThangSinh.Text+"/"+ddlNgaySinh.Text+"/"+txtNamSinh.Text);
                
                cmd.Parameters.Add("@GIOITINH", SqlDbType.Int);
                cmd.Parameters["@GIOITINH"].Value = Convert.ToInt16(rblGioiTinh.SelectedIndex==0);
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect("~/Dangnhap.aspx");
            }
        }
        catch
        {
            lbThongBaoLoi.Text = "Thất bại!";
        }
    }
}