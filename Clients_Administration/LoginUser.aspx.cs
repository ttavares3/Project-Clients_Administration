using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class LoginUser : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            SqlDataSource sds = new SqlDataSource();
            sds.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionStringRegisto"].ToString();
            sds.SelectParameters.Add("Utilizador", TypeCode.String, TextBox1.Text);
            sds.SelectParameters.Add("Password", TypeCode.String, TextBox2.Text);
            sds.SelectCommand = "Select * from [Users] where [User] = @Utilizador COLLATE SQL_latin1_General_CP1_CS_AS and [Password] = @Password COLLATE SQL_latin1_General_CP1_CS_AS and [Active] = 'S'";
            DataView dv = (DataView)sds.Select(DataSourceSelectArguments.Empty);

            //novas variaveis
            string uti1 = TextBox1.Text;
            string password1 = TextBox2.Text;

            DataTable dt = new DataTable();
            SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringRegisto"].ToString());
            SqlCommand sqlCmd = new SqlCommand("Select * from [Users] where [User] = @utilizador1 COLLATE SQL_Latin1_General_CP1_CS_AS AND [Password] = @password1 COLLATE SQL_Latin1_General_CP1_CS_AS", connection);
            sqlCmd.Parameters.Add(new SqlParameter("@utilizador1", uti1));
            sqlCmd.Parameters.Add(new SqlParameter("@password1", password1));
            connection.Open();
            SqlDataAdapter sqlDa = new SqlDataAdapter(sqlCmd);
            sqlDa.Fill(dt);

            try
            {
                if (dv.Count == 0)
                {
                    Response.Write("Utilizador ou Password Errados!");
                    TextBox1.Text = "";
                    TextBox2.Text = "";
                }
                else
                {
                    connection.Close();
                   
                    Session["SessaoUtilizador"] = TextBox1.Text;
                    Session["SessaoUtilizadorID"] = dt.Rows[0]["Id"].ToString();
                    
                    Response.Redirect("AreaPessoal.aspx");
                }
            }
            catch (Exception ex)
            {
                Response.Write("Erro:" + ex.ToString());
            }

        }
        catch (Exception ex)
        {
            Response.Write("Erro:" + ex.ToString());
        }
    }
}