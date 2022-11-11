using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class RegistarUser : System.Web.UI.Page
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
            //sds.SelectParameters.Add("Password", TypeCode.String, TextBox2.Text);
            sds.SelectCommand = "Select * from [Users] where [User] = @Utilizador and [Password] = @Password COLLATE SQL_latin1_General_CP1_CS_AS";
            DataView dv = (DataView)sds.Select(DataSourceSelectArguments.Empty);
            if (dv.Count != 0)

                Response.Write("Utilizador já existe!");
        }
        catch
        {
            try
            {
                SqlConnection conn = new
                    SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringRegisto"].ConnectionString);
                conn.Open();
                string insertquery = "insert into [Users]([User], Email, Password) values(@User, @Email, @Password)";
                SqlCommand con = new SqlCommand(insertquery, conn);
                con.Parameters.AddWithValue("@User", TextBox1.Text);
                con.Parameters.AddWithValue("@Email", TextBox2.Text);
                con.Parameters.AddWithValue("@Password", TextBox3.Text);
                con.ExecuteNonQuery();
                
                Response.Write("Sucesso!");
                conn.Close();
            }

            catch (Exception ex)
            {
                Response.Write("Erro:" + ex.ToString());
            }

        }
    }
}