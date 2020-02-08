<%@ Page Language="C#" AutoEventWireup="true" CodeFile="deletepl.aspx.cs" Inherits="deletepl" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>删除评论</title>
</head>
<form id="form2" runat="server">
    
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
						src="img/coin19.png" /><img class="icon4"
						src="img/coin20.png" />
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
						target="main"> 删除文件</a><img class="icon3"
						src="img/coin19.png" /><img class="icon4"
						src="img/coin20.png" />
				</dt>
				
			</dl>
			<dl class="system_log">
				<dt>
					<img class="icon1" src="img/coin10.png" /><img class="icon2"
						src="img/coin09.png" /><a class="cks" href="#"
						target="main"> 删除用户评论</a><img class="icon3"
						src="img/update.png" /><img class="icon4"
						src="img/update.png" />
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

         <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
             ConflictDetection="CompareAllValues" 
             ConnectionString="<%$ ConnectionStrings:northwindsqlConnectionString %>" 
             DeleteCommand="DELETE FROM [pinglun] WHERE [pinglunud] = @original_pinglunud AND [fileid] = @original_fileid AND (([comment] = @original_comment) OR ([comment] IS NULL AND @original_comment IS NULL)) AND (([createdate] = @original_createdate) OR ([createdate] IS NULL AND @original_createdate IS NULL)) AND (([username] = @original_username) OR ([username] IS NULL AND @original_username IS NULL))" 
             InsertCommand="INSERT INTO [pinglun] ([fileid], [comment], [createdate], [username]) VALUES (@fileid, @comment, @createdate, @username)" 
             OldValuesParameterFormatString="original_{0}" 
             SelectCommand="SELECT * FROM [pinglun] ORDER BY [createdate] DESC" 
             UpdateCommand="UPDATE [pinglun] SET [fileid] = @fileid, [comment] = @comment, [createdate] = @createdate, [username] = @username WHERE [pinglunud] = @original_pinglunud AND [fileid] = @original_fileid AND (([comment] = @original_comment) OR ([comment] IS NULL AND @original_comment IS NULL)) AND (([createdate] = @original_createdate) OR ([createdate] IS NULL AND @original_createdate IS NULL)) AND (([username] = @original_username) OR ([username] IS NULL AND @original_username IS NULL))">
             <DeleteParameters>
                 <asp:Parameter Name="original_pinglunud" Type="Int32" />
                 <asp:Parameter Name="original_fileid" Type="Int32" />
                 <asp:Parameter Name="original_comment" Type="String" />
                 <asp:Parameter Name="original_createdate" Type="DateTime" />
                 <asp:Parameter Name="original_username" Type="String" />
             </DeleteParameters>
             <InsertParameters>
                 <asp:Parameter Name="fileid" Type="Int32" />
                 <asp:Parameter Name="comment" Type="String" />
                 <asp:Parameter Name="createdate" Type="DateTime" />
                 <asp:Parameter Name="username" Type="String" />
             </InsertParameters>
             <UpdateParameters>
                 <asp:Parameter Name="fileid" Type="Int32" />
                 <asp:Parameter Name="comment" Type="String" />
                 <asp:Parameter Name="createdate" Type="DateTime" />
                 <asp:Parameter Name="username" Type="String" />
                 <asp:Parameter Name="original_pinglunud" Type="Int32" />
                 <asp:Parameter Name="original_fileid" Type="Int32" />
                 <asp:Parameter Name="original_comment" Type="String" />
                 <asp:Parameter Name="original_createdate" Type="DateTime" />
                 <asp:Parameter Name="original_username" Type="String" />
             </UpdateParameters>
         </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
             DataKeyNames="pinglunud" DataSourceID="SqlDataSource1" GridLines="Horizontal">
            <Columns>
                <asp:BoundField DataField="fileid" HeaderText="文章ID" SortExpression="fileid">
                <ItemStyle Height="40px" Width="80px" />
                </asp:BoundField>
                <asp:BoundField DataField="username" HeaderText="评论用户" 
                    SortExpression="username">
                <ItemStyle Width="100px" />
                </asp:BoundField>
                <asp:BoundField DataField="comment" HeaderText="评论内容" SortExpression="comment">
                <ItemStyle Width="200px" />
                </asp:BoundField>
                <asp:BoundField DataField="createdate" HeaderText="评论时间" 
                    SortExpression="createdate">
                <ItemStyle Width="190px" />
                </asp:BoundField>
                <asp:TemplateField ShowHeader="False">
                    <ItemTemplate>
                       
                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" 
                          CommandName="Delete" CssClass="updateBtn" 
                          onclientclick="return confirm('确认要删除该条评论吗?')" Text="删除"></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
                
            </Columns>
        </asp:GridView>

       
 <div class="insert">	
 1730101软件一班蔡创艺
 </div>
      </div>


    
</body>
</form>

</html>

