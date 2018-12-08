<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucHeader.ascx.cs" Inherits="UC_ucHeader" %>
<link href="../Scripts/CSS/Header.css" rel="stylesheet" />

<header>
 <div id="logo"><img src="../Images/Title.png" title="Trang chủ" height="200" width="300">
     VIETNAM&nbsp;&nbsp;&nbsp;
 </div>
 <div id="dn">
     <div class="namelogin">
         <asp:Label ID="lbBeforeTenDN" runat="server" Text="Xin chào " ForeColor="White"></asp:Label><br />
         <asp:Label ID="lbTenDN" CssClass="tendangnhap" runat="server" Text="" ForeColor="Yellow" Font-Bold="true" Font-Size="30px"></asp:Label>
     </div>
     <div class="login">
        <asp:Label ID="lbDN" runat="server" Text="Đăng Nhập"></asp:Label><br />
        <asp:HyperLink ID="hlDangNhap" runat="server" NavigateUrl="~/Dangnhap.aspx" ImageUrl="~/Images/login.png" ImageWidth="50" ImageHeigth="50"></asp:HyperLink>
     </div>
     <div class="joinin">
        <asp:Label ID="lbDK" runat="server" Text="Đăng Ký"></asp:Label><br />
        <asp:HyperLink ID="hlDangKy" runat="server" NavigateUrl="~/Dangky.aspx" ImageUrl="~/Images/join in.png" ImageWidth="50" ImageHeigth="50"></asp:HyperLink>
     </div>
     <div class="logout">
        <asp:Label ID="lbDX" runat="server" Text="Đăng Xuất"></asp:Label><br />
        <asp:LinkButton ID="lbtDangXuat" runat="server" OnClick="lbtDangXuat_Click"><img src="../Images/logout.png" height="50" width="50" /></asp:LinkButton>
     </div>
     <div class="buy">
        <asp:Label ID="Label1" runat="server" Text="Giỏ Hàng"></asp:Label><br />
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Giohang.aspx" ImageUrl="~/Images/buy.png" ImageWidth="50" ImageHeigth="50"></asp:HyperLink>
        <asp:Label ID="lbTongSL" runat="server" Text="(Trống)" ForeColor="Yellow"></asp:Label>
     </div>
 </div>
</header>
<nav>
<div id="subnav">
 <ul>
  <li>
      <div class="itemmenu"><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Default.aspx">TRANG CHỦ</asp:HyperLink></div>
     </li>
  <li><div class="itemmenu"><a href="#">GIỚI THIỆU</a></div></li>
  <li><div class="itemmenu"><a href="#">LIÊN HỆ</a></div></li>
 </ul>
 </div>
</nav>
