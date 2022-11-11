using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class AreaPessoal : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            if (Session["SessaoUtilizador"] != null)
            {
                Label2.Text += Session["SessaoUtilizador"].ToString();
                Label1.Text += Session["SessaoUtilizadorID"].ToString();
            }

            else
            {
                Response.Redirect("LoginUser.aspx");
            }

        }
    }

    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Panel1.Visible = true;
        string LID = Label1.Text;
        DataTable dt = new DataTable();
        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringRegisto"].ToString());
        SqlCommand sqlCmd = new SqlCommand("select * from [Users] where [Id] = @LID", connection);
        sqlCmd.Parameters.Add(new SqlParameter("@LID", LID));
        connection.Open();
        
        SqlDataReader reader = sqlCmd.ExecuteReader();

        try
        {
            if (reader.Read())
            {
                TextBox1.Enabled = false;
                TextBox2.Enabled = false;
                TextBox1.Text = reader["User"].ToString();
                TextBox2.Text = reader["Email"].ToString();
                reader.Close();
                connection.Close();
            }
            else
            {
                Label1.Visible = true;
            }

        }
        catch (Exception ex)
        {
            Response.Write("Erro:" + ex.ToString());
        }
    }

    protected void LinkButton6_Click(object sender, EventArgs e)
    {
        Panel1.Visible = false;
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session["SessaoUtilizador"] = null;
        Response.Redirect("LoginUser.aspx");
    }
}