<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="test2.register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="css/register.css" rel="stylesheet" />
        <div id="content">
	<div class="container">
		<div id="khungdangnhap">
			<div class="title-gioithieu">
                    <h1>TẠO TÀI KHOẢN</h1>
            </div>
            <div class="userbox">

                    <form accept-charset="UTF-8" action=""id="create_customer" method="post" >
                        <input name="form_type" type="hidden" value="create_customer">
                        <input name="utf8" type="hidden" value="✓">

                        <div id="first_name" class="clearfix">
                            <div class="label-fname"></div>
                            <input required="" type="text" value="" name="txtfullname" placeholder="Họ và tên" id="txtfullname" class="text" size="30">
                        </div>
                        <div id="last_name" class="clearfix">
                            <div class="label-lname"></div>
                            <input required="" type="text" value="" name="txtbirthday" placeholder="Ngày sinh" id="txtbirthday" class="text" size="30">
                        </div>

                        <div id="email" class="clearfix">
                            <div class="label-email"></div>
                            <input required="" type="text" value="" placeholder="Tên tài khoản" name="txtuser" id="txtuser" class="text" size="30">
                        </div>

                        <div id="password" class="clearfix">
                            <div class="label-pass"></div>
                            <input required="" type="password" value="" placeholder="Mật khẩu" name="txtpassword" id="txtpassword" class="password text" size="30">
                        </div>

                        <div class="action_bottom">
                            <input class="btn" type="submit" value="Đăng ký">
                        </div>
                        <div class="req_pass">
                            <a class="come-back" href="index.aspx">Quay về</a>
                        </div>
                            <asp:Label ID="lbthongbao" runat="server"></asp:Label>

                    </form>
                </div>
		</div>
	</div>
</div>
</asp:Content>
