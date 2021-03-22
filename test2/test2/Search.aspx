<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Search.aspx.cs" Inherits="test2.Search" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="css/index.css" rel="stylesheet" />
    <div class="container">
        <h1>Kết quả tìm kiếm</h1>
        <asp:Label ID="LbThongbao" runat="server" Text=""></asp:Label>
            <asp:Repeater ID="RpterTimkiem" runat="server">
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
</asp:Content>
