<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucMid.ascx.cs" Inherits="UC_ucSachmoi" %>
<link href="../Scripts/CSS/Mid.css" type="text/css" rel="stylesheet" />
<div class="mid" >
    <asp:DataList ID="title" runat="server">
        <ItemTemplate>
            <div class="title">
                <asp:Label ID="Label" runat="server" Text='<%# Eval("TEN") %>'></asp:Label>
            </div>
        </ItemTemplate>
    </asp:DataList>
    <asp:DataList ID="DataList" runat="server" RepeatColumns="6">
        <ItemTemplate>
            <div class="items">
                <asp:HyperLink ID="HyperLink4" runat="server" ImageUrl='<%# "~/Images/"+Eval("HINHMINHHOA","{0}") %>' NavigateUrl='<%# "..\\Chitietsanpham.aspx?msp="+Eval("MASP") %>' ImageWidth="120px" ImageHeight="105px"></asp:HyperLink>
                <p class="tensp"><asp:HyperLink ID="HyperLink3" runat="server" Text='<%# Eval("TENSP") %>'></asp:HyperLink></p><br />
                <div class="dongia"><asp:HyperLink ID="HyperLink5" runat="server" Text='<%# Eval("DONGIA")+" VNĐ" %>' NavigateUrl='<%# "..\\Giohang.aspx?msp="+Eval("MASP") %>'></asp:HyperLink>
                </div>
            </div>
        </ItemTemplate>
    </asp:DataList>
    
    <asp:DataList ID="title1" runat="server">
        <ItemTemplate>
            <div class="title">
                <asp:Label ID="Label" runat="server" Text='<%# Eval("TEN") %>'></asp:Label>
            </div>
        </ItemTemplate>
    </asp:DataList>
    <asp:DataList ID="DataList1" runat="server" RepeatColumns="6">
        <ItemTemplate>
            <div class="items">
                <asp:HyperLink ID="HyperLink4" runat="server" ImageUrl='<%# "~/Images/"+Eval("HINHMINHHOA","{0}") %>' NavigateUrl='<%# "..\\Chitietsanpham.aspx?msp="+Eval("MASP") %>' ImageWidth="120px" ImageHeight="105px"></asp:HyperLink>
                <p class="tensp"><asp:HyperLink ID="HyperLink3" runat="server" Text='<%# Eval("TENSP") %>'></asp:HyperLink></p><br />
                <div class="dongia"><asp:HyperLink ID="HyperLink5" runat="server" Text='<%# Eval("DONGIA")+" VNĐ" %>' NavigateUrl='<%# "..\\Giohang.aspx?msp="+Eval("MASP") %>'></asp:HyperLink>
            </div>
        </ItemTemplate>
    </asp:DataList>
    
    <asp:DataList ID="title2" runat="server">
        <ItemTemplate>
            <div class="title">
                <asp:Label ID="Label" runat="server" Text='<%# Eval("TEN") %>'></asp:Label>
            </div>
        </ItemTemplate>
    </asp:DataList>
    <asp:DataList ID="DataList2" runat="server" RepeatColumns="6">
        <ItemTemplate>
            <div class="items">
                <asp:HyperLink ID="HyperLink4" runat="server" ImageUrl='<%# "~/Images/"+Eval("HINHMINHHOA","{0}") %>' NavigateUrl='<%# "..\\Chitietsanpham.aspx?msp="+Eval("MASP") %>' ImageWidth="120px" ImageHeight="105px"></asp:HyperLink>
                <p class="tensp"><asp:HyperLink ID="HyperLink3" runat="server" Text='<%# Eval("TENSP") %>'></asp:HyperLink></p><br />
                <div class="dongia"><asp:HyperLink ID="HyperLink5" runat="server" Text='<%# Eval("DONGIA")+" VNĐ" %>' NavigateUrl='<%# "..\\Giohang.aspx?msp="+Eval("MASP") %>'></asp:HyperLink>
            </div>
        </ItemTemplate>
    </asp:DataList>

    <asp:DataList ID="title3" runat="server">
        <ItemTemplate>
            <div class="title">
                <asp:Label ID="Label" runat="server" Text='<%# Eval("TEN") %>'></asp:Label>
            </div>
        </ItemTemplate>
    </asp:DataList>
    <asp:DataList ID="DataList3" runat="server" RepeatColumns="6">
        <ItemTemplate>
            <div class="items">
                <asp:HyperLink ID="HyperLink4" runat="server" ImageUrl='<%# "~/Images/"+Eval("HINHMINHHOA","{0}") %>' NavigateUrl='<%# "..\\Chitietsanpham.aspx?msp="+Eval("MASP") %>' ImageWidth="120px" ImageHeight="105px"></asp:HyperLink>
                <p class="tensp"><asp:HyperLink ID="HyperLink3" runat="server" Text='<%# Eval("TENSP") %>'></asp:HyperLink></p><br />
                <div class="dongia"><asp:HyperLink ID="HyperLink5" runat="server" Text='<%# Eval("DONGIA")+" VNĐ" %>' NavigateUrl='<%# "..\\Giohang.aspx?msp="+Eval("MASP") %>'></asp:HyperLink>
            </div>
        </ItemTemplate>
    </asp:DataList>

    <asp:DataList ID="title4" runat="server">
        <ItemTemplate>
            <div class="title">
                <asp:Label ID="Label" runat="server" Text='<%# Eval("TEN") %>'></asp:Label>
            </div>
        </ItemTemplate>
    </asp:DataList>
    <asp:DataList ID="DataList4" runat="server" RepeatColumns="6">
        <ItemTemplate>
            <div class="items">
                <asp:HyperLink ID="HyperLink4" runat="server" ImageUrl='<%# "~/Images/"+Eval("HINHMINHHOA","{0}") %>' NavigateUrl='<%# "..\\Chitietsanpham.aspx?msp="+Eval("MASP") %>' ImageWidth="120px" ImageHeight="105px"></asp:HyperLink>
                <p class="tensp"><asp:HyperLink ID="HyperLink3" runat="server" Text='<%# Eval("TENSP") %>'></asp:HyperLink></p><br />
                <div class="dongia"><asp:HyperLink ID="HyperLink5" runat="server" Text='<%# Eval("DONGIA")+" VNĐ" %>' NavigateUrl='<%# "..\\Giohang.aspx?msp="+Eval("MASP") %>'></asp:HyperLink>
            </div>
        </ItemTemplate>
    </asp:DataList>

    <asp:DataList ID="title5" runat="server">
        <ItemTemplate>
            <div class="title">
                <asp:Label ID="Label" runat="server" Text='<%# Eval("TEN") %>'></asp:Label>
            </div>
        </ItemTemplate>
    </asp:DataList>
    <asp:DataList ID="DataList5" runat="server" RepeatColumns="6">
        <ItemTemplate>
            <div class="items">
                <asp:HyperLink ID="HyperLink4" runat="server" ImageUrl='<%# "~/Images/"+Eval("HINHMINHHOA","{0}") %>' NavigateUrl='<%# "..\\Chitietsanpham.aspx?msp="+Eval("MASP") %>' ImageWidth="120px" ImageHeight="105px"></asp:HyperLink>
                <p class="tensp"><asp:HyperLink ID="HyperLink3" runat="server" Text='<%# Eval("TENSP") %>'></asp:HyperLink></p><br />
                <div class="dongia"><asp:HyperLink ID="HyperLink5" runat="server" Text='<%# Eval("DONGIA")+" VNĐ" %>' NavigateUrl='<%# "..\\Giohang.aspx?msp="+Eval("MASP") %>'></asp:HyperLink>
            </div>
        </ItemTemplate>
    </asp:DataList>
</div>