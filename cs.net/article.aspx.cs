using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Default2 : System.Web.UI.Page
{
    public static string connectionstring = ConfigurationManager.ConnectionStrings["northwindsqlConnectionString"].ConnectionString;
    SqlConnection conn = new SqlConnection(connectionstring);

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        { Panel11.Visible = false; }
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
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void txtsearch_TextChanged(object sender, EventArgs e)
    {

    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button5_Click(object sender, EventArgs e)
    {


    }

    protected void txtsearch_TextChanged1(object sender, EventArgs e)
    {

    }
    protected void btnsearch_Click(object sender, EventArgs e)
    {
        try
        {
            Panel11.Visible = true;
            conn.Open();


            if (txtsearch.Text == "")
            { Response.Write("<script>alert('请输入要搜索的内容')</script>"); }
            else
            {
                //if (dropsearch.SelectedValue == "按标题搜索")
                //{
                //    string str = "select * from files where filename like '%" + txtsearch.Text + "%'";
                //    SqlCommand cmd = new SqlCommand(str, conn);
                //    SqlDataReader dr = cmd.ExecuteReader();
                //    DataList1.DataSource = dr;
                //    DataList1.DataBind();
                //    lblsearch.Text = "共有：" + DataList1.Items.Count + "条记录。";
                //}
                ////用dataset存储结果
                if (dropsearch.SelectedValue == "按标题搜索")
                {
                    string str = "select * from lyxw where biaoti like '%" + txtsearch.Text + "%'";

                    SqlDataAdapter da = new SqlDataAdapter(str, conn);
                    DataSet filedataset = new DataSet();//区别于sqldatareader对象，dataset对象需要实例化
                    da.Fill(filedataset);//执行数据库操作，并存储结果到数据集对象中
                    DataList1.DataSource = filedataset.Tables[0];

                    DataList1.DataBind();
                    lblsearch.Text = "共有  " + DataList1.Items.Count + "    条记录 : ";
                }

                if (dropsearch.SelectedValue == "按内容搜索")
                {
                    string str = "select * from lyxw where neiron like '%" + txtsearch.Text + "%'";
                    SqlCommand cmd = new SqlCommand(str, conn);
                    SqlDataReader dre = cmd.ExecuteReader();
                    DataList1.DataSource = dre;
                    DataList1.DataBind();
                    lblsearch.Text = "共有  " + DataList1.Items.Count + "    条记录 : ";
                }
                if (dropsearch.SelectedValue == "按发布者搜索")
                {
                    string str = "select * from lyxw where zuozhe like '%" + txtsearch.Text + "%'";
                    SqlCommand cmd = new SqlCommand(str, conn);
                    SqlDataReader dra = cmd.ExecuteReader();
                    DataList1.DataSource = dra;
                    DataList1.DataBind();
                    lblsearch.Text = "共有  " + DataList1.Items.Count + "    条记录 : ";
                }
            }

        }

        catch
        {
            Response.Write("<script>alert('失败')</script>");
        }
        finally
        {
            conn.Close();
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