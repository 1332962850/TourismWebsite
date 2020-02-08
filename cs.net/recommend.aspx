<%@ Page Language="C#" AutoEventWireup="true" CodeFile="recommend.aspx.cs" Inherits="recommend" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
  <script type="application/x-javascript">
			addEventListener("load", function() {
				setTimeout(hideURLbar, 0);
			}, false);

			function hideURLbar() {
				window.scrollTo(0, 1);
			}
		</script>
	

      
<head runat="server">
    <title></title>  
        <link rel="stylesheet" href="css/core.css"/>
        <link rel="stylesheet" href="css/index.css"/>
		<link rel="stylesheet" href="css/bootstrap.css">
        <link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
		<link rel="stylesheet" href="css/font-awesome.css">
 </head>
<body>
    <form id="form1" runat="server">
    <div>
  
	


	

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

					<h1><a class="navbar-brand" href="#">旅游网</a></h1>
					<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
			</button>

					<div class="collapse navbar-collapse justify-content-center" id="navbarSupportedContent">
						<ul class="navbar-nav ml-auto">
							<li class="nav-item ">
								<a class="nav-link" href="pageHome.aspx">主页 </a>
							</li>
							<li class="nav-item">
								<a class="nav-link" href="article.aspx">旅游资讯</a>
							</li>
							<li class="nav-item  active">
								<a class="nav-link" href="recommend.aspx">旅游推荐<span class="sr-only">(current)</span></a>
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


        	<div class="welcome py-5">
            <div class="main">
            <div class="main1"> 
    <!-- banner head 切换条 -->
    <div class="main1_top">
      <li class="active">畅销单品</li>
    </div>
    <!--特惠产品展示-->
    <div class="main1_m template0 clearfix "> 
    	<a class="li" title="" href="#"  >
      <div class="development">立省2801积分</div>
      <img src="img/ATT0000504833.jpg"/>
      <div class="padd10">
        <p>＜优品西葡１２日＞全程当地四星酒店，马德里皇宫，阿尔罕布拉宫，圣家族大教堂，龙达，瓦伦西亚，古城托莱多</p>
        <b>8999<em>元</em></b> <span>立即抢购</span> </div>
      </a> 
      <a class="li" title="" href="#"  > <img src="img/ATT0000511432.jpg">
      <div class="padd10">
        <p>＜【美国东西海岸暑期特辑】北美生活体验　双乐园大瀑布　访名校博物馆１２晚１４日＞哈佛大学，自由女神，大都会博物馆，华盛顿国会山，尼亚加拉大瀑布拉斯维加大道酒店，洛杉矶迪士尼乐园</p>
        <b>22800<em>元</em></b> <span>立即抢购</span> </div>
      </a> 
      <a class="li" title="" href="#"  > <img src="img/ATT0000511433.jpg">
      <div class="padd10">
        <p>＜塞班自由行５晚７日＞北纬１５度的璀璨海岛，刺激快意的环岛自驾，浓墨重彩的历史遗迹，饕餮盛宴尽在塞班</p>
        <b>6480<em>元</em></b> <span>立即抢购</span> </div>
      </a> 
      <a class="li" title="" href="#"  > <img src="img/ATT0000511434.jpg">
      <div class="padd10">
        <p>＜金牌（一价全含）俄罗斯全景贝加尔湖金环谢镇９晚１０日＞克里姆林宫，涅瓦河游船，叶卡捷琳娜花园及宫殿，莫斯科大学，冬宫，夏宫，金环谢尔盖耶夫镇，贝加尔湖</p>
        <b>20800<em></em></b> <span>立即抢购</span> </div>
      </a> 
      <a class="img1"  > <img src="img/ATT0000469657.jpg"> </a>
      <div class="clear"></div>
    </div>
  </div>
  <div class="clear"></div>
  <div class="main2">
    <div class="main2_top">
      
      <!--产品楼层子导航-->
      <div class="main2_top_nav">
        <div class="main2_top_li active" style="color: rgb(229, 0, 79); border-color: rgb(229, 0, 79);">日本航线</div>
        <div class="main2_top_li " style="color: rgb(102, 102, 102); border-color: rgb(243, 243, 243);">东南亚航线</div>
        <div class="main2_top_li "  style="color: rgb(102, 102, 102); border-color: rgb(243, 243, 243);">欧洲航线</div>
      </div>
      <b>出境邮轮</b><span>你的海上假期</span> </div>
    <div class="main2_m template1"> 
    <a   class="main2_m_left" style"background:url(https://img7.uzaicdn.com/uz/navigation/productFloor/ATT0000495360.jpg) no-repeat center bottom"> </a>
      <div class="main2_m_right">
        <div class="main2_m_right_list clearfix "> <a class="li" title="" href="#"  > <img src="img/ATT0000488709.jpg">
          <p> &lt;皇家加勒比海洋赞礼号邮轮日本福冈下关7晚8日&gt;皇家赞礼邮轮，天津港往返，海上合家欢，玩转日本 </p>
          <div class="price">5299<em>元</em></div>
          <div class="departure">北京出发</div>
          </a> <a class="li" title="" href="#"  > <img src="img/ATT0000488711.jpg">
          <p> &lt;皇家加勒比海洋赞礼号邮轮日本福冈长崎5晚6日&gt;皇家赞礼邮轮，天津港往返，海上合家欢，玩转日本 </p>
          <div class="price">4199<em>元</em></div>
          <div class="departure">天津出发</div>
          </a> <a class="li" title="" href="#"  > <img src="img/ATT0000488712.jpg">
          <p> &lt;诺唯真喜悦号邮轮日本长崎福冈5晚6日&gt;喜悦号海上头等舱，尊贵的住宿体验，海上饕餮美食之旅，超大购物空间 </p>
          <div class="price">3799<em>元</em></div>
          <div class="departure">天津出发</div>
          </a> <a class="li" title="" href="#"  > <img src="img/ATT0000488713.jpg">
          <p> &lt;诺唯真喜悦号邮轮日本熊本4晚5日&gt;喜悦号海上头等舱，尊贵的住宿体验，海上饕餮美食之旅，超大购物空间 </p>
          <div class="price">3999<em>元</em></div>
          <div class="departure">天津出发</div>
          </a> <a class="li" title="" href="#"  > <img src="img/ATT0000488715.jpg">
          <p> &lt;歌诗达幸运号邮轮日本长崎福冈5晚6日&gt;天津港往返，意式风情，海上博物馆，玩转日本 </p>
          <div class="price">4999<em>元</em></div>
          <div class="departure">天津出发</div>
          </a> <a class="li" title="" href="#"  > <img src="img/ATT0000501483.jpg">
          <p> &lt;歌诗达幸运号邮轮日本长崎下关5晚6日&gt;天津港往返，意式风情，海上博物馆，玩转日本 </p>
          <div class="price">4999<em>元</em></div>
          <div class="departure">天津出发</div>
          </a>
          <div class="clear"></div>
        </div>
       
      </div>
    </div>
  </div>
  <div class="clear"></div>
        </div>
        </div>
        
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
	

		
    </div>
    </form>
</body>
</html>

