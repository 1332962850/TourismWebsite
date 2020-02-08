using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] == null)
            LinkButton3.Visible = false;
        else
        {
            LinkButton3.Visible = true;
            LinkButton1.Visible = false;
            LinkButton2.Visible = false;
            Label1.Text = "欢迎您" + Session["username"];
        }


    }
    protected void dl1(object sender, EventArgs e)
    {
        Response.Redirect("~/login.aspx");

    }
    protected void dl(object sender, EventArgs e)
    {
        Response.Redirect("~/register.aspx");
    }
    protected void dl3(object sender, EventArgs e)
    {
        Session.Abandon();//注销会话期

        Label1.Text = "";
        LinkButton3.Visible = false;
        LinkButton1.Visible = true;
        LinkButton2.Visible = true;
    }
}