<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Category.aspx.cs" Inherits="test2.Category" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="css/index.css" rel="stylesheet" />
    <div class="container">
    <asp:Repeater ID="RpCategory" runat="server">
        <ItemTemplate>
            <h1 style="font-family:sans-serif; font-size:24px;color:#09cfbe;margin-top:20px;border-bottom: 7px solid #046158;"><%# Eval("noidung") %></h1>
        </ItemTemplate>
    </asp:Repeater>
    </div>
    <br />
    <div class="container">
            <asp:Repeater ID="RpterTest" runat="server">
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
