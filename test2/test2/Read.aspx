<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Read.aspx.cs" Inherits="test2.Read" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="css/index.css" rel="stylesheet" />
 <div class="container">
     <br />
     <br />
    <asp:Repeater ID="Rpbantinct" runat="server">
        <ItemTemplate>
            <div ><h1 style="font-family:sans-serif; font-size:24px;color:#046158;margin-top:20px;border-bottom: 7px solid #046158;"><%# Eval("noidung") %></h1></div>
        </ItemTemplate>
    </asp:Repeater>
     <br />
        <asp:Repeater ID="RpContent" runat="server">
            <ItemTemplate>
                <h1 style="font-family:sans-serif; font-size:24px;" ><%# Eval("tieude") %></h1>
                <br />
                <p>
                    Cập Nhật: <%# Eval("ngaydangtin") %>
                    <br /><br />
                    Số lần xem:<%# Eval("lanxem") %>
                </p>
                    <br /><br />
                 <%# Eval("noidung") %>
            </ItemTemplate>
        </asp:Repeater>
      <br />
     <br />
        <h3>Xem thêm bản tin khác</h3>
        <div class="container">
            <asp:Repeater ID="RpterRadom" runat="server">
                <ItemTemplate>
    		<div class="gr3">
    			<div class="gr3-left">
    				<div class="tin">
                       
    			 <a href="Read.aspx?idbantin=<%# Eval("IDBantin") %>&id=<%# Eval("ID") %>">
    				<figure>
    					<img class="img4" src="<%# Eval("img") %>" alt=""title="<%# Eval("tieude") %>">
    				</figure>
    			 </a>
    			 	</div>
    			</div>
    			<div class="gr3-mid">
    				<h3 class ="tin4"><a href="Read.aspx?idbantin=<%# Eval("IDBantin") %>&id=<%# Eval("ID") %>"><%# Eval("mota") %></a></h3>
    				<p>
    					<span class="thoigiantin"><%# Eval("ngaydangtin") %></span>
    				</p>
    				<span class="mota2">
    					<%#Eval("mota")%>
    				</span>
    			</div>
    			<div class="gr3-right">
    			</div>
    		</div>
              </ItemTemplate>
            </asp:Repeater>
    	</div>  
    </div>
</asp:Content>
