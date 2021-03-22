<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="addnews.aspx.cs" Inherits="test2.addnews" ValidateRequest="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link rel="stylesheet" href="css/dangnhap.css">
    <div class="container">
        <br />
        <h3 >Thêm bản tin mới</h3>
        <br />
        <h4>Chọn bản tin</h4>
        
        
        <asp:DropDownList ID="DrBanTin" runat="server" Width="285px" CssClass="list"></asp:DropDownList>

        <br /><br />

        <h4>Tiêu đề bản tin</h4>     
        <asp:TextBox ID="txttieude" runat="server" Width="579px" CssClass="textbox"></asp:TextBox>
        <br />
        <br />
        <h4>Mô tả</h4>
       
        <asp:TextBox ID="Txtmota" runat="server" Width="579px" CssClass="textbox"></asp:TextBox>
        <br />
        <br />
        <h4>Ảnh đại diện tin</h4>
       
        <asp:TextBox ID="txtduongdananh" runat="server" CssClass="textbox"></asp:TextBox><br /><br />
        <h4>Nội dung bản tin</h4>
        <script>CKEDITOR.relace(ckeditor1);</script>
         <textarea  class="ckeditor" id="ckeditor1" name="ckeditor1"></textarea><br />
       
            </form>
        <br />
        <asp:Button ID="btnInsert" runat="server" Text="Cập nhật" OnClick="btnInsert_Click1" />
        <br /><br />
    </div>
</asp:Content>
