<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AdminKH.aspx.cs" Inherits="AdminLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <link href="../Scripts/CSS/AdminFood.css" rel="stylesheet" />
    <div class="adkh">
        <div class="adfoodtitle">QUẢN LÝ KHÁCH HÀNG</div>
        
        <div class="ttttgh" style="margin-top:125px;">THÔNG TIN KHÁCH HÀNG</div>
        <div class="ghitems">
            <asp:GridView ID="gvGioHang" runat="server" DataKeyNames="MaKH" AutoGenerateColumns="False" Width="100%" BorderStyle="None" Font-Bold="True" Font-Size="Medium" ForeColor="White">
       
                <Columns>
                    <asp:BoundField HeaderText="Mã khách hàng" ApplyFormatInEditMode="True" DataField="MaKH" >
                    <ControlStyle BorderStyle="Solid" BorderWidth="1px" />
                    <HeaderStyle Width="5%" />
                    <ItemStyle Font-Size="Small" HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField HeaderText="Họ tên" DataField="HOTENKH" >
                    <ControlStyle BorderStyle="Solid" BorderWidth="1px" />
                    <ItemStyle Font-Size="Small" HorizontalAlign="Center" Width="20%" />
                    </asp:BoundField>
                    <asp:BoundField HeaderText="Địa chỉ" DataField="DIACHIKH" >
                    <ControlStyle BorderStyle="Solid" BorderWidth="1px" />
                    <ItemStyle Font-Size="Small" HorizontalAlign="Center" Width="5%" />
                    </asp:BoundField>
                    <asp:BoundField HeaderText="Điện thoại" DataField="DIENTHOAIKH" >
                    <ControlStyle BorderStyle="Solid" BorderWidth="1px" />
                    <ItemStyle Font-Size="Small" HorizontalAlign="Center" Width="5%" />
                    </asp:BoundField>
                    <asp:BoundField DataField="TENDN" HeaderText="Tên đăng nhập" >
                    <ItemStyle Font-Size="Small" HorizontalAlign="Center" Width="5%" />
                    </asp:BoundField>
                    <asp:BoundField DataField="MATKHAU" HeaderText="Mật khẩu" >
                    <ItemStyle Font-Size="Small" HorizontalAlign="Center" Width="20%" />
                    </asp:BoundField>
                    <asp:BoundField DataField="NGAYSINH" HeaderText="Ngày sinh" >
                    <HeaderStyle Width="20%" />
                    <ItemStyle Font-Size="Small" HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="GIOITINH" HeaderText="Giới tính" >
                    <HeaderStyle Width="20%" />
                    <ItemStyle Font-Size="Small" HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="EMAIL" HeaderText="Email" >
                    <HeaderStyle Width="20%" />
                    <ItemStyle Font-Size="Small" HorizontalAlign="Center" />
                    </asp:BoundField>
                </Columns>
            </asp:GridView>
        </div>
        <div class="ttttgh" style="margin-top:50px;">THÔNG TIN ĐƠN ĐẶT HÀNG</div>
        <div class="ghitems">
            <asp:GridView ID="GridView1" runat="server" DataKeyNames="SODH" AutoGenerateColumns="False" Width="100%" BorderStyle="None" Font-Bold="True" Font-Size="Medium" ForeColor="White">
       
                <Columns>
                    <asp:BoundField HeaderText="Số đặt hàng" ApplyFormatInEditMode="True" DataField="SODH" >
                    <ControlStyle BorderStyle="Solid" BorderWidth="1px" />
                    <HeaderStyle Width="5%" />
                    <ItemStyle Font-Size="Small" HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField HeaderText="Mã khách hàng" DataField="MAKH" >
                    <ControlStyle BorderStyle="Solid" BorderWidth="1px" />
                    <ItemStyle Font-Size="Small" HorizontalAlign="Center" Width="20%" />
                    </asp:BoundField>
                    <asp:BoundField HeaderText="Ngày đặt hàng" DataField="NGAYDH" >
                    <ControlStyle BorderStyle="Solid" BorderWidth="1px" />
                    <ItemStyle Font-Size="Small" HorizontalAlign="Center" Width="5%" />
                    </asp:BoundField>
                    <asp:BoundField HeaderText="Trị giá" DataField="TRIGIA" >
                    <ControlStyle BorderStyle="Solid" BorderWidth="1px" />
                    <ItemStyle Font-Size="Small" HorizontalAlign="Center" Width="5%" />
                    </asp:BoundField>
                    <asp:BoundField DataField="DAGIAO" HeaderText="Đã giao" >
                    <ItemStyle Font-Size="Small" HorizontalAlign="Center" Width="5%" />
                    </asp:BoundField>
                    <asp:BoundField DataField="NGAYGIAOHANG" HeaderText="Ngày giao hàng" >
                    <ItemStyle Font-Size="Small" HorizontalAlign="Center" Width="20%" />
                    </asp:BoundField>
                    <asp:BoundField DataField="TENNGUOINHAN" HeaderText="Tên người nhận" >
                    <HeaderStyle Width="20%" />
                    <ItemStyle Font-Size="Small" HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="DIACHINHAN" HeaderText="Địa chỉ nhận" >
                    <HeaderStyle Width="20%" />
                    <ItemStyle Font-Size="Small" HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="DIENTHOAINHAN" HeaderText="Điện thoại nhận" >
                    <HeaderStyle Width="20%" />
                    <ItemStyle Font-Size="Small" HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="HTTHANHTOAN" HeaderText="HT thanh toán" >
                    <HeaderStyle Width="20%" />
                    <ItemStyle Font-Size="Small" HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="HTGIAOHANG" HeaderText="HT giao hàng" >
                    <HeaderStyle Width="20%" />
                    <ItemStyle Font-Size="Small" HorizontalAlign="Center" />
                    </asp:BoundField>
                </Columns>
            </asp:GridView>
        </div>
        <div class="ttttgh" style="margin-top:50px;">THÔNG TIN CHI TIẾT ĐẶT HÀNG</div>
        <div class="ghitems">
            <asp:GridView ID="GridView2" runat="server" DataKeyNames="SODH" AutoGenerateColumns="False" Width="100%" BorderStyle="None" Font-Bold="True" Font-Size="Medium" ForeColor="White">
       
                <Columns>
                    <asp:BoundField HeaderText="Số hóa đơn" ApplyFormatInEditMode="True" DataField="SODH" >
                    <ControlStyle BorderStyle="Solid" BorderWidth="1px" />
                    <HeaderStyle Width="5%" />
                    <ItemStyle Font-Size="Small" HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField HeaderText="Mã sản phẩm" DataField="MASP" >
                    <ControlStyle BorderStyle="Solid" BorderWidth="1px" />
                    <ItemStyle Font-Size="Small" HorizontalAlign="Center" Width="20%" />
                    </asp:BoundField>
                    <asp:BoundField HeaderText="Số lượng" DataField="SOLUONG" >
                    <ControlStyle BorderStyle="Solid" BorderWidth="1px" />
                    <ItemStyle Font-Size="Small" HorizontalAlign="Center" Width="5%" />
                    </asp:BoundField>
                    <asp:BoundField HeaderText="Đơn giá" DataField="DONGIA" >
                    <ControlStyle BorderStyle="Solid" BorderWidth="1px" />
                    <ItemStyle Font-Size="Small" HorizontalAlign="Center" Width="5%" />
                    </asp:BoundField>
                    <asp:BoundField DataField="THANHTIEN" HeaderText="Thành tiền" >
                    <ItemStyle Font-Size="Small" HorizontalAlign="Center" Width="5%" />
                    </asp:BoundField>
                </Columns>
            </asp:GridView>
        </div>
    </div>
</asp:Content>

