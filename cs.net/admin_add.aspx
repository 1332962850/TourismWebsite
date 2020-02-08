<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admin_add.aspx.cs" Inherits="Default44" %>

<%@ Register Assembly="CuteEditor" Namespace="CuteEditor" TagPrefix="CE" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<form id="form2" runat="server">
<head runat="server">
    <title>添加文章</title>
</head>
<link rel="stylesheet" type="text/css" href="css/public.css" />



<body id="bg">

<div class="head">
		<div class="headL">
			<h1 class="headLogo1" >旅游网</h1>
		</div>
		<div class="headR">
			<p class="p1">
				<asp:Label ID="Label1" runat="server" Text="管理员"></asp:Label>，您好

                <asp:Button ID="Button3" runat="server" Text="退出" onclick="Button3_Click" />
                    
			</p>
			
		</div>
		
	</div>

	<div class="closeOut">
		<div class="coDiv">
			<p class="p1">
				<span>X</span>
			</p>
			<p class="p2">确定退出当前用户？</p>
			<P class="p3">
				<a class="ok yes" href="#">确定</a><a class="ok no" href="#">取消</a>
			</p>
		</div>
	</div>

	<!-- 左边节点 -->
	<div class="container">

		<div class="leftsidebar_box">
			<a href="##" target="main"><div class="line">
					<img src="img/coin01.png" />&nbsp;&nbsp;管理操作
				</div></a>

			<dl class="system_log">
				<dt>
					<img class="icon1" src="img/coin03.png" /><img class="icon2"
						src="img/coin04.png" /> <a class="cks" href="admin_add.aspx"
						target="main" >添加新闻</a><img class="icon3"
						src="img/update.png" /><img class="icon4"
						src="img/update.png" />
				</dt>
				
			</dl>
			<dl class="system_log">
				<dt>
					<img class="icon1" src="img/coin05.png" /><img class="icon2"
						src="img/coin06.png" /> <a class="cks" href="admin_update.aspx"
						target="main">修改更新新闻</a><img class="icon3"
						src="img/coin19.png" /><img class="icon4"
						src="img/coin20.png" />
				</dt>
				
			</dl>
			<dl class="system_log">
				<dt>
					<img class="icon1" src="img/coin07.png" /><img class="icon2"
						src="img/coin08.png" /><a class="cks" href="admin_delete.aspx"
						target="main"> 删除新闻</a><img class="icon3"
						src="img/coin19.png" /><img class="icon4"
						src="img/coin20.png" />
				</dt>
				
			</dl>
			<dl class="system_log">
				<dt>
					<img class="icon1" src="img/coin10.png" /><img class="icon2"
						src="img/coin09.png" /><a class="cks" href="deletepl.aspx"
						target="main"> 删除用户评论</a><img class="icon3"
						src="img/coin19.png" /><img class="icon4"
						src="img/coin20.png" />
				</dt>
				
			</dl>
			<dl class="system_log">
				<dt>
					<img class="icon1" src="img/coin11.png" /><img class="icon2"
						src="img/coin12.png" /><a class="cks" href="#"
						target="main"> 修改密码</a><img class="icon3"
						src="img/coin19.png" /><img class="icon4"
						src="img/coin20.png" />
				</dt>
				
			</dl>
			<dl class="system_log">
				<dt>
					<img class="icon1" src="img/coin14.png" /><img class="icon2"
						src="img/coin13.png" /> <a class="cks" href="#"
						target="main">返回首页</a><img class="icon3"
						src="img/coin19.png" /><img class="icon4"
						src="img/coin20.png" />
				</dt>
				
			</dl>
			<dl class="system_log">
				<dt>
					<img class="icon1" src="img/coin15.png" /><img class="icon2"
						src="img/coin16.png" /><a class="cks" href="#"
						target="main"> 退出登陆</a><img class="icon3"
						src="img/coin19.png" /><img class="icon4"
						src="img/coin20.png" />
				</dt>
				
			</dl>
			
				
				  

		</div>

  
	</div>
    <div  class="aaaa">

       

 <div class="insert">	
 <span>文件名：</span> 
 <asp:TextBox  id="w" runat="server">
 </asp:TextBox>
 
 </div>
     <div class="insert">
	<span>发布者：</span>
    
 <asp:TextBox  id="f" runat="server">
 </asp:TextBox>
 </div>
 <div class="insert">文件内容：</div>
 <CE:Editor ID="Editor1" runat="server">
    
</CE:Editor>
           <asp:Button ID="Button1" runat="server" class="updateBtn" Text="插入" 
           onclick="Button1_Click" onclientclick="return confirm('确认要添加该新闻吗?')" />
       <asp:Button ID="Button2" runat="server" Text="清空" class="updateBtn" onclick="Button2_Click" />

 </div>


     </div>
</body>
</form>

</html>

