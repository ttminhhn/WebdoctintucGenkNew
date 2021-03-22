<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="test2.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="css/login.css" rel="stylesheet" />
 <div id="content">
	<div class="container">
		<div id="khungdangnhap">
			<div class="title-gioithieu">
                    <h1>ĐĂNG NHẬP</h1>
                </div>
                <div id="customer-login">
                    <div id="login" class="userbox">
                        <form accept-charset="UTF-8" id="customer_login">
                           <input name="form_type" type="hidden" value="customer_login">
                            <input name="utf8" type="hidden" value="✓">

                            <div class="clearfix large_form">
                                <label for="customer_email" class="icon-field"><i class="icon-login icon-envelope "></i></label>
                                <input name="txtuser" type="text" value="" id="txtuser" placeholder="User" class="text">
                            </div>


                            <div class="clearfix large_form">
                                <label for="customer_password" class="icon-field"><i class="icon-login icon-shield"></i></label>
                                <input type="password" value="" name="txtpassword" id="txtpassword" placeholder="Mật khẩu" class="text" size="16">
                            </div>


                            <div class="action_bottom">
                                <input class="btn btn-signin" type="submit" name="btnLogin" id="btnlogin" value="Đăng nhập" onclick="" >
                            </div>
                            <div class="req_pass">
                                <a href="#" onclick="showRecoverPasswordForm();return false;">Quên mật khẩu?</a>

                                hoặc <a href="register.aspx" title="Đăng ký">Đăng ký</a>
                            </div>
                            <asp:Label ID="lbthongbao" runat="server"></asp:Label>
                        </form>
                    </div>

                    <div id="recover-password" style="display:none;" class="userbox">
                        <div class="accounttype">
                            <h2>Phục hồi mật khẩu</h2>
                        </div>
		</div>
    </div>
     </div>
    </div>
</div>
</asp:Content>
