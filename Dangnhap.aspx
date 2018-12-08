<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Dangnhap.aspx.cs" Inherits="Dangnhap" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <link href="../Scripts/CSS/Dangnhap.css" rel="stylesheet" />
    <div class="dangnhap">
        <div class="dntitle">ĐĂNG NHẬP</div>
        <div class="dnname">
            Tên đăng nhập:&nbsp;&nbsp; 
            <asp:TextBox ID="txtTenDN" runat="server" Height="30px" Width="270px" Font-Size="16" Font-Bold="true"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Chưa nhập tên đăng nhập" ControlToValidate="txtTenDN" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
        <div class="dnname">
            Mật khẩu:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            <asp:TextBox ID="txtMatKhau" runat="server" Height="30px" Width="270px" Font-Size="16" Font-Bold="true" TextMode="Password"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Chưa nhập mật khẩu" ControlToValidate="txtMatKhau" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
        <div class="dnbutton">
            <asp:Button ID="btDangNhap" runat="server" Text="Đăng nhập" BackColor="purple" ForeColor="#FFFFFF" BorderStyle="Solid" Height="35px" Width="100px" OnClick="btDangNhap_Click" /><br />
        </div>
        <div class="dndoipass">
            <asp:Label ID="lbThongBaoLoi" runat="server" ForeColor="Red"></asp:Label><br />
            <asp:HyperLink ID="hplDoiMatKhau" Text="<b>Đổi mật khẩu</b>" NavigateUrl="~/Doimatkhau.aspx" runat="server"></asp:HyperLink>
        </div>
    </div>
</asp:Content>

