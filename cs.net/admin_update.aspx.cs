using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class Default6 : System.Web.UI.Page
{

   
    protected void Page_Load(object sender, EventArgs e)
    { 

    }

    protected void Editor1_DataBinding(object sender, EventArgs e)
    {

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Session.Abandon();//注销会话期 
        Response.Redirect("~/pageHome.aspx");
    }
}