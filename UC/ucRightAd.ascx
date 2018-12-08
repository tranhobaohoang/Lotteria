<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucRightAd.ascx.cs" Inherits="UC_ucRight" %>
<link href="../Scripts/CSS/Right.css" type="text/css" rel="stylesheet" />


 <aside id="right">
     <b>THỐNG KÊ TRUY CẬP</b>
     <br/>
     <br/>
     <h4>Tổng truy cập:
         <asp:Label ID="lblLuotTruyCap" runat="server" Text="Label"></asp:Label>
     </h4>
     <h4>Đang online:
         <asp:Label ID="lblOnline" runat="server" Text="Label"></asp:Label>
     </h4>
 </aside>
<div style="float:right;margin-right:20px;" class="rightlogin">
    <asp:HyperLink ID="lbtDangXuat" runat="server" ImageWidth="50" ImageHeigth="50" ImageUrl="~/Images/back.png"></asp:HyperLink><br />
    <asp:Label ID="lbDX" runat="server" Text="Back"></asp:Label>
</div>
