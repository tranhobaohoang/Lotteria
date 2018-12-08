<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Chitietsanpham.aspx.cs" Inherits="_Default" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <link href="../Scripts/CSS/Chitietsanpham.css" rel="stylesheet" />
    <div class="ctmid">

        <asp:DataList ID="DataList1" runat="server">
            <ItemTemplate>
                <div class="ctleft">
                    <asp:HyperLink ID="HyperLink1" runat="server" ImageUrl='<%# "~/Images/"+Eval("HINHCHITIET","{0}") %>' ImageWidth="500px" ImageHeight="400px">HyperLink</asp:HyperLink>
                </div>
                <div class="ctright">
                <asp:HyperLink ID="HyperLink2" runat="server" Text='<%# Eval("TENSP") %>' Font-Size="40px"></asp:HyperLink><br /><br />
                <asp:HyperLink ID="HyperLink3" runat="server" Text='<%# Eval("MOTA") %>'></asp:HyperLink>
                <div class="ctdongia">
                    <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl='<%# "..\\Giohang.aspx?msp="+Eval("MASP") %>' Text='<%# Eval("DONGIA")+" VNĐ" %>'></asp:HyperLink>
                </div>
                </div>
            </ItemTemplate>
        </asp:DataList>
    </div>
</asp:Content>

