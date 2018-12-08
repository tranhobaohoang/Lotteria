<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AdminAD.aspx.cs" Inherits="AdminLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <link href="../Scripts/CSS/AdminAD.css" rel="stylesheet" />
    <div class="adfood">
        <div class="adfoodtitle">QUẢN LÝ ADMIN</div>
        <br />
        <div style="width:840px;height:750px;overflow:auto;margin-bottom:50px;">

        <div class="adfoodttcn">THÊM ADMIN</div>
        <div class="dnname" style="margin-bottom:34px;">
            Họ và tên:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            <div style="float:right;margin-left:20px"><asp:TextBox ID="txtTenAD" runat="server" Height="30px" Width="270px" Font-Size="16" Font-Bold="true"></asp:TextBox><br /></div>
        </div>
        <div class="dnname" style="margin-bottom:34px;">
            Địa chỉ:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            <div style="float:right;margin-left:80px;"><asp:TextBox ID="txtDiachi" runat="server" Height="30px" Width="270px" Font-Size="16" Font-Bold="true"></asp:TextBox><br /></div>
        </div>
        <div class="dnname" style="margin-bottom:34px;">
            Điện thoại:&nbsp;&nbsp;&nbsp;&nbsp; 
            <div style="float:right;margin-left:70px;"><asp:TextBox ID="txtDienthoai" runat="server" Height="30px" Width="270px" Font-Size="16" Font-Bold="true"></asp:TextBox><br /></div>
        </div>
        <div class="dnname">
            Tên đăng nhập:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            <asp:TextBox ID="txtTenDN" runat="server" Height="30px" Width="270px" Font-Size="16" Font-Bold="true" Text="Username"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Chưa nhập tên đăng nhập" ControlToValidate="txtTenDN" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:Label ID="lbThongBaoLoi" runat="server" Text="" ForeColor="Red" Font-Size="16" Font-Bold="true"></asp:Label>
        </div>
        <div class="dnname">
            Mật khẩu:&nbsp
            <div style="float:right;margin-left:90px;"><asp:TextBox ID="txtMatkhau" runat="server" Height="30px" Width="270px" Font-Size="16" Font-Bold="true" Text="Password"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Chưa nhập mật khẩu" ControlToValidate="txtMatKhau" ForeColor="Red"></asp:RequiredFieldValidator></div>
        </div>
        
        <div class="adngaysinh">
            Ngày sinh:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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
          <asp:TextBox ID="txtNamSinh" runat="server" Height="30px" Width="80px" Font-Size="16" Font-Bold="true" Text="1900"></asp:TextBox><br />
          <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtNamSinh" ErrorMessage="Chưa nhập năm sinh" ForeColor="Red"></asp:RequiredFieldValidator>
          <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtNamSinh" ErrorMessage="Năm sinh không phù hợp" ForeColor="Red" MaximumValue="2500" MinimumValue="1900" Type="Integer"></asp:RangeValidator>
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
        
        <div class="dnname">
            Email:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <div style="float:right;margin-left:90px;"><asp:TextBox ID="txtEmail" runat="server" Height="30px" Width="270px" Font-Size="16" Font-Bold="true" TextMode="Email" Text="a@gmail.com"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="Chưa nhập email" ControlToValidate="txtEmail" ForeColor="Red"></asp:RequiredFieldValidator></div>
        </div>
        <div class="dnname" style="margin-bottom:34px;">
            Phân quyền:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            <div style="float:right;margin-left:80px;">
            <asp:DropDownList ID="ddlmaloai" runat="server" Height="30px" Font-Size="16" Font-Bold="true">
                <asp:ListItem>Quản lý thực đơn</asp:ListItem>
                <asp:ListItem>Quản lý khách hàng</asp:ListItem>
                <asp:ListItem>Quản lý tất cả</asp:ListItem>
            </asp:DropDownList>
            </div>
        </div>
        <div class="dnbutton">
            <asp:Button ID="btAdd" runat="server" Text="Thêm" BackColor="purple" ForeColor="#FFFFFF" BorderStyle="Solid" Height="35px" Width="100px" OnClick="btAdd_Click" /><br />
        </div>

        <div class="adfoodttcn" style="margin-top:100px;">XÓA ADMIN</div>
        <div class="dnname">
            Mã Admin:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            <div style="float:right;margin-left:20px"><asp:TextBox ID="txtDeleteMaadmin" runat="server" Height="30px" Width="270px" Font-Size="16" Font-Bold="true"></asp:TextBox><br /></div>
        </div>
        <div class="dnname" style="float:right;margin-left:40px;margin-right:95px;margin-top:-3px;margin-bottom:-2px;">
            <asp:Label ID="lbDeleteThongbaoloi" runat="server" Text="" ForeColor="Red" Height="30px" Width="300px" Font-Size="16" Font-Bold="true"></asp:Label>
        </div>
        <div class="dnbutton" style="margin-bottom:25px;">
            <asp:Button ID="btDelete" runat="server" Text="Xóa" BackColor="purple" ForeColor="#FFFFFF" BorderStyle="Solid" Height="35px" Width="100px" OnClick="btDelete_Click" /><br />
        </div>

        <div class="adfoodttcn" style="margin-top:100px;">CẬP NHẬT ADMIN</div>
        <div class="dnname">
            Mã Admin:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            <div style="float:right;margin-left:20px"><asp:TextBox ID="txtUpdateMaadmin" runat="server" Height="30px" Width="270px" Font-Size="16" Font-Bold="true"></asp:TextBox><br /></div>
        </div>
        <div class="dnname" style="float:right;margin-left:40px;margin-right:95px;margin-top:-3px;margin-bottom:-2px;">
            <asp:Label ID="lbUpdateThongbaoloimaadmin" runat="server" Text="" ForeColor="Red" Height="30px" Width="300px" Font-Size="16" Font-Bold="true"></asp:Label>
        </div>
        <div class="dnname" style="margin-bottom:34px;">
            Họ và tên:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            <div style="float:right;margin-left:20px"><asp:TextBox ID="txtUpdateHoten" runat="server" Height="30px" Width="270px" Font-Size="16" Font-Bold="true"></asp:TextBox><br /></div>
        </div>
        <div class="dnname" style="margin-bottom:34px;">
            Địa chỉ:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            <div style="float:right;margin-left:80px;"><asp:TextBox ID="txtUpdateDiachi" runat="server" Height="30px" Width="270px" Font-Size="16" Font-Bold="true"></asp:TextBox><br /></div>
        </div>
        <div class="dnname" style="margin-bottom:34px;">
            Điện thoại:&nbsp;&nbsp;&nbsp;&nbsp; 
            <div style="float:right;margin-left:70px;"><asp:TextBox ID="txtUpdateDienthoai" runat="server" Height="30px" Width="270px" Font-Size="16" Font-Bold="true"></asp:TextBox><br /></div>
        </div>
        <div class="dnname">
            Tên đăng nhập:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            <asp:TextBox ID="txtUpdateTendn" runat="server" Height="30px" Width="270px" Font-Size="16" Font-Bold="true" Text="Username"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Chưa nhập tên đăng nhập" ControlToValidate="txtUpdateTendn" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:Label ID="lbUpdateThongbaoloi" runat="server" Text="" ForeColor="Red" Font-Size="16" Font-Bold="true"></asp:Label>
        </div>
        <div class="dnname">
            Mật khẩu:&nbsp
            <div style="float:right;margin-left:90px;"><asp:TextBox ID="txtUpdatePass" runat="server" Height="30px" Width="270px" Font-Size="16" Font-Bold="true" Text="Password"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Chưa nhập mật khẩu" ControlToValidate="txtUpdatePass" ForeColor="Red"></asp:RequiredFieldValidator></div>
        </div>
        
        <div class="adngaysinh">
            Ngày sinh:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="ddlUpdateNgaysinh" runat="server" Height="30px" Font-Size="16" Font-Bold="true">
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
          <asp:DropDownList ID="ddlUpdateThangsinh" runat="server" Height="30px" Font-Size="16" Font-Bold="true">
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
          <asp:TextBox ID="txtUpdateNamsinh" runat="server" Height="30px" Width="80px" Font-Size="16" Font-Bold="true" Text="1900"></asp:TextBox><br />
          <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtUpdateNamsinh" ErrorMessage="Chưa nhập năm sinh" ForeColor="Red"></asp:RequiredFieldValidator>
          <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="txtUpdateNamsinh" ErrorMessage="Năm sinh không phù hợp" ForeColor="Red" MaximumValue="2500" MinimumValue="1900" Type="Integer"></asp:RangeValidator>
        </div>
        <div class="dkgt">
            Giới tính:
            <div class="dkgtcheck">
            <asp:RadioButtonList ID="rblUpdateGioitinh" runat="server" Height="16px" RepeatDirection="Horizontal" Width="240px" Font-Size="16" Font-Bold="true" ForeColor="White">
              <asp:ListItem Selected="True">Nam</asp:ListItem>
              <asp:ListItem>Nữ</asp:ListItem>
            </asp:RadioButtonList>
                
            </div>
        </div>
        
        <div class="dnname">
            Email:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <div style="float:right;margin-left:90px;"><asp:TextBox ID="txtUpdateEmail" runat="server" Height="30px" Width="270px" Font-Size="16" Font-Bold="true" TextMode="Email" Text="a@gmail.com"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Chưa nhập email" ControlToValidate="txtUpdateEmail" ForeColor="Red"></asp:RequiredFieldValidator></div>
        </div>
        <div class="dnname" style="margin-bottom:34px;">
            Phân quyền:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            <div style="float:right;margin-left:80px;">
            <asp:DropDownList ID="ddlUpdatePhanquyen" runat="server" Height="30px" Font-Size="16" Font-Bold="true">
                <asp:ListItem>Quản lý thực đơn</asp:ListItem>
                <asp:ListItem>Quản lý khách hàng</asp:ListItem>
                <asp:ListItem>Quản lý tất cả</asp:ListItem>
            </asp:DropDownList>
            </div>
        </div>
        <div class="dnbutton" style="margin-bottom:25px;">
            <asp:Button ID="btUpdate" runat="server" Text="Cập nhật" BackColor="purple" ForeColor="#FFFFFF" BorderStyle="Solid" Height="35px" Width="100px" OnClick="btUpdate_Click" /><br />
        </div>
        </div>

        <div class="ttttgh">THÔNG TIN ADMIN</div>
        <div class="ghitems">
            <asp:GridView ID="gvGioHang" runat="server" DataKeyNames="MAADMIN" AutoGenerateColumns="False" Width="100%" BorderStyle="None" Font-Bold="True" Font-Size="Medium" ForeColor="White">
       
                <Columns>
                    <asp:BoundField HeaderText="Mã Admin" ApplyFormatInEditMode="True" DataField="MAADMIN" >
                    <ControlStyle BorderStyle="Solid" BorderWidth="1px" />
                    <ItemStyle Font-Size="Small" HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField HeaderText="Họ tên" DataField="HOTENADMIN" >
                    <ControlStyle BorderStyle="Solid" BorderWidth="1px" />
                    <ItemStyle Font-Size="Small" HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField HeaderText="Địa chỉ" DataField="DIACHIADMIN" >
                    <ControlStyle BorderStyle="Solid" BorderWidth="1px" />
                    <ItemStyle Font-Size="Small" HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField HeaderText="Điện thoại" DataField="DIENTHOAIADMIN" >
                    <ControlStyle BorderStyle="Solid" BorderWidth="1px" />
                    <ItemStyle Font-Size="Small" HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="TENDNADMIN" HeaderText="Tên đăng nhập" >
                    <ItemStyle Font-Size="Small" HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="MATKHAUADMIN" HeaderText="Mật khẩu" >
                    <ItemStyle Font-Size="Small" HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="NGAYSINHADMIN" HeaderText="Ngày sinh" >
                    <ItemStyle Font-Size="Small" HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="GIOITINHADMIN" HeaderText="Giới tính" >
                    <ItemStyle Font-Size="Small" HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="EMAILADMIN" HeaderText="Email" >
                    <ItemStyle Font-Size="Small" HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="QUYENADMIN" HeaderText="Phân quyền" >
                    <ItemStyle Font-Size="Small" HorizontalAlign="Center" />
                    </asp:BoundField>
                </Columns>
            </asp:GridView>
        </div>
    </div>
    </asp:Content>

