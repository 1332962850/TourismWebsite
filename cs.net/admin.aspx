<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admin.aspx.cs" Inherits="admin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>后台登陆</title><link href="css/StyleSheet.css" rel="Stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <div class="bgreg">
       <div class="line">
          <div class="linefont">用户名: </div>
          <div class="linetxtbox"><asp:TextBox ID="txtusername" runat="server" Width="120px"></asp:TextBox> </div>
       </div>
    <div class="line">
        <div class="linefont">密 码:</div>
         <div class="linetxtbox"> <asp:TextBox ID="txtpassword" runat="server" Width="120px" 
                 TextMode="Password"></asp:TextBox> </div>
    </div>
    <div class="linebtn">
          <asp:Button ID="btnlogin" runat="server" onclick="btnlogin_Click" Text="登录" 
                        CssClass="btn" Height="28px" Width="60px" />
           <asp:Button ID="btncancle" runat="server" Text="取消" CssClass="btn" 
            Height="28px" onclick="btncancle_Click" Width="60px" />
    </div>


    
    </div>
    </div>
    </form>
</body>
</html>
