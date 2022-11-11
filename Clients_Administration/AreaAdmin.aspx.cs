using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class AreaAdmin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            if (Session["SessaoAdministrador"] != null)
            {
                Label1.Text += Session["SessaoAdministrador"].ToString();
                Label3.Text += Session["SessaoAdministradorID"].ToString();
            }
            else
            {
                Response.Redirect("LoginAdmin.aspx");
            }

            LinkButton4.Attributes["Onclick"] = "return confirm('Quer mesmo Actualizar os Dados?')";
        }
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session["SessaoAdministrador"] = null;
        Response.Redirect("LoginAdmin.aspx");
    }

    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Panel1.Visible = true;
        string LID = Label3.Text;
        DataTable dt = new DataTable();
        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringRegisto"].ToString());
        SqlCommand sqlCmd = new SqlCommand("select * from [Users] where [Id] = @LID", connection);
        sqlCmd.Parameters.Add(new SqlParameter("@LID", LID));
        connection.Open();
        //SqlDataReader reader = sqlCmd.ExecuteReader();
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
                Label3.Visible = true;
                Label3.Text = "Foi impossivel carregar os seus dados";
            }

        }
        catch (Exception ex)
        {
            Response.Write("Erro:" + ex.ToString());
        }
    }

    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        TextBox1.Enabled = true;
        TextBox2.Enabled = true;
        LinkButton3.Enabled = true;
        LinkButton3.Visible = true;
    }

    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        try
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringRegisto"].ConnectionString);
            conn.Open();
            string insertquery = "Update [Users] SET [User] = @utilizador, Email = @Email where Id = @Id";
            SqlCommand con = new SqlCommand(insertquery, conn);
            con.Parameters.AddWithValue("@utilizador", TextBox1.Text);
            con.Parameters.AddWithValue("@Email", TextBox2.Text);
            con.Parameters.AddWithValue("@Id", Label3.Text);
            con.ExecuteNonQuery();
            conn.Close();
        }
        catch (Exception ex)
        {
            Response.Write("Erro:" + ex.ToString());
        }
    }

    protected void LinkButton5_Click(object sender, EventArgs e)
    {
        Panel1.Visible = false;
        LinkButton3.Enabled = false;
        LinkButton4.Enabled = false;
    }

    protected void LinkButton6_Click(object sender, EventArgs e)
    {
        Response.Redirect("VerUtilizadores.aspx");
    }
}