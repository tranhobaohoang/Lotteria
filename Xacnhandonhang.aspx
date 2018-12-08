<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Xacnhandonhang.aspx.cs" Inherits="Dangnhap" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <link href="../Scripts/CSS/Xacnhandonhang.css" rel="stylesheet" />
    <div class="xndh">
        <div class="xndhtext">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        Kính chào quý khách!<br />
        &nbsp;&nbsp;&nbsp;Thông tin đơn đặt hàng đã được chúng tôi ghi nhận.<br />
        Chúng tôi sẽ phản hồi thông tin sớm nhất có thể tới quý khách.<br />
        Xin cảm ơn.<br />
        </div>
        <div class="xndhvtt">
            <asp:HyperLink ID="hplVeTrangChu" Text="<b>Về trang chủ</b>" NavigateUrl="~/Default.aspx" runat="server"></asp:HyperLink>
        </div>
    <div class="xndhvtt">
        </div>
    </div>
</asp:Content>

