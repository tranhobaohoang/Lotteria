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
                if (Session["quyen"] == null) Response.Redirect("~/Default.aspx");
                string tendn = Session["TenDN"].ToString();
                dt = x.GetData("SELECT QUYENADMIN FROM ADMIN WHERE TENDNADMIN='" + tendn + "'");
                string quyen = dt.Rows[0][0].ToString();
                if (quyen=="1")
                {
                    Response.Redirect("~/AdminFood.aspx");
                }
                else if(quyen=="2") Response.Redirect("~/AdminKH.aspx");
            }
            else Response.Redirect("~/AdminLogin.aspx");

            dt = x.GetData("SELECT* FROM ADMIN");
            gvGioHang.DataSource = dt;
            gvGioHang.DataBind();
        }
    }


    protected void btAdd_Click(object sender, EventArgs e)
    {
        try
        {
            string str1 = @"SELECT 1 FROM ADMIN WHERE TENDNADMIN=N'" + txtTenDN.Text + "'";
            if (x.GetData(str1).Rows.Count > 0)
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
                cmd.CommandText = @"INSERT INTO ADMIN(HOTENADMIN,DIACHIADMIN,DIENTHOAIADMIN,TENDNADMIN,MATKHAUADMIN,NGAYSINHADMIN,GIOITINHADMIN,EMAILADMIN,QUYENADMIN)
                VALUES(@HOTENADMIN,@DIACHIADMIN,@DIENTHOAIADMIN,@TENDNADMIN,@MATKHAUADMIN,@NGAYSINHADMIN,@GIOITINHADMIN,@EMAILADMIN,@QUYENADMIN)";
                cmd.Parameters.Add("@HOTENADMIN", SqlDbType.NVarChar, 50);
                cmd.Parameters["@HOTENADMIN"].Value = txtTenAD.Text;

                cmd.Parameters.Add("@DIACHIADMIN", SqlDbType.NVarChar, 50);
                cmd.Parameters["@DIACHIADMIN"].Value = txtDiachi.Text;

                cmd.Parameters.Add("@DIENTHOAIADMIN", SqlDbType.VarChar, 10);
                cmd.Parameters["@DIENTHOAIADMIN"].Value = txtDienthoai.Text;

                cmd.Parameters.Add("@TENDNADMIN", SqlDbType.VarChar, 15);
                cmd.Parameters["@TENDNADMIN"].Value = txtTenDN.Text;

                cmd.Parameters.Add("@MATKHAUADMIN", SqlDbType.VarChar, 15);
                cmd.Parameters["@MATKHAUADMIN"].Value = txtMatkhau.Text;

                cmd.Parameters.Add("@NGAYSINHADMIN", SqlDbType.SmallDateTime);
                cmd.Parameters["@NGAYSINHADMIN"].Value = DateTime.Parse(ddlThangSinh.Text + "/" + ddlNgaySinh.Text + "/" + txtNamSinh.Text);

                cmd.Parameters.Add("@GIOITINHADMIN", SqlDbType.Int);
                cmd.Parameters["@GIOITINHADMIN"].Value = Convert.ToInt16(rblGioiTinh.SelectedIndex == 0);

                cmd.Parameters.Add("@EMAILADMIN", SqlDbType.VarChar, 50);
                cmd.Parameters["@EMAILADMIN"].Value = txtEmail.Text;

                cmd.Parameters.Add("@QUYENADMIN", SqlDbType.Int);
                cmd.Parameters["@QUYENADMIN"].Value = Convert.ToInt16(ddlmaloai.SelectedIndex+1);

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect("~/AdminAD.aspx");
            }
        }
        catch
        {
            lbThongBaoLoi.Text = "Thất bại!";
        }
    }
    protected void btDelete_Click(object sender, EventArgs e)
    {
        try
        {
            string str2 = @"SELECT 1 FROM ADMIN WHERE MAADMIN=" + txtDeleteMaadmin.Text;
            if (x.GetData(str2).Rows.Count > 0)
            {
                lbDeleteThongbaoloi.Text = "";
                SqlConnection con = new SqlConnection(x.strCon);
                con.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.Text;
                cmd.Connection = con;

                cmd.CommandText = @"DELETE FROM ADMIN WHERE MAADMIN=" + txtDeleteMaadmin.Text;

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect("~/AdminAD.aspx");

            }
            else
            {
                lbDeleteThongbaoloi.Text = "Mã Admin không tồn tại";
                txtDeleteMaadmin.Focus();
            }
        }
        catch
        {
            lbThongBaoLoi.Text = "Thất bại!";
        }
    }

    protected void btUpdate_Click(object sender, EventArgs e)
    {
        try
        {
            string str2 = @"SELECT 1 FROM ADMIN WHERE MAADMIN=" + txtUpdateMaadmin.Text ;
            if (x.GetData(str2).Rows.Count > 0)
            {
                lbUpdateThongbaoloimaadmin.Text = "";
                string str1 = @"SELECT 1 FROM ADMIN WHERE TENDNADMIN=N'" + txtUpdateTendn.Text + "' AND MAADMIN!=" + txtUpdateMaadmin.Text;
                if (x.GetData(str1).Rows.Count > 0)
                {
                    lbUpdateThongbaoloi.Text = "Tên đăng nhập đã tồn tại";
                    txtUpdateTendn.Focus();
                }
                else
                {
                    SqlConnection con = new SqlConnection(x.strCon);
                    con.Open();
                    SqlCommand cmd = new SqlCommand();
                    cmd.CommandType = CommandType.Text;
                    cmd.Connection = con;

                    cmd.CommandText = @"UPDATE ADMIN SET HOTENADMIN=@HOTENADMIN,DIACHIADMIN=@DIACHIADMIN,
                DIENTHOAIADMIN=@DIENTHOAIADMIN,TENDNADMIN=@TENDNADMIN,MATKHAUADMIN=@MATKHAUADMIN,NGAYSINHADMIN=@NGAYSINHADMIN,
                GIOITINHADMIN=@GIOITINHADMIN,EMAILADMIN=@EMAILADMIN,QUYENADMIN=@QUYENADMIN WHERE MAADMIN=@MAADMIN";

                    cmd.Parameters.Add("@MAADMIN", SqlDbType.Int);
                    cmd.Parameters["@MAADMIN"].Value = Convert.ToInt16(txtUpdateMaadmin.Text);

                    cmd.Parameters.Add("@HOTENADMIN", SqlDbType.NVarChar, 50);
                    cmd.Parameters["@HOTENADMIN"].Value = txtUpdateHoten.Text;

                    cmd.Parameters.Add("@DIACHIADMIN", SqlDbType.NVarChar, 50);
                    cmd.Parameters["@DIACHIADMIN"].Value = txtUpdateDiachi.Text;

                    cmd.Parameters.Add("@DIENTHOAIADMIN", SqlDbType.VarChar, 10);
                    cmd.Parameters["@DIENTHOAIADMIN"].Value = txtUpdateDienthoai.Text;

                    cmd.Parameters.Add("@TENDNADMIN", SqlDbType.VarChar, 15);
                    cmd.Parameters["@TENDNADMIN"].Value = txtUpdateTendn.Text;

                    cmd.Parameters.Add("@MATKHAUADMIN", SqlDbType.VarChar, 15);
                    cmd.Parameters["@MATKHAUADMIN"].Value = txtUpdatePass.Text;

                    cmd.Parameters.Add("@NGAYSINHADMIN", SqlDbType.SmallDateTime);
                    cmd.Parameters["@NGAYSINHADMIN"].Value = DateTime.Parse(ddlUpdateNgaysinh.Text + "/" + ddlUpdateThangsinh.Text + "/" + txtUpdateNamsinh.Text);

                    cmd.Parameters.Add("@GIOITINHADMIN", SqlDbType.Int);
                    cmd.Parameters["@GIOITINHADMIN"].Value = Convert.ToInt16(rblUpdateGioitinh.SelectedIndex == 0);

                    cmd.Parameters.Add("@EMAILADMIN", SqlDbType.VarChar, 50);
                    cmd.Parameters["@EMAILADMIN"].Value = txtUpdateEmail.Text;

                    cmd.Parameters.Add("@QUYENADMIN", SqlDbType.Int);
                    cmd.Parameters["@QUYENADMIN"].Value = Convert.ToInt16(ddlUpdatePhanquyen.SelectedIndex + 1);

                    cmd.ExecuteNonQuery();
                    con.Close();
                    Response.Redirect("~/AdminAD.aspx");
                }

            }
            else
            {
                lbUpdateThongbaoloimaadmin.Text = "Mã Admin không tồn tại";
                txtUpdateMaadmin.Focus();
            }
        }
        catch
        {
            lbThongBaoLoi.Text = "Thất bại!";
        }
    }
}