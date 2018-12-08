<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Thanhtoan.aspx.cs" Inherits="Thanhtoan" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <link href="../Scripts/CSS/Thanhtoan.css" rel="stylesheet" />
    <div class="thanhtoan">
        <div class="tttitle">THÔNG TIN ĐƠN<br />ĐẶT HÀNG</div>
        <div class="tttttk">THÔNG TIN TÀI KHOẢN</div>
        <div style="float:left;margin-left:100px;width:100%;padding-bottom:10px;">Họ tên: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="lbHoTen" runat="server" Text="Label" Font-Bold="True"></asp:Label></div>
        <br />
        <div style="float:left;margin-left:90px;width:100%;padding-bottom:10px;">Địa chỉ: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="lbDiaChi" runat="server" Text="Label" Font-Bold="True"></asp:Label></div>
        <br />
        <div style="float:left;margin-left:85px;width:100%;padding-bottom:10px;">Điện thoại: &nbsp;&nbsp;<asp:Label ID="lbDienThoai" runat="server" Text="Label" Font-Bold="True"></asp:Label></div>
        <br />
        <div style="float:left;margin-left:80px;width:100%;padding-bottom:10px;">Email: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="lbEmail" runat="server" Text="Label" Font-Bold="True"></asp:Label></div>
        <br />
        <br />
        <div class="ttttgh">THÔNG TIN GIỎ HÀNG</div>
        <div class="ghitems">
            <asp:GridView ID="gvGioHang" runat="server" DataKeyNames="MaSP" Width=100% AutoGenerateColumns="False" Height="250px" BorderStyle="None" Font-Bold="True" Font-Size="Medium" ForeColor="White">
       
                <Columns>
                    <asp:BoundField HeaderText="Mã sản phẩm" ApplyFormatInEditMode="True" DataField="MaSP" >
                    <ControlStyle BorderStyle="Solid" BorderWidth="1px" />
                    <ItemStyle Font-Size="Small" HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField HeaderText="Tên sản phẩm" DataField="TenSP" >
                    <ControlStyle BorderStyle="Solid" BorderWidth="1px" />
                    <ItemStyle Font-Size="Small" HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField HeaderText="Đơn giá" DataField="DonGia" >
                    <ControlStyle BorderStyle="Solid" BorderWidth="1px" />
                    <ItemStyle Font-Size="Small" HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:TemplateField HeaderText="Số lượng">
                        <ItemTemplate>
                            <div style="text-align:center;">
                                <asp:Label ID="txtSoLuong" runat="server" Text='<%# Eval("SoLuong") %>' Width=50px Font-Bold="True"></asp:Label>
                            </div>
                        </ItemTemplate>
                        <ItemStyle Font-Size="Small" HorizontalAlign="Center" />
                    </asp:TemplateField>
                    <asp:BoundField HeaderText="Thành tiền" DataField="ThanhTien" >
                    <ControlStyle BorderStyle="Solid" BorderWidth="1px" />
                    <ItemStyle Font-Size="Small" HorizontalAlign="Center" />
                    </asp:BoundField>
                </Columns>
            </asp:GridView>
        </div>
        <br />
        <div style="margin-left:60%;width:15%;float:left;"><b>Tổng tiền:</b></div>
        <b><asp:Label ID="lbTongTien" runat="server" Text="Label"></asp:Label>
        <br />
        </b>
        <div class="ttttgh">THÔNG TIN GIAO HÀNG</div>
        <div style="float:left;margin-left:75px;width:100%;padding-bottom:10px;">Ngày giao: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <div style="float:right;margin-right:300px;">
                <asp:Calendar ID="cldNgayGiao" runat="server" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" Height="200px" Width="220px">
                <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                <OtherMonthDayStyle ForeColor="#999999" />
                <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
                <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                <WeekendDayStyle BackColor="#CCCCFF" />
                </asp:Calendar>
            </div>
        </div>
        <div style="float:left;margin-left:75px;width:100%;">
            Người nhận:<div style="float:right;margin-right:350px;"><asp:TextBox ID="txtNguoiNhan" runat="server"></asp:TextBox></div>
        </div>
        <div style="width:100%;text-align:center;padding-bottom:10px;"><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Chưa nhập người nhận" ControlToValidate="txtNguoiNhan" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator></div>
        <div style="float:left;margin-left:75px;width:100%;">
            Địa chỉ:<div style="float:right;margin-right:350px;"><asp:TextBox ID="txtDiaChiNhan" runat="server"></asp:TextBox></div>
        </div>
        <div style="width:100%;text-align:center;padding-bottom:10px;"><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Chưa nhập địa chỉ nhận" ControlToValidate="txtDiaChiNhan" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator></div>
        <div style="float:left;margin-left:75px;width:100%;">
            Điện thoại:<div style="float:right;margin-right:350px;"><asp:TextBox ID="txtDienThoaiNhan" runat="server"></asp:TextBox></div>
        </div>
        <div style="width:100%;text-align:center;padding-bottom:10px;"><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Chưa nhập điện thoại nhận" ControlToValidate="txtDienThoaiNhan" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator></div>
        <div style="float:left;margin-left:75px;width:100%;padding-bottom:10px;">
        Hình thức thanh toán:<asp:RadioButtonList ID="rblHinhThucThanhToan" runat="server" ForeColor="White">
            <asp:ListItem Selected="True">Thanh toán trước khi giao hàng</asp:ListItem>
            <asp:ListItem>Thanh toán sau khi giao hàng</asp:ListItem>
        </asp:RadioButtonList>
        </div>
        <div style="float:left;margin-left:75px;width:100%;padding-bottom:10px;">
        Hình thức giao hàng:<asp:RadioButtonList ID="rblHinhThucGiaoHang" runat="server" ForeColor="White">
            <asp:ListItem Selected="True">Giao trực tiếp</asp:ListItem>
            <asp:ListItem>Chuyển giao</asp:ListItem>
        </asp:RadioButtonList>
        </div>
        <div class="ttbutton">
            <asp:Button ID="btDongY" runat="server" Text="Đồng ý" BackColor="purple" ForeColor="#FFFFFF" BorderStyle="Solid" Height="35px" Width="100px" OnClick="btDongY_Click" /><br />
            <asp:Label ID="lbThongBaoLoi" runat="server" ForeColor="Red" Font-Bold="true"></asp:Label>
        </div>
    </div>
</asp:Content>

