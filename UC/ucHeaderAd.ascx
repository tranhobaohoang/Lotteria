<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucHeaderAd.ascx.cs" Inherits="UC_ucHeader" %>
<link href="../Scripts/CSS/Header.css" rel="stylesheet" />

<header>
 <div id="logo"><img src="../Images/Title.png" title="Trang chủ" height="200" width="200">
     SYSTEM MANAGEMENT 
 </div>
 <div id="dn">
     <div class="namelogin">
         <asp:Label ID="lbBeforeTenDN" runat="server" Text="Xin chào " ForeColor="White"></asp:Label><br />
         <asp:Label ID="lbTenDN" CssClass="tendangnhap" runat="server" Text="" ForeColor="Yellow" Font-Bold="true" Font-Size="30px"></asp:Label>
     </div>
     <div class="logout">
        <asp:Label ID="lbDX" runat="server" Text="Đăng Xuất"></asp:Label><br />
        <asp:LinkButton ID="lbtDangXuat" runat="server" OnClick="lbtDangXuat_Click"><img src="../Images/logout.png" height="50" width="50" /></asp:LinkButton>
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
