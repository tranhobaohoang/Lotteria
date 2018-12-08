<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AdminDMK.aspx.cs" Inherits="AdminLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <link href="../Scripts/CSS/Doimatkhau.css" rel="stylesheet" />
    <div class="doimatkhau">
        <div class="dmktitle">
            ĐỔI MẬT KHẨU
        </div>
        <div class="dmkname">
            Tên đăng nhập:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            <asp:TextBox ID="txtTenDN" runat="server" Height="30px" Width="270px" Font-Size="16" Font-Bold="true"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Chưa nhập tên đăng nhập" ControlToValidate="txtTenDN" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
        <div class="dmkpass">
            Mật khẩu cũ:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            <asp:TextBox ID="txtMatKhauCu" runat="server" Height="30px" Width="270px" Font-Size="16" Font-Bold="true" TextMode="Password"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Chưa nhập mật khẩu cũ" ControlToValidate="txtMatKhauCu" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
        <div class="dmknewpass">
            Mật khẩu mới:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            <asp:TextBox ID="txtMatKhauMoi" runat="server" Height="30px" Width="270px" Font-Size="16" Font-Bold="true" TextMode="Password"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Chưa nhập mật khẩu mới" ControlToValidate="txtMatKhauMoi" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
        <div class="dmknhaplaipassmoi">
            Nhập lại mật khẩu mới:&nbsp;&nbsp;  
           <asp:TextBox ID="txtNhapLaiMatKhauMoi" runat="server" Height="30px" Width="270px" Font-Size="16" Font-Bold="true" TextMode="Password"></asp:TextBox><br />
           <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtNhapLaiMatKhauMoi" ErrorMessage="Chưa nhập lại mật khẩu mới" ForeColor="Red"></asp:RequiredFieldValidator>
           <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="txtNhapLaiMatKhauMoi" ControlToCompare="txtMatKhauMoi" ErrorMessage="Mật khẩu nhập lại không khớp" ForeColor="Red"></asp:CompareValidator>
         </div>
        <div class="dmkbutton">
            <asp:Button ID="btDongY" runat="server" Text="Đồng ý" BackColor="purple" ForeColor="#FFFFFF" BorderStyle="Solid" Height="35px" Width="100px" OnClick="btDongY_Click" /><br />
            <asp:Label ID="lbThongBaoLoi" runat="server" ForeColor="Red"></asp:Label>
        </div>
    </div>
</asp:Content>

