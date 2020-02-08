 <%@ Page Language="C#" AutoEventWireup="true" CodeFile="pageHome.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html >
<form id="form1" runat="server">
    




	<head>
		<title>首页</title>

		<!-- Meta tag Keywords -->
	
	
		<script type="application/x-javascript">
			addEventListener("load", function() {
				setTimeout(hideURLbar, 0);
			}, false);

			function hideURLbar() {
				window.scrollTo(0, 1);
			}
		</script>
		<!--// Meta tag Keywords -->

		<!-- pop up box -->
		<link href="css/popuo-box.css" rel="stylesheet" type="text/css" media="all" />
		<!-- //pop up box -->

		<link rel="stylesheet" href="css/jquery.desoslide.css"/>

		<!-- css files -->
		<link rel="stylesheet" href="css/bootstrap.css"/>
		<!-- Bootstrap-Core-CSS -->
		<link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
		<!-- Style-CSS -->
		<link rel="stylesheet" href="css/font-awesome.css"/>
		<!-- Font-Awesome-Icons-CSS -->
		<!-- //css files -->

		<link rel="stylesheet" href="css/jquery-ui.css" />
		<!-- web-fonts -->
		<link href="http://fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&amp;subset=latin-ext" rel="stylesheet">
		<!-- //web-fonts -->

	</head>

	<body>

		<!--Header-->
		<header>
			<div class="container agile-banner_nav">
				<div class="row header-top">
					<div class="col-md-5 top-left p-0">
						<p><i class="fa fa-phone" aria-hidden="true"></i> 联系我们 : 666666 </p>
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
							<li class="nav-item active">
								<a class="nav-link" href="">主页 <span class="sr-only">(current)</span></a>
							</li>
							<li class="nav-item">
								<a class="nav-link" href="article.aspx">旅游资讯</a>
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

		<!-- banner-text -->
		<div class="slider">
			<div class="callbacks_container">
				<ul class="rslides callbacks callbacks1" id="slider4">
					<li>
						<div class="banner-top">
							<div class="layer">
								<div class="container">
									<div class="banner-info_agile_w3ls">
										<h2>旅行需要一次好的 <span> 计划</span>. </h2>
										<p>假日套餐和特别优惠.</p>
										<a href="#" class="mr-2">了解更多 <i class="fa fa-caret-right" aria-hidden="true"></i></a>
										<a href="#">联系我们 <i class="fa fa-caret-right" aria-hidden="true"></i></a>
									</div>
								</div>
							</div>
						</div>
					</li>
					
					
					
			</div>
			<div class="clearfix"> </div>

		

			<!-- To bottom button-->
			<div class="thim-click-to-bottom">
				<div class="rotate">
					<a href="#booking" class="scroll">
						<i class="fa fa-ellipsis-v"></i>
					</a>
				</div>
			</div>
			<!-- //To bottom button-->
		</div>
		<!--//Slider-->

		

		

		<!-- welcome -->
		<section class="welcome py-5">
			<div class="container py-3">
				<h3 class="heading text-center mb-md-5 mb-4"> 关于我们 </h3>
				<div class="row welcome-grids">
					<div class="col-lg-6">
						<h4 class="mb-3">欢迎来到旅游世界</h4>
						<h3>记住，幸福是一种旅行方式，而不是目的地。</h3>
						<p class="my-4">在旅心，您可以尽情选择最佳、最省、最豪、最近路线.我们为您提供方案，您选择！</p>
						<a href="#">了解更多</a>
					</div>
					<div class="col-lg-6 mt-lg-0 mt-5 welcome-grid3">
						<div class="position">
							<img src="images/banner1.jpg" alt="" class="img-fluid" />
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- //welcome -->

		<!-- /services -->
		<section class="featured_services py-5">
			<div class="container py-3">
				<h3 class="heading text-center mb-5">推介</h3>
				<div class="row agile_inner_info">
					<div class="col-lg-4 col-md-6 w3_agile_services_grid">
						<div class="agile_services_grid">
							<div class="hover06 column">
								<div>
									<figure><img src="images/s1.jpg" alt=" " class="img-responsive"></figure>
								</div>
							</div>
							<div class="agile_services_grid_pos">
								<i class="fa fa-globe" aria-hidden="true"></i>
							</div>
						</div>
						<h4>北川九皇山</h4>
						<p>景区集人文与自然之大成，以古朴的西羌文化为主线，完整地保留、真实地再现了史称南蛮、北狄、东夷、西羌之一的、且如今唯一尚存的古老的西羌文化遗迹与生活习俗，是体验西羌风情、休闲、度假、从事商务、会议、科考及保健、养生的综合性景区。</p>
					</div>
					<div class="col-lg-4 col-md-6 mt-md-0 mt-5 w3_agile_services_grid">
						<div class="agile_services_grid">
							<div class="hover06 column">
								<div>
									<figure><img src="images/s2.jpg" alt=" " class="img-responsive"></figure>
								</div>
							</div>
							<div class="agile_services_grid_pos">
								<i class="fa fa-suitcase" aria-hidden="true"></i>
							</div>
						</div>
						<h4>北川药王谷</h4>
						<p>药王谷位于绵阳市北川羌族自治县与江油市接壤的药王山上，海拔1400～2000米，度假区总面积约10平方公里。药王谷紧靠九环东线（江油—平武），距李白故里江油市23公里，距绵阳市64公里，距成都市166公里。</p>
					</div>
					<div class="col-lg-4 col-md-6 mt-lg-0 mt-5 w3_agile_services_grid">
						<div class="agile_services_grid">
							<div class="hover06 column">
								<div>
									<figure><img src="images/s3.jpg" alt=" " class="img-responsive"></figure>
								</div>
							</div>
							<div class="agile_services_grid_pos">
								<i class="fa fa-bed" aria-hidden="true"></i>
							</div>
						</div>
						<h4>成都西岭雪山</h4>
						<p>西岭雪山，位于四川省成都市大邑县境内，距成都仅95公里，总面积483平方公里，属世界自然遗产、大熊猫栖息地、AAAA级旅游景区、国家重点风景名胜区。因唐代大诗人杜甫的千古绝句“窗含西岭千秋雪，门泊东吴万里船”而得名。景区内有终年积雪的大雪山，海拔5353米，为成都第一峰。</p>
					</div>
					<div class="mx-auto mt-lg-4 mt-5 text-center">
						<a href="#">查看更多</a>
					</div>
				</div>
			</div>
		</section>
		<!-- //services -->

		<!--/middle-->
		<section class="middle-sec-agileinfo-w3ls py-5">
			<div class="container py-3">
				<h3 class="heading text-center mb-5"> 最新的旅游博客 </h3>
				<div class="row inner-sec">
					<div class="col-lg-4 col-md-6 news-left">
						<ul id="demo1_thumbs" class="list-inline">
							<li>
								<a href="images/banner1.jpg">
									<img src="images/b1.jpg" alt="" data-desoslide-caption="<h3></h3>">
									<div class="mid-text-info">
										<h4>user</h4>
										<p class="font-italic">两天前 </p>
									</div>
								</a>
							</li>
							<li>
								<a href="images/banner2.jpg">
									<img src="images/b2.jpg" alt="" data-desoslide-caption="<h3></h3>">
									<div class="mid-text-info">
										<h4>user</h4>
										<p class="font-italic">两天前 </p>
									</div>
								</a>
							</li>
							<li>
								<a href="images/banner5.jpg">
									<img src="images/b5.jpg" alt="" data-desoslide-caption="<h3></h3>">
									<div class="mid-text-info">
										<h4>user</h4>
										<p class="font-italic">两天前 </p>
									</div>
								</a>
							</li>
							<li>
								<a href="images/banner4.jpg">
									<img src="images/b4.jpg" alt="" data-desoslide-caption="<h3>最新的文章 4</h3>">
									<div class="mid-text-info">
										<h4>user</h4>
										<p class="font-italic">两天前 </p>
									</div>
								</a>
							</li>
						</ul>
					</div>
					<div id="demo1_main_image" class="col-lg-8 col-md-6 news-right">
						<h4 class="text-uppercase mb-4">Happy Travelling </h4>
					</div>
					<div class="clearfix"> </div>
				</div>
			</div>

		</section>
		<!--//middle-->

	

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

		
        </form>
	</body>

</html>
   
