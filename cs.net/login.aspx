<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="dl2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>登陆页面</title> 
     <link href="css/StyleSheet.css" rel="Stylesheet" type="text/css" />
     <link rel="stylesheet" href="css/core.css"/>
     <link rel="stylesheet" type="text/css" href="css/user.css"/>
</head>
<body>
  <form id="form1" runat="server">
  <div class="top">
  </div>
    <div class="main">
        <div class="main_logo">
            <div class="main_logo_top">
                <div class="li active blue">普通登录</div>
            </div>
                <div class="main_logo_m">
                    <div class="main_logo_input">
                        <div class="ul">
                             <div class="main_logo_input_1">
                               <i class="iconfont icon-zhanghao"></i>
                               
                                <asp:TextBox ID="txtusername" runat="server" Width="120px" placeholder="请输入登录名"></asp:TextBox>
                            </div>

                            <div class="main_logo_input_1">
                                <i class="iconfont icon-mima"></i>
                             <asp:TextBox ID="txtpassword" runat="server" Width="120px" placeholder="请输入密码"></asp:TextBox>
                                
                            </div>
                            
                            <div class="forget">
                                <a href="##">忘记密码?</a>
                                <div class="clear"></div>
                            </div>
                            <asp:Button ID="btncancle" runat="server" Text="登 录" class="login" Height="28px" 
            Width="60px" onclick="btnlogin_Click"  />
                       
                            <p class="login_tips"><span id="tip"></span></p>
                        </div>
                        
                    </div>
                    <div class="main_logo_r">
                        <p>没有账号 ?</p>
                        <a href="register.aspx" class="register">立即注册-&gt;</a>
                    </div>
                    <n style="clear:both;display:block;width:100%;"></n>
                </div>
        </div>
    </div>

    </form>
</body>
</html>
