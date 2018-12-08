<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Giohang.aspx.cs" Inherits="Giohang" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <link href="../Scripts/CSS/Giohang.css" rel="stylesheet" />
    <div class="ghmid">
        <div class="ghtitle">
            <asp:Label ID="Label1" runat="server" Text="GIỎ HÀNG"></asp:Label>
        </div>
        
        <div class="ghitems">
            <asp:GridView ID="gvGioHang" runat="server" ShowFooter="True" DataKeyNames="MaSP" Width=100% OnRowCommand="gvGioHang_RowCommand" AutoGenerateColumns="False" Height="250px" BorderColor="DarkRed" BorderStyle="None" Font-Bold="True" Font-Size="Medium" ForeColor="White">
       
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
                            <div style="text-align:center;"><asp:TextBox ID="txtSoLuong" runat="server" Text='<%# Eval("SoLuong") %>' Width=50px Font-Bold="True"></asp:TextBox></div>
                        </ItemTemplate>
                        <ControlStyle BorderStyle="Solid" BorderWidth="1px" />
                        <ItemStyle Font-Size="Small" HorizontalAlign="Center" />
                    </asp:TemplateField>
                    <asp:BoundField HeaderText="Thành tiền" DataField="ThanhTien" >
                    <ControlStyle BorderStyle="Solid" BorderWidth="1px" />
                    <ItemStyle Font-Size="Small" HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:ButtonField ButtonType="Image" CommandName="Xoa" HeaderText="Xóa" ImageUrl="~/Images/Delete.jpg" >
                    <ControlStyle BorderStyle="Solid" BorderWidth="1px" />
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:ButtonField>
                </Columns>
                <FooterStyle BackColor="DarkRed" />
                <HeaderStyle BackColor="DarkRed" ForeColor="Orange" />
            </asp:GridView>
        </div>
        <div class="ghtongtien">
            <div style="float:left;width:75%;text-align:right;">
                Tổng cộng:
            </div>
            <div style="float:right;margin-right:50px;">

                <asp:Label ID="lbTongThanhTien" runat="server"></asp:Label>

            </div>
        </div>
        <div class="ghfooter">

            &nbsp;&nbsp;
            <asp:Button ID="btTiepTucMua" runat="server" BackColor="Red" Font-Bold="True" Font-Size="Small" ForeColor="White" Text="Tiếp tục mua" Width="20%" Height="60%" OnClick="btTiepTucMua_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btXoaGioHang" runat="server" BackColor="Red" Font-Bold="True" Font-Size="Small" ForeColor="White" Text="Xóa giỏ hàng" Width="20%" Height="60%" OnClick="btXoaGioHang_Click"/>
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btCapNhat" runat="server" BackColor="Red" Font-Bold="True" Font-Size="Small" ForeColor="White" Text="Cập nhật" Width="20%" Height="60%" OnClick="btCapNhat_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btDatHang" runat="server" BackColor="Red" Font-Bold="True" Font-Size="Small" ForeColor="White" Text="Đặt hàng" Width="20%" Height="60%" OnClick="btDatHang_Click" />

            <asp:Label ID="lbThongBaoLoi" runat="server"></asp:Label>
        </div>
    </div>
</asp:Content>

