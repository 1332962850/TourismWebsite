<%@ Page Language="C#" AutoEventWireup="true" CodeFile="article.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>旅游资讯</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <script type="application/x-javascript">
			addEventListener("load", function() {
				setTimeout(hideURLbar, 0);
			}, false);

			function hideURLbar() {
				window.scrollTo(0, 1);
			}
		</script>
		<!--// Meta tag Keywords -->

		<!-- css files -->
		<link rel="stylesheet" href="css/bootstrap.css">
		<!-- Bootstrap-Core-CSS -->
		<link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
		<!-- Style-CSS -->
		<link rel="stylesheet" href="css/font-awesome.css">
		<!-- Font-Awesome-Icons-CSS -->
		<!-- //css files -->

		<!-- web-fonts -->
		<link href="http://fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&amp;subset=latin-ext" rel="stylesheet">
		<!-- //web-fonts -->




		<!--Header-->
		<header>
			<div class="container agile-banner_nav">
				<div class="row header-top">
					<div class="col-md-5 top-left p-0">
						<p><i class="fa fa-phone" aria-hidden="true"></i>联系电话：666666</p>
					</div>
					<div class="col-md-7 top-right p-0">
						<p><i class="fa fa-map-marker" aria-hidden="true"></i> 
                          <asp:Label ID="Label1" runat="server"></asp:Label>
                        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="dl1">登陆</asp:LinkButton>
                        <asp:LinkButton ID="LinkButton2" runat="server" OnClick="dl">注册</asp:LinkButton>
                        <asp:LinkButton ID="LinkButton3" runat="server"  OnClick="dl3">退出</asp:LinkButton>
					</div>
				</div>

				<nav class="navbar navbar-expand-lg navbar-light bg-light">

					<h1><a class="navbar-brand" href="#">旅游网</a></h1>
					<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
			</button>

					<div class="collapse navbar-collapse justify-content-center" id="navbarSupportedContent">
						<ul class="navbar-nav ml-auto">
							<li class="nav-item ">
								<a class="nav-link" href="pageHome.aspx">主页 </a>
							</li>
							<li class="nav-item  active">
								<a class="nav-link" href="#">旅游资讯<span class="sr-only">(current)</span></a>
							</li>
							<li class="nav-item">
								<a class="nav-link" href="recommend.aspx">旅游推荐</a>
							</li>
							<li class="dropdown nav-item">
								<a href="#" class="dropdown-toggle nav-link" data-toggle="dropdown">分类
									<b class="caret"></b>
								</a>
								<ul class="dropdown-menu agile_short_dropdown">
									<li>
										<a href="#">定价计划</a>
									</li>
									<li>
										<a href="#">路线选择</a>
									</li>
								</ul>
							</li>
							<li class="nav-item">
								<a class="nav-link" href="#">购买套餐</a>
							</li>
							<li class="nav-item pr-lg-0">
								<a class="nav-link pr-lg-0" href="admin.aspx">后台登陆</a>
							</li>
						</ul>
					</div>

				</nav>
			</div>
		</header>
		<!--Header-->
		<div class="innerpage-banner">
			<div class="layer1">
			</div>
		</div>



      <!-- welcome -->
		<section >
		           
                   <div class="container py-3">
                    <div class="aaa"><div  class="qq">热门推荐</div>
                    <asp:Menu ID="Menu1" runat="server" BackColor="White" DynamicHorizontalOffset="2" 
                            Font-Names="Verdana" Font-Size="15px" ForeColor="Black" 
                            StaticSubMenuIndent="10px" BorderStyle="Outset" Height="300px" 
                            Width="260px">
                       <DynamicHoverStyle BackColor="#FCF6C0" ForeColor="White" />
                       <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                       <DynamicMenuStyle BackColor="#FF9900" />
                       <DynamicSelectedStyle BackColor="#FFCC66" />
                       <Items > 
                           <asp:MenuItem Text="中国最美三大雅丹地貌" Value="新建项"></asp:MenuItem>
                           <asp:MenuItem Text="神州美景十八处 色不迷人人迷色" Value="新建项"></asp:MenuItem>
                           <asp:MenuItem Text="中国最美六大沼泽湿地" Value="新建项"></asp:MenuItem>
                           <asp:MenuItem Text="中国各省市的标志性建筑" Value="新建项"></asp:MenuItem>
                           <asp:MenuItem Text="一生不可错过的世界20大美景" Value="新建项"></asp:MenuItem>
                           <asp:MenuItem Text="中国最美十大名山" Value="新建项"></asp:MenuItem>
                           <asp:MenuItem Text="中国最美十大海岸" Value="新建项"></asp:MenuItem>
                           <asp:MenuItem Text="中国四大自然风光" Value="新建项"></asp:MenuItem>
                           <asp:MenuItem Text="中国最美十大森林" Value="新建项"></asp:MenuItem>
                       </Items>
                       <StaticHoverStyle BackColor="#FF9900" ForeColor="White" />
                       <StaticMenuItemStyle Height="32px" Width="245px" />
                        <StaticMenuStyle HorizontalPadding="5px" VerticalPadding="5px" />
                       <StaticSelectedStyle BackColor="#FFCC66" />
                        </asp:Menu>
                    
                    </div>
                 <div class="bbb">
                   <h3 class="ccc"> 旅游文章</h3>
                   
             
                   <div>


                   <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                           ConnectionString="<%$ ConnectionStrings:northwindsqlConnectionString %>" 
                           SelectCommand="SELECT * FROM [lyxw] ORDER BY [reqi] DESC"></asp:SqlDataSource>
                   
                       <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                           AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
                           DataKeyNames="fileid" DataSourceID="SqlDataSource1" ForeColor="#333333" 
                           GridLines="None" onselectedindexchanged="GridView1_SelectedIndexChanged" 
                           ShowHeader="False" BorderStyle="None" >
                           <AlternatingRowStyle BackColor="White" />
                           <Columns>
                               <asp:TemplateField>
                                   <ItemTemplate>
                                       <asp:Image ID="Image1" runat="server" Height="14px" ImageAlign="Left" 
                                           ImageUrl="~/images/07.jpg" Width="14px" />
                                   </ItemTemplate>
                                   <ItemStyle Width="22px" />
                               </asp:TemplateField>
                               <asp:TemplateField HeaderText="biaoti" SortExpression="biaoti">
                                   <EditItemTemplate>
                                       <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("biaoti") %>'></asp:TextBox>
                                   </EditItemTemplate>
                                   <ItemTemplate>
                                       <asp:HyperLink ID="HyperLink2" runat="server" 
                                           NavigateUrl='<%# "~/article_detail.aspx?fileid="+Eval("fileid") %>' 
                                           Text='<%# Bind("biaoti", "{0}") %>'></asp:HyperLink>
                                   </ItemTemplate>
                                   <ControlStyle Font-Italic="False" Font-Overline="False" Font-Underline="False" 
                                       Width="200px" />
                                   <ItemStyle Width="340px" CssClass="ac" Height="20px" />
                               </asp:TemplateField>
                               <asp:BoundField DataField="reqi" HeaderText="reqi" SortExpression="reqi" 
                                   DataFormatString="【{0:yyyy-MM-dd}】">
                               <ControlStyle Width="200px" />
                               <ItemStyle Height="30px" Width="140px" Wrap="False" />
                               </asp:BoundField>
                           </Columns>
                           <EditRowStyle Width="500px" />
                           <EmptyDataTemplate>
                               <asp:HyperLink ID="HyperLink1" runat="server" 
                                   NavigateUrl='<%# "~/index_wz.aspx?fileid="+Eval("fileid") %>'>HyperLink</asp:HyperLink>
                           </EmptyDataTemplate>
                           <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                           <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                           <PagerSettings FirstPageText="第一页" NextPageText="下一页" LastPageText="最后一页" 
                               Mode="NextPreviousFirstLast" PreviousPageText="上一页" />
                           <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                           <RowStyle BackColor="#FFFBD6" ForeColor="#333333" Width="500px" Wrap="False" />
                           <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" 
                               HorizontalAlign="Left" Width="500px" />
                           <SortedAscendingCellStyle BackColor="#FDF5AC" />
                           <SortedAscendingHeaderStyle BackColor="#4D0000" />
                           <SortedDescendingCellStyle BackColor="#FCF6C0" Width="200px" />
                           <SortedDescendingHeaderStyle BackColor="#820000" />
                       </asp:GridView>
                   
                   </div>
                   </div>
                   			<div class="sos"> 
 <div class="sos2"><img src="images/searchbg.gif" alt=" " class="leftad"  /></div>
                             新闻搜索
        <asp:DropDownList ID="dropsearch" runat="server" 
            onselectedindexchanged="DropDownList1_SelectedIndexChanged">
            <asp:ListItem>按标题搜索</asp:ListItem>
            <asp:ListItem>按内容搜索</asp:ListItem>
            <asp:ListItem>按发布者搜索</asp:ListItem>
            
        </asp:DropDownList>
       

        <asp:TextBox ID="txtsearch" runat="server" ontextchanged="txtsearch_TextChanged1" ></asp:TextBox>
      <asp:Button  ID="btnsearch" runat="server" onclick="btnsearch_Click" class="searchBtn" Text="搜索"/>
        <asp:Panel ID="Panel11" runat="server">
        <asp:Label ID="lblsearch" runat="server" Text="Label"></asp:Label>
        <hr />
        <br />
        <asp:DataList ID="DataList1" runat="server" CellPadding="4" ForeColor="#333333" 
                HorizontalAlign="Center">
        
        
        
            <AlternatingItemStyle BackColor="White" />
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <ItemStyle BackColor="#FFFBD6" ForeColor="#333333" Height="30px" 
                Width="600px" />
        
        
        
            <ItemTemplate>
                <asp:Image ID="Image2" runat="server" Height="14px" ImageUrl="~/images/07.jpg" 
                    Width="14px" />
               <asp:HyperLink ID="HyperLink2" runat="server" 
                                           NavigateUrl='<%# "~/article_detail.aspx?fileid="+Eval("fileid") %>' 
                                           Text='<%# Bind("biaoti", "{0}") %>'></asp:HyperLink> 
            </ItemTemplate>
        
        
        
            <SelectedItemStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        
        
        
        </asp:DataList>
        </asp:Panel>
</div>
</div>
    </div>
</div>
		
                    
                    
                    
                    
			
		</section>
		<!-- //welcome -->

		<!-- //welcome -->
        
        	<!-- footer -->
		<footer class="py-5">
			<div class="container py-md-3">
				<div class="row footer-grids pb-md-5 pb-3">
					<div class="col-md-3 col-sm-6 col-6">
						<a href="#"> <i class="fa fa-phone"></i>电话</a>
					</div>
					<div class="col-md-3 col-sm-6 col-6">
						<a href="#"> <i class="fa fa-envelope"></i>邮件</a>
					</div>
					<div class="col-md-3 col-sm-6 col-6 mt-md-0 mt-2">
						<a href="#"> <i class="fa fa-qq"></i>QQ</a>
					</div>
					<div class="col-md-3 col-sm-6 col-6 mt-md-0 mt-2">
						<a href="#"> <i class="fa fa-comment"></i>在线咨询</a>
					</div>
				</div>

				<div class="subscribe-grid text-center">
					<p class="para three mt-4">旅游网 </p>
					<h5>订阅我们的最新消息</h5>
					<p>预定
						<span>九折</span> 优惠</p>
					
				</div>
			</div>
		</footer>
		<!-- //footer -->

		<!-- copyright -->
		<section class="copyright py-4 text-center">
			<div class="container">
				<p>1730101 &copy; 17软件1班蔡创艺
				</p>
			</div>
		</section>
		
   
    </form>
</body>
</html>
