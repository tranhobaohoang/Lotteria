<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Dangky.aspx.cs" Inherits="Dangky" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <link href="../Scripts/CSS/Dangky.css" rel="stylesheet" />
    <div class="dangky">
        <div class="dktitle">ĐĂNG KÝ</div>
        <br />
        <div class="dkttcn">Thông tin cá nhân</div>
        <div class="dkhovaten">
            Họ và tên:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            <asp:TextBox ID="txtHoTen" runat="server" Height="30px" Width="270px" Font-Size="16" Font-Bold="true"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Chưa nhập họ và tên" ControlToValidate="txtHoTen" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
        <div class="dkgt">
            Giới tính: 
            <div class="dkgtcheck">
            <asp:RadioButtonList ID="rblGioiTinh" runat="server" Height="16px" RepeatDirection="Horizontal" Width="240px" Font-Size="16" Font-Bold="true" ForeColor="White">
              <asp:ListItem Selected="True">Nam</asp:ListItem>
              <asp:ListItem>Nữ</asp:ListItem>
            </asp:RadioButtonList>
            </div>
        </div>
        <div class="dkdiachi">
            Địa chỉ:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            <asp:TextBox ID="txtDiachi" runat="server" Height="30px" Width="270px" Font-Size="16" Font-Bold="true"></asp:TextBox>
        </div>
        <div class="dkdienthoai">
            Điện thoại:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtDienThoai" runat="server" Height="30px" Width="270px" Font-Size="16" Font-Bold="true"></asp:TextBox>
        </div>
        <div class="dkemail">
            Email:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtEmail" runat="server" Height="30px" Width="270px" Font-Size="16" Font-Bold="true" TextMode="Email"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="Chưa nhập email" ControlToValidate="txtEmail" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
        <div class="dkngaysinh">
            Ngày sinh:&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="ddlNgaySinh" runat="server" Height="30px" Font-Size="16" Font-Bold="true">
              <asp:ListItem>1</asp:ListItem>
              <asp:ListItem>2</asp:ListItem>
              <asp:ListItem>3</asp:ListItem>
              <asp:ListItem>4</asp:ListItem>
              <asp:ListItem>5</asp:ListItem>
              <asp:ListItem>6</asp:ListItem>
              <asp:ListItem>7</asp:ListItem>
              <asp:ListItem>8</asp:ListItem>
              <asp:ListItem>9</asp:ListItem>
              <asp:ListItem>10</asp:ListItem>
              <asp:ListItem>11</asp:ListItem>
              <asp:ListItem>12</asp:ListItem>
              <asp:ListItem>13</asp:ListItem>
              <asp:ListItem>14</asp:ListItem>
              <asp:ListItem>15</asp:ListItem>
              <asp:ListItem>16</asp:ListItem>
              <asp:ListItem>17</asp:ListItem>
              <asp:ListItem>18</asp:ListItem>
              <asp:ListItem>19</asp:ListItem>
              <asp:ListItem>20</asp:ListItem>
              <asp:ListItem>21</asp:ListItem>
              <asp:ListItem>22</asp:ListItem>
              <asp:ListItem>23</asp:ListItem>
              <asp:ListItem>24</asp:ListItem>
              <asp:ListItem>25</asp:ListItem>
              <asp:ListItem>26</asp:ListItem>
              <asp:ListItem>27</asp:ListItem>
              <asp:ListItem>28</asp:ListItem>
              <asp:ListItem>29</asp:ListItem>
              <asp:ListItem>30</asp:ListItem>
              <asp:ListItem>31</asp:ListItem>
          </asp:DropDownList>
            &nbsp;&nbsp;&nbsp;Tháng&nbsp;
          <asp:DropDownList ID="ddlThangSinh" runat="server" Height="30px" Font-Size="16" Font-Bold="true">
              <asp:ListItem>1</asp:ListItem>
              <asp:ListItem>2</asp:ListItem>
              <asp:ListItem>3</asp:ListItem>
              <asp:ListItem>4</asp:ListItem>
              <asp:ListItem>5</asp:ListItem>
              <asp:ListItem>6</asp:ListItem>
              <asp:ListItem>7</asp:ListItem>
              <asp:ListItem>8</asp:ListItem>
              <asp:ListItem>9</asp:ListItem>
              <asp:ListItem>10</asp:ListItem>
              <asp:ListItem>11</asp:ListItem>
              <asp:ListItem>12</asp:ListItem>
          </asp:DropDownList>
            &nbsp;&nbsp;&nbsp;Năm&nbsp;
          <asp:TextBox ID="txtNamSinh" runat="server" Height="30px" Width="80px" Font-Size="16" Font-Bold="true"></asp:TextBox><br />
          <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtNamSinh" ErrorMessage="Chưa nhập năm sinh" ForeColor="Red"></asp:RequiredFieldValidator>
          <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtNamSinh" ErrorMessage="Năm sinh không phù hợp" ForeColor="Red" MaximumValue="2500" MinimumValue="1900" Type="Integer"></asp:RangeValidator>
        </div>
        <div class="dkttdn">
            Thông tin đăng nhập
        </div>
        <div class="dkname">
            Tên đăng nhập:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtTenDN" runat="server" Height="30px" Width="270px" Font-Size="16" Font-Bold="true"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Chưa nhập tên đăng nhập" ControlToValidate="txtTenDN" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:Label ID="lbThongBaoLoi" runat="server" Text="" ForeColor="Red" Font-Size="16" Font-Bold="true"></asp:Label>
        </div>
        <div class="dkpass">
            Mật khẩu:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtMatKhau" runat="server" Height="30px" Width="270px" Font-Size="16" Font-Bold="true" TextMode="Password"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Chưa nhập mật khẩu" ControlToValidate="txtMatKhau" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
        <div class="dknhaplaimatkhau">
            Nhập lại mật khẩu:
            <asp:TextBox ID="txtNhapLaiMatKhau" runat="server" Height="30px" Width="270px" Font-Size="16" Font-Bold="true" TextMode="Password"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtNhapLaiMatKhau" ErrorMessage="Nhập lại mật khẩu" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtMatKhau" ControlToValidate="txtNhapLaiMatKhau" ErrorMessage="Mật khẩu nhập lại không khớp" ForeColor="Red"></asp:CompareValidator>
        </div>
        <div class="dkbutton">
            <asp:Button ID="btDangky" runat="server" Text="Đăng ký" BackColor="purple" ForeColor="#FFFFFF" BorderStyle="Solid" Height="35px" Width="100px" OnClick="btDangky_Click" /><br />
        </div>
    </div>
</asp:Content>

