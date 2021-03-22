<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="test2.index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="css/index.css" rel="stylesheet" />
    <script src="js/checkform.js"></script>
    <div id="content">
    	<div class="container">
            <asp:Repeater ID="Rphotnew" runat="server">
                <ItemTemplate>
    		<div class="gr">
    			<div id="left">
    				<div class="tin">
    			 <a href="Read.aspx?idbantin=<%# Eval("IDBantin") %>&id=<%# Eval("ID") %>">
    				<figure >
    					<img class="img1" src="<%# Eval("img") %>" alt=""title="<%# Eval("tieude") %>">
    				</figure>
    			 </a>
    			 	</div>
    			 	<h3 class ="tin1"><a href="Read.aspx?idbantin=<%# Eval("IDBantin") %>&id=<%# Eval("ID") %>"><%# Eval("tieude") %></a></h3>
    			 	<p class="mota"><%#Eval("mota")%> </p>
    			</div>
                </ItemTemplate>
            </asp:Repeater>
    			<div id="mid">
                    <asp:Repeater ID="Rpradom1" runat="server">
                        <ItemTemplate>
    				<div class="tin">
    			 <a href="Read.aspx?idbantin=<%# Eval("IDBantin") %>&id=<%# Eval("ID") %>">
    				<figure>
    					<img class="img2" src="<%# Eval("img") %>" alt=""title="<%# Eval("tieude") %>">
    				</figure>
    			 </a>
    			 	</div>
    			 	<h3 class="tin2"><a href="Read.aspx?idbantin=<%# Eval("IDBantin") %>&id=<%# Eval("ID") %>"><%# Eval("tieude") %></a></h3>
                        </ItemTemplate>
                 </asp:Repeater>
    			</div>
       
    			<div id="right"></div>
    		</div>
    	</div>
    	<div class="container">
    		<div class="gr2">
                <asp:Repeater ID="RpTintat" runat="server">
                    <ItemTemplate>
    			<div >
    				<div class="tin">
    			 <a href="Read.aspx?idbantin=<%# Eval("IDBantin") %>&id=<%# Eval("ID") %>" title="">
    				<figure>
    					<img class="img3" src="<%# Eval("img") %>" alt=""title="<%# Eval("tieude") %>">
    				</figure>
    			 </a>
    			 	</div>
    			 	<div>
    			 		<h3 class ="tin3"><a href="Read.aspx?idbantin=<%# Eval("IDBantin") %>&id=<%# Eval("ID") %>"><%# Eval("tieude") %></a></h3>
    			 	</div>
    			</div>
                       </ItemTemplate>
                </asp:Repeater>
    			<div class="phai"></div>
    		</div>
    	</div>
    	<div class="container">
            <asp:Repeater ID="RpterTest" runat="server">
                <ItemTemplate>
    		<div class="gr3">
    			<div class="gr3-left">
    				<div class="tin">
                       
    			 <a href="Read.aspx?idbantin=<%# Eval("IDBantin") %>&id=<%# Eval("ID") %>">
    				<figure>
    					<img class="img4" src="<%# Eval("img") %>" alt=""title="">
    				</figure>
    			 </a>
    			 	</div>
    			</div>
    			<div class="gr3-mid">
    				<h3 class ="tin4"><a href="Read.aspx?idbantin=<%# Eval("IDBantin") %>&id=<%# Eval("ID") %>"><%# Eval("tieude") %></a></h3>
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
      
    	<div class="container">
    		<div class="gr5">
    			<div id="left">
    				 <div class="box-new2">
    					<span class="box-tittle"><h2>Đáng chú ý</h2></span>
    					<ul>
                            <asp:Repeater ID="Rptintat2" runat="server">
                                <ItemTemplate>
    						<li>
			    				<div class="tindangchuy">
			    			 <a href="Read.aspx?idbantin=<%# Eval("IDBantin") %>&id=<%# Eval("ID") %>" title="">
			    				<figure>
			    					<img class="img5" src="<%# Eval("img") %>" alt=""title="<%# Eval("tieude") %>">
			    				</figure>
			    			 </a>
			    			 	</div>
			    			 	<div>
			    			 		<h3 class ="tin5"><a href="Read.aspx?idbantin=<%# Eval("IDBantin") %>&id=<%# Eval("ID") %>"><%# Eval("tieude") %></a></h3>
			    			 	</div>
    						</li>
                                </ItemTemplate>
                            </asp:Repeater>
    					</ul> 
    			</div>
    			<div id="mid">
    				<div class="box-new"><span class="box-tittle"><h2>Nổi bật</h2></span>
    					<asp:Repeater ID="Rptinnoibat" runat="server">
                                <ItemTemplate>
    						<li>
			    				<div class="tindangchuy">
			    			 <a href="Read.aspx?idbantin=<%# Eval("IDBantin") %>&id=<%# Eval("ID") %>" title="">
			    				<figure>
			    					<img class="img5" src="<%# Eval("img") %>" alt=""title="<%# Eval("tieude") %>">
			    				</figure>
			    			 </a>
			    			 	</div>
			    			 	<div>
			    			 		<h3 class ="tin5"><a href="Read.aspx?idbantin=<%# Eval("IDBantin") %>&id=<%# Eval("ID") %>"><%# Eval("tieude") %></a></h3>
			    			 	</div>
    						</li>
                                </ItemTemplate>
                            </asp:Repeater>
    					</div>
    					</div>
    			</div>
    			<div id="right"></div>

    		</div>
    	</div>
    	<div class="container">
            <asp:Repeater ID="RpterTest2" runat="server">
                <ItemTemplate>
    		<div class="gr3">
    			<div class="gr3-left">
    				<div class="tin">
    			 <a href="" title="<%# Eval("tieude") %>">
    				<figure>
    					<img class="img4" src="<%# Eval("img") %>" alt=""title="<%# Eval("tieude") %>">
    				</figure>
    			 </a>
    			 	</div>
    			</div>
    			<div class="gr3-mid">
    				<h3 class ="tin4"><a href="#"><%# Eval("mota") %></a></h3>
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
