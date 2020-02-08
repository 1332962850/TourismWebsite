using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class Default44 : System.Web.UI.Page
{  
        public static string connectionstring = ConfigurationManager.ConnectionStrings["northwindsqlConnectionString"].ConnectionString;
    SqlConnection con = new SqlConnection(connectionstring);
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
           try
        {
           
            con.Open();



            string str = "insert into lyxw(biaoti,zuozhe,neiron,reqi) values('" + w.Text + "','" + f.Text + "','" + Editor1.Text + "','" + System.DateTime.Now + "')";
            SqlCommand cmd = new SqlCommand(str, con);
            cmd.ExecuteNonQuery();


            this.Response.Write("<script>alert('插入成功!')</script>");
           
            
        }
        catch
        {
            this.Response.Write("<script>alert('插入不成功!')</script>");
        }
        finally {

            con.Close();
        }
   
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        w.Text = "";
        f.Text = "";
        Editor1.Text = "";
    }
    protected void LoginView1_ViewChanged(object sender, EventArgs e)
    {

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Session.Abandon();//注销会话期 
        Response.Redirect("~/pageHome.aspx");
    }
}
