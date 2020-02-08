﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class admin : System.Web.UI.Page
{  //第二步，获取配置连接信息
    public static string connectionstring = ConfigurationManager.ConnectionStrings["northwindsqlConnectionString"].ConnectionString;
    //第三步,建立连接对象，将配置信息作为连接对象的参数
    SqlConnection conn = new SqlConnection(connectionstring);
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
    {

    }
    protected void btnlogin_Click(object sender, EventArgs e)
    {
        try
        {
            //第四步，写对数据库的操作语句


            string str = "select * from admin where adminname='" + txtusername.Text + "' and password='" + txtpassword.Text + "'";

            //第五步，打开数据库连接；
            conn.Open();
            //第六步，建立一个对数据库的操作的执行对象命令
            SqlCommand cmd = new SqlCommand(str, conn);

            //第七步，执行对数据库的操作，并将对数据库操作的结果保存起来
            SqlDataReader reader = cmd.ExecuteReader();

            //第八步，对结果进行判断并处理

            if (reader.HasRows)
            {
                Session["username"] = txtusername.Text;
                Response.Write("<script>alert('登录成功!')</script>");
                Response.Redirect("~/admin_add.aspx");
            }
            else
                Response.Write("<script>alert('用户名或密码错误，登录不成功')</script>");

            reader.Close();
        }
        catch
        {
            Response.Write("<script>alert('用户名或密码错误，登录失败')</script>");
        }
        //第九步，关闭数据集，关闭连接

        finally
        {
            conn.Close();
        }
    }
    protected void btncancle_Click(object sender, EventArgs e)
    {
        txtusername.Text = "";
        txtpassword.Text = "";
    }
}