<%@ Page Language="C#" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="dl" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>注册页面</title>
        <link href="css/StyleSheet.css" rel="Stylesheet" type="text/css" />
        <link rel="stylesheet" href="css/core.css">
          <link rel="stylesheet" type="text/css" href="css/user.css">
     
  
</head>
<body>
    <form id="form1" runat="server">
  <div class="top">
        
      
    </div>
    <div class="main">
        <div class="main_logo">
            <div class="main_logo_top">
                <div class="li active blue">注册账号</div>
            </div>
                <div class="main_logo_m">
                    <div class="main_logo_input">
                        <div class="ul">
                        <div class="main_logo_input_1">
                                <i class="iconfont icon-zhanghao"></i>
                               <asp:TextBox ID="txtusername" runat="server" Width="120px"  placeholder="请输入用户名"></asp:TextBox>
                            </div>
                            <div class="main_logo_input_1">
                                <i class="iconfont icon-zhanghao"></i>
                               <asp:TextBox ID="txtpassword" runat="server" Width="120px"  placeholder="请输入密码"></asp:TextBox>
                            </div>
                        
                            <div class="main_logo_input_1">
                                <i class="iconfont icon-mima"></i>
                               <asp:TextBox ID="txtrepassword" runat="server" Width="120px"  placeholder="请再次输入密码"></asp:TextBox>
                            </div>

                          
                               
                             <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
                RepeatDirection="Horizontal" Width="100px">
                <asp:ListItem Selected="True">男</asp:ListItem>
                <asp:ListItem>女</asp:ListItem>
            </asp:RadioButtonList>
                           
                         <div class="main_logo_input_1">
                                <i class="iconfont icon-zhanghao"></i>
                              <asp:TextBox ID="txtemail" runat="server" Width="120px"  placeholder="请输入邮箱名"></asp:TextBox>
                            </div>
                            <div class="main_logo_input_1">
                                <i class="iconfont icon-zhanghao"></i>
                             <asp:TextBox ID="txtphone" runat="server" Width="120px"  placeholder="请输入手机号"></asp:TextBox>
                            </div>
                               <asp:Button ID="btncancle" runat="server" Text="注 册" class="login" Height="28px" 
            Width="60px" onclick="btnregister_Click"  />
                            <p class="login_tips"><span id="tip"></span></p>
                        </div>
                        
                    </div>
                    <div class="main_logo_r main_logo_r-ss">
                        <p>有账号 ?</p>
                        <a href="login.aspx" class="register">立即登录-&gt;</a>
                    </div>
                    <n style="clear:both;display:block;width:100%;"></n>
                </div>
        </div>
    </div>
 
    
  
    </form>
</body>
</html>
