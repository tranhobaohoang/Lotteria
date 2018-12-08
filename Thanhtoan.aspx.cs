using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Thanhtoan : System.Web.UI.Page
{
    private int MAKH;
    CLASS X = new CLASS();
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
        if (Session["TenDN"] == null) Response.Redirect("~/Dangnhap.aspx");
        if (Session["GioHang"] == null) Response.Redirect("~/Giohang.aspx");
        if (Session["TenDN"] != null)
        {
            string s = "SELECT MAKH,HOTENKH,DIACHIKH,DIENTHOAIKH,EMAIL FROM KHACHHANG WHERE TENDN='" + Session["TenDN"].ToString() + "'";
            DataTable dt = X.GetData(s);
            if(dt.Rows.Count>0)
            {
                MAKH = int.Parse(dt.Rows[0][0].ToString());
                lbHoTen.Text = dt.Rows[0][1].ToString();
                lbDiaChi.Text = dt.Rows[0][2].ToString();
                lbDienThoai.Text = dt.Rows[0][3].ToString();
                lbEmail.Text = dt.Rows[0][4].ToString();
            }
        }
        if (Session["Giohang"] != null)
        {
            DataTable dt = new DataTable();
            dt = (DataTable)Session["GioHang"];
            System.Decimal TongThanhTien = 0;
            foreach(DataRow r in dt.Rows)
            {
                r["ThanhTien"] = Convert.ToInt32(r["SoLuong"]) * Convert.ToDecimal(r["DonGia"]);
                TongThanhTien += Convert.ToDecimal(r["ThanhTien"]);
                lbTongTien.Text = TongThanhTien.ToString();
            }
            gvGioHang.DataSource = dt;
            gvGioHang.DataBind();
        }
        if (!IsPostBack) cldNgayGiao.SelectedDate = DateTime.Today;
    }

    protected void btDongY_Click(object sender, EventArgs e)
    {
        string httt, htgh;
        string TenNguoiNhan, DiaChiNhan, DienThoaiNhan;
        TenNguoiNhan = txtNguoiNhan.Text;
        DiaChiNhan = txtDiaChiNhan.Text;
        DienThoaiNhan = txtDienThoaiNhan.Text;
        float TongThanhTien = float.Parse(lbTongTien.Text);
        httt = rblHinhThucThanhToan.SelectedIndex.ToString();
        htgh = rblHinhThucGiaoHang.SelectedIndex.ToString();
        try
        {
            SqlConnection con = new SqlConnection(X.strCon);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.Text;
            cmd.Connection = con;
            cmd.CommandText = @"INSERT INTO DONDATHANG(MAKH,NGAYDH,TRIGIA,NGAYGIAOHANG,TENNGUOINHAN,DIACHINHAN,DIENTHOAINHAN,HTTHANHTOAN,HTGIAOHANG)
VALUES(" + MAKH + ",@ngaydathang," + TongThanhTien + ",@ngaygiaohang,N'" + TenNguoiNhan + "',N'" + DiaChiNhan + "','" + DienThoaiNhan + "'," + httt + "," + htgh + ")";
            cmd.Parameters.Add("@ngaydathang",SqlDbType.SmallDateTime);
            cmd.Parameters["@ngaydathang"].Value = DateTime.Today;
            cmd.Parameters.Add("@ngaygiaohang", SqlDbType.SmallDateTime);
            cmd.Parameters["@ngaygiaohang"].Value = cldNgayGiao.SelectedDate;
            cmd.ExecuteNonQuery();
            con.Close();
            
            string s = "SELECT MAX(SODH) FROM DONDATHANG WHERE MAKH=" + MAKH;
            int SoDonHang = int.Parse(X.GetData(s).Rows[0][0].ToString());
            DataTable dt = new DataTable();
            dt = (DataTable)Session["Giohang"];
            int MaSP, SoLuong;
            float DonGia;
            for(int i=0;i<dt.Rows.Count;i++)
            {
                MaSP = int.Parse(dt.Rows[i]["MaSP"].ToString());
                SoLuong = int.Parse(dt.Rows[i]["SoLuong"].ToString());
                DonGia = float.Parse(dt.Rows[i]["DonGia"].ToString());
                s = "INSERT INTO CTDATHANG(SODH,MASP,SOLUONG,DONGIA) VALUES(" + SoDonHang + "," + MaSP + "," + SoLuong + "," + DonGia + ")";
                X.Excute(s);
            }
            Session["Giohang"] = null;
            Response.Redirect("~/Xacnhandonhang.aspx?tt=1");
        }
        catch
        {
            lbThongBaoLoi.Text = "Lỗi trong quá trình cập nhật dữ liệu!";
        }
    }
}