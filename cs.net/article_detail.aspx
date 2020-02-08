<%@ Page Language="C#" AutoEventWireup="true" CodeFile="article_detail.aspx.cs" Inherits="_Default1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>旅游文章</title>
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
         <style type="text/css">
        .pinglun {
            width: 880px;
            margin: 15px auto;
            padding: 40px;
            background-color: #fff;
        }
        .publishdate{float: right;}
        #pinglunlist {
            width: 880px;
            padding: 10px;
        }

        #commentLabel {
            display: block;
            width: 870px;
            padding: 10px;
        }

        #createdateLabel {
            float: right;
        }

        #pl_user {
            text-align: right;
        }

        #txtPinglun {
            width: 95%;
            height: 30px;
            margin-top: 15px;
            border-radius: 5px;
            border: solid 2px #808080;
        }

        #btn_sub {
            width: 80px;
            height: 25px;
            margin-top: 5px;
            background-color: #808080;
            border: solid 1px #808080;
            border-radius: 1px;
            color: #ffffff;
        }

            #btn_sub:hover {
                background-color: #232323;
            }

        #pl_tip {
            margin-top: 5px;
        }
    </style>

	</head>

	<body>

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

					<h1><a class="navbar-brand" href="##">旅游网</a></h1>
					<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
			</button>

					<div class="collapse navbar-collapse justify-content-center" id="navbarSupportedContent">
						<ul class="navbar-nav ml-auto">
							<li class="nav-item ">
								<a class="nav-link" href="pageHome.aspx">主页 </a>
							</li>
							<li class="nav-item  active">
								<a class="nav-link" href="article.aspx">旅游资讯<span class="sr-only">(current)</span></a>
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
		<section class="welcome py-5">
		            <div >
                   <div class="container py-3">
                   <h3 class="heading text-center mb-md-5 mb-4"> 旅游文章</h3>

                   <div ><a href="article.aspx">返回上一级</a></div>
                   <div>


                   
                       <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                           ConnectionString="<%$ ConnectionStrings:northwindsqlConnectionString %>" 
                           SelectCommand="SELECT * FROM [lyxw] WHERE ([fileid] = @fileid)">
                           <SelectParameters>
                               <asp:QueryStringParameter Name="fileid" QueryStringField="fileid" 
                                   Type="Int32" />
                           </SelectParameters>
                       </asp:SqlDataSource>     <div  class="des">  
                       <asp:DataList ID="DataList1" runat="server" DataKeyField="fileid" 
                           DataSourceID="SqlDataSource1">
                           <ItemTemplate>
                        
                            <div class="tt"><asp:Label ID="biaotiLabel" runat="server" Text='<%# Eval("biaoti") %>' /></div>
                              
                         <br />
                           <div class="tta">作者：
                                 <asp:Label ID="zuozheLabel" runat="server" Text='<%# Eval("zuozhe") %>' />
                               
                         &nbsp &nbsp &nbsp 发布日期：
                                <asp:Label ID="reqiLabel" runat="server" Text='<%# Eval("reqi","{0:yyyy-MM-dd}") %>' />
                              </div>
                              <div><br />
                           &nbsp&nbsp&nbsp&nbsp  &nbsp&nbsp&nbsp&nbsp  <asp:Label ID="neironLabel" runat="server" Text='<%# Eval("neiron") %>' />
                               
                              </div>
                             </div>
                               <br />
<br />
                           </ItemTemplate>
                       </asp:DataList>


                   
                   </div>

                    <div class="pinglun">
                评论：
              
                        <br />
             <br />
                
                
<asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:northwindsqlConnectionString %>" 
                            SelectCommand="SELECT * FROM [pinglun] WHERE ([fileid] = @fileid) ORDER BY [createdate] DESC ">
                            <SelectParameters>
                               <asp:QueryStringParameter Name="fileid" QueryStringField="fileid" 
                                   Type="Int32" />
                           </SelectParameters>
                </asp:SqlDataSource>
                
                <asp:DataList ID="pinglunlist" runat="server" DataSourceID="SqlDataSource2" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal">
                    <FooterStyle BackColor="White" ForeColor="#333333" />
                    <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                    <ItemStyle BackColor="White" ForeColor="#333333" />
                    <ItemTemplate>
                    <div class="filelistname">
                      用户：
                        <asp:Label ID="usernameLabel" runat="server" Text='<%# Eval("username")+":" %>' Font-Size="18" />
                        <br />
                        </div>
                        <asp:Label ID="commentLabel" runat="server" Text='<%# "&nbsp;&nbsp;"+Eval("comment") %>' />
                        <br />
                        <div class="publishdate">
                            日期:
                      <asp:Label ID="createdateLabel" runat="server" Text='<%# Eval("createdate") %>' />
                      </div>
                            <br />
                            <br />
                            <br />
                    </ItemTemplate>
                    <SelectedItemStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                </asp:DataList>
                <asp:Label ID="yq_tip" runat="server" Text=""></asp:Label>
                <asp:Panel ID="pl_user" runat="server">
                    <asp:TextBox ID="txtPinglun" runat="server"></asp:TextBox>
                    <asp:Button ID="btn_sub" runat="server" Text="评论" OnClick="btn_sub_Click" />
                </asp:Panel>
            </div>
                   </div>
					
			
		</section>
        
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
		<!-- //copyright -->

		

		

		<!-- js-scripts -->

		
    </div>
    </form>
</body>
</html>

