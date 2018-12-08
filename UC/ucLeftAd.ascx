<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucLeftAd.ascx.cs" Inherits="UC_ucLeft" %>
<link href="../Scripts/CSS/Left.css" type="text/css" rel="stylesheet" />

<aside id="left">
 <div class="menu">
 <p><b>QUẢN LÝ</b></p><br /><br />
    <div class="item" style="height:35px;text-align:center;padding-top:15px;margin-left:10px;margin-right:10px;">
                     <asp:HyperLink ID="HyperLink1" runat="server" Text="Thực đơn" Font-Size="30px"></asp:HyperLink>
    </div>
    <div class="item" style="height:35px;text-align:center;padding-top:15px;margin-left:10px;margin-right:10px;">
                     <asp:HyperLink ID="HyperLink2" runat="server" Text="Khách hàng" Font-Size="30px"></asp:HyperLink>
     </div>
     <div class="item" style="height:35px;text-align:center;padding-top:15px;margin-left:10px;margin-right:10px;">
                     <asp:HyperLink ID="HyperLink3" runat="server" Text="Admin" Font-Size="30px"></asp:HyperLink>
    </div>
 </div>
 </aside>
