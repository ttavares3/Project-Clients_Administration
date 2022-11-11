using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class ListaClientes : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Panel1.Visible = false;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringRegisto"].ConnectionString);
            conn.Open();
            string insertquery = "insert into Clientes (Nome, Morada) values(@nome, @morada)";
            SqlCommand con = new SqlCommand(insertquery, conn);
            con.Parameters.AddWithValue("@nome", TextBox1.Text);
            con.Parameters.AddWithValue("@morada", TextBox2.Text);

            con.ExecuteNonQuery();

            Response.Write("Sucesso!");
            conn.Close();
        }

        catch (Exception ex)
        {
            Response.Write("Erro:" + ex.ToString());
        }

    }

    protected void LinkButton6_Click(object sender, EventArgs e)
    {
        Panel1.Visible = true;
    }

    protected void LinkButton7_Click(object sender, EventArgs e)
    {
        Panel1.Visible = false;
    }
}