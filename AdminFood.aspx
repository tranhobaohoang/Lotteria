<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AdminFood.aspx.cs" Inherits="AdminLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <link href="../Scripts/CSS/AdminFood.css" rel="stylesheet" />
    <div class="adfood">
        <div class="adfoodtitle">QUẢN LÝ THỰC ĐƠN</div>
        <br />
    <div style="width:840px;height:575px;overflow:auto;margin-bottom:50px;">
        <div class="adfoodttcn">THÊM THỰC ĐƠN</div>
        <div class="dnname">
            Tên sản phẩm:
            <div style="float:right;margin-left:40px;margin-right:60px;">
            <asp:TextBox ID="txtTenSP" runat="server" Height="30px" Width="270px" Font-Size="16" Font-Bold="true"></asp:TextBox><br />
            </div>
        </div>
        <div class="adfooddongia" style="margin-top:25px;">

            Tên loại: 
            <div style="float:right;margin-left:110px;margin-right:60px;">
            <asp:DropDownList ID="ddlmaloai" runat="server" Height="30px" Width="250px" Font-Size="16" Font-Bold="true">
                <asp:ListItem>Burger</asp:ListItem>
                <asp:ListItem>Chicken</asp:ListItem>
                <asp:ListItem>Fries</asp:ListItem>
                <asp:ListItem>Drink</asp:ListItem>
                <asp:ListItem>Cream</asp:ListItem>
            </asp:DropDownList>
            </div>
        </div>
        <div class="adfooddongia">
            Đơn giá:
            <div style="float:right;margin-left:145px;"><asp:TextBox ID="txtdongia" runat="server" Height="30px" Width="220px" Font-Size="16" Font-Bold="true"></asp:TextBox>&nbsp;&nbsp; VND<br /></div>
            
        </div>
        <div class="adfooddongia">
            Mô tả:
            <div style="float:right;margin-left:100px;margin-right:60px;"><asp:TextBox ID="txtmota" runat="server" Height="30px" Width="280px" Font-Size="16" Font-Bold="true"></asp:TextBox><br /></div>
        </div>
        <div class="dnname" style="margin-bottom:34px;">
            Hình minh họa:&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txthmhname" runat="server" Height="30px" Width="270px" Font-Size="16" Font-Bold="true"></asp:TextBox> . 
            <asp:TextBox ID="txthmhduoi" runat="server" Height="30px" Width="60px" Font-Size="16" Font-Bold="true"></asp:TextBox><br />
        </div>
        <div class="dnname" style="margin-bottom:34px;">
            Hình chi tiết: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txthctname" runat="server" Height="30px" Width="270px" Font-Size="16" Font-Bold="true"></asp:TextBox> . 
            <asp:TextBox ID="txthctduoi" runat="server" Height="30px" Width="60px" Font-Size="16" Font-Bold="true"></asp:TextBox><br />
        </div>
        <div class="dnbutton">
            <asp:Button ID="btAdd" runat="server" Text="Thêm" BackColor="purple" ForeColor="#FFFFFF" BorderStyle="Solid" Height="35px" Width="100px" OnClick="btAdd_Click" /><br />
        </div>

        <div class="adfoodttcn" style="margin-top:100px;">XÓA THỰC ĐƠN</div>
        <div class="dnname">
            Mã sản phẩm:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            <div style="float:right;margin-left:40px;margin-right:60px;">
            <asp:TextBox ID="txtMaSPxoa" runat="server" Height="30px" Width="170px" Font-Size="16" Font-Bold="true"></asp:TextBox><br />
            </div>
        </div>
        
        <div class="dnname" style="float:right;margin-left:40px;margin-right:160px;margin-top:-3px;margin-bottom:-2px;">
            <asp:Label ID="lbthongbaoloixoa" runat="server" Text="" ForeColor="Red" Height="30px" Width="300px" Font-Size="16" Font-Bold="true"></asp:Label>
        </div>
        <div class="dnbutton">
            <asp:Button ID="btDelete" runat="server" Text="Xóa" BackColor="purple" ForeColor="#FFFFFF" BorderStyle="Solid" Height="35px" Width="100px" OnClick="btDelete_Click" /><br />
        
        </div>

        <div class="adfoodttcn" style="margin-top:100px;">CẬP NHẬT THỰC ĐƠN</div>
        <div class="dnname">
            Mã sản phẩm:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            <div style="float:right;margin-left:40px;margin-right:60px;">
            <asp:TextBox ID="txtMaSP" runat="server" Height="30px" Width="170px" Font-Size="16" Font-Bold="true"></asp:TextBox><br />
            </div>
        </div>
        <div class="dnname" style="float:right;margin-left:40px;margin-right:160px;margin-top:-3px;margin-bottom:-2px;">
            <asp:Label ID="lbthongbaoloi" runat="server" Text="" ForeColor="Red" Height="30px" Width="300px" Font-Size="16" Font-Bold="true"></asp:Label>
        </div>
        <div class="dnname">
            Tên sản phẩm:
            <div style="float:right;margin-left:40px;margin-right:60px;">
            <asp:TextBox ID="txtTenSP1" runat="server" Height="30px" Width="270px" Font-Size="16" Font-Bold="true"></asp:TextBox><br />
            </div>
        </div>
        <div class="adfooddongia" style="margin-top:25px;">

            Tên loại: 
            <div style="float:right;margin-left:110px;margin-right:60px;">
            <asp:DropDownList ID="ddlmaloai1" runat="server" Height="30px" Width="250px" Font-Size="16" Font-Bold="true">
                <asp:ListItem>Burger</asp:ListItem>
                <asp:ListItem>Chicken</asp:ListItem>
                <asp:ListItem>Fries</asp:ListItem>
                <asp:ListItem>Drink</asp:ListItem>
                <asp:ListItem>Cream</asp:ListItem>
            </asp:DropDownList>
            </div>
        </div>
        <div class="adfooddongia">
            Đơn giá:
            <div style="float:right;margin-left:145px;"><asp:TextBox ID="txtdongia1" runat="server" Height="30px" Width="220px" Font-Size="16" Font-Bold="true"></asp:TextBox>&nbsp;&nbsp; VND<br /></div>
            
        </div>
        <div class="adfooddongia">
            Mô tả:
            <div style="float:right;margin-left:100px;margin-right:60px;"><asp:TextBox ID="txtmota1" runat="server" Height="30px" Width="280px" Font-Size="16" Font-Bold="true"></asp:TextBox><br /></div>
        </div>
        <div class="dnname" style="margin-bottom:34px;">
            Hình minh họa:&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txthmhname1" runat="server" Height="30px" Width="270px" Font-Size="16" Font-Bold="true"></asp:TextBox> . 
            <asp:TextBox ID="txthmhduoi1" runat="server" Height="30px" Width="60px" Font-Size="16" Font-Bold="true"></asp:TextBox><br />
        </div>
        <div class="dnname" style="margin-bottom:34px;">
            Hình chi tiết: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txthctname1" runat="server" Height="30px" Width="270px" Font-Size="16" Font-Bold="true"></asp:TextBox> . 
            <asp:TextBox ID="txthctduoi1" runat="server" Height="30px" Width="60px" Font-Size="16" Font-Bold="true"></asp:TextBox><br />
        </div>
        <div class="dnbutton" style="margin-bottom:25px;">
            <asp:Button ID="btUpdate" runat="server" Text="Cập nhật" BackColor="purple" ForeColor="#FFFFFF" BorderStyle="Solid" Height="35px" Width="100px" OnClick="btUpdate_Click" /><br />
        </div>
    </div>
        <div class="ttttgh">THÔNG TIN THỰC ĐƠN</div>
        <div class="ghitems">
            <asp:GridView ID="gvGioHang" runat="server" DataKeyNames="MaSP" AutoGenerateColumns="False" Width="100%" BorderStyle="None" Font-Bold="True" Font-Size="Medium" ForeColor="White">
       
                <Columns>
                    <asp:BoundField HeaderText="Mã sản phẩm" ApplyFormatInEditMode="True" DataField="MaSP" >
                    <ControlStyle BorderStyle="Solid" BorderWidth="1px" />
                    <HeaderStyle Width="5%" />
                    <ItemStyle Font-Size="Small" HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField HeaderText="Tên sản phẩm" DataField="TenSP" >
                    <ControlStyle BorderStyle="Solid" BorderWidth="1px" />
                    <ItemStyle Font-Size="Small" HorizontalAlign="Center" Width="20%" />
                    </asp:BoundField>
                    <asp:BoundField HeaderText="Mã loại" DataField="MALOAI" >
                    <ControlStyle BorderStyle="Solid" BorderWidth="1px" />
                    <ItemStyle Font-Size="Small" HorizontalAlign="Center" Width="5%" />
                    </asp:BoundField>
                    <asp:BoundField DataField="DONGIA" HeaderText="Đơn giá" >
                    <ItemStyle Font-Size="Small" HorizontalAlign="Center" Width="5%" />
                    </asp:BoundField>
                    <asp:BoundField DataField="MOTA" HeaderText="Mô tả" >
                    <ItemStyle Font-Size="Small" HorizontalAlign="Center" Width="20%" />
                    </asp:BoundField>
                    <asp:BoundField DataField="HINHMINHHOA" HeaderText="Hình minh họa" >
                    <HeaderStyle Width="20%" />
                    <ItemStyle Font-Size="Small" HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="HINHCHITIET" HeaderText="Hình chi tiết" >
                    <HeaderStyle Width="20%" />
                    <ItemStyle Font-Size="Small" HorizontalAlign="Center" />
                    </asp:BoundField>
                </Columns>
            </asp:GridView>
        </div>
    </div>
</asp:Content>

