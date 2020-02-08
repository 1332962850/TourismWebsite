<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admin_update.aspx.cs" Inherits="Default6" %>

<%@ Register assembly="CuteEditor" namespace="CuteEditor" tagprefix="CE" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>更新文章</title>
</head>
<link rel="stylesheet" type="text/css" href="css/public.css" />



<body id="bg">

    <form id="form1" runat="server">

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
		<!-- onclick="{if(confirm(&quot;确定退出吗&quot;)){return true;}return false;}" -->
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
						target="main">添加新闻</a><img class="icon3"
						src="img/coin19.png" /><img class="icon4"
						src="img/coin20.png" />
				</dt>
				
			</dl>
			<dl class="system_log">
				<dt>
					<img class="icon1" src="img/coin05.png" /><img class="icon2"
						src="img/coin06.png" /> <a class="cks" href="admin_update.aspx"
						target="main">修改更新新闻</a><img class="icon3"
						src="img/update.png" /><img class="icon4"
						src="img/update.png" />
				
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

 
      
      <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
          ConnectionString="<%$ ConnectionStrings:northwindsqlConnectionString %>" 
          DeleteCommand="DELETE FROM [lyxw] WHERE [fileid] = @original_fileid AND [biaoti] = @original_biaoti AND [reqi] = @original_reqi AND [neiron] = @original_neiron AND [zuozhe] = @original_zuozhe" 
          InsertCommand="INSERT INTO [lyxw] ([biaoti], [reqi], [neiron], [zuozhe]) VALUES (@biaoti, @reqi, @neiron, @zuozhe)" 
          OldValuesParameterFormatString="original_{0}" 
          SelectCommand="SELECT * FROM [lyxw] ORDER BY [reqi] DESC" 
          UpdateCommand="UPDATE [lyxw] SET [biaoti] = @biaoti, [neiron] = @neiron, [zuozhe] = @zuozhe WHERE [fileid] = @original_fileid ">
          <DeleteParameters>
              <asp:Parameter Name="original_fileid" Type="Int32" />
              <asp:Parameter Name="original_biaoti" Type="String" />
              <asp:Parameter DbType="DateTime2" Name="original_reqi" />
              <asp:Parameter Name="original_neiron" Type="String" />
              <asp:Parameter Name="original_zuozhe" Type="String" />
          </DeleteParameters>
          <InsertParameters>
              <asp:Parameter Name="biaoti" Type="String" />
              <asp:Parameter DbType="DateTime2" Name="reqi" />
              <asp:Parameter Name="neiron" Type="String" />
              <asp:Parameter Name="zuozhe" Type="String" />
          </InsertParameters>
          <UpdateParameters>
              <asp:Parameter Name="biaoti" Type="String" />
              <asp:Parameter DbType="DateTime2" Name="reqi" />
              <asp:Parameter Name="neiron" Type="String" />
              <asp:Parameter Name="zuozhe" Type="String" />
              <asp:Parameter Name="original_fileid" Type="Int32" />
              <asp:Parameter Name="original_biaoti" Type="String" />
              <asp:Parameter DbType="DateTime2" Name="original_reqi" />
              <asp:Parameter Name="original_neiron" Type="String" />
              <asp:Parameter Name="original_zuozhe" Type="String" />
          </UpdateParameters>
      </asp:SqlDataSource>
      <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
          DataKeyNames="fileid" DataSourceID="SqlDataSource1" GridLines="Horizontal" 
          ShowHeader="False">
          <Columns>
              <asp:TemplateField HeaderText="biaoti" SortExpression="biaoti">
                  <ItemTemplate>
                      <asp:HyperLink ID="HyperLink2" runat="server" 
                          NavigateUrl='<%# "~/article_detail.aspx?fileid="+Eval("fileid") %>' 
                          Text='<%# Bind("biaoti", "{0}") %>'></asp:HyperLink>
                  </ItemTemplate>
                  <EditItemTemplate>
                  <div class="insert"><span>新闻标题：</span><asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("biaoti") %>'></asp:TextBox></div>
                  <div class="insert"><span>新闻作者：</span><asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("zuozhe") %>'></asp:TextBox></div>
                  <div class="insert"><span>新闻内容：</span><CE:Editor ID="Editor1" runat="server" FilesPath="" Height="500px" 
                          ondatabinding="Editor1_DataBinding" Text='<%# Bind("neiron") %>' 
                          URLType="Default" Width="550px">
                      </CE:Editor></div>
                      

                     

                      
                  </EditItemTemplate>
                  <ItemStyle Height="25px" Width="450px" />
              </asp:TemplateField>
              
             
              
              <asp:TemplateField ShowHeader="False">
                  <ItemTemplate>
                      <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" 
                          CommandName="Edit" Text="编辑" CssClass="updateBtn"></asp:LinkButton>
                  </ItemTemplate>
                  <EditItemTemplate>
                      <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" 
                          CommandName="Update" Text="更新" CssClass="updateBtn" 
                          onclientclick="return confirm('确认要更新该文章吗?')"></asp:LinkButton>
                      &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" 
                          CommandName="Cancel" Text="取消" CssClass="updateBtn"></asp:LinkButton>
                  </EditItemTemplate>
              </asp:TemplateField>
          </Columns>
      </asp:GridView>


      
  </div>

    </form>

  </body>
</html>
