<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucLeft.ascx.cs" Inherits="UC_ucLeft" %>
<link href="../Scripts/CSS/Left.css" type="text/css" rel="stylesheet" />

<aside id="left">
 <div class="menu">
 <p><b>CÁC LOẠI</b></p>
     <asp:GridView ID="gvChuDeSach" runat="server" AutoGenerateColumns="False" Width="232px" BorderStyle="None" GridLines="None">
         <Columns>
             <asp:TemplateField>
                 <ItemTemplate>
                     <div class="item">
                     <asp:Image ID="Image1" runat="server" ImageUrl='<%# "../Images/"+Eval("HINH") %>' Width="50px" Height="50px" />
                     <asp:HyperLink ID="hlChuDeSach" runat="server" NavigateUrl='<%# "../Theoloai.aspx?MALOAI=" + Eval("MALOAI") %>'
                         Text='<%# Eval("TEN") %>'></asp:HyperLink>
                    </div>
                 </ItemTemplate>
             </asp:TemplateField>
         </Columns>
         
     </asp:GridView>
    </div>
 </aside>
