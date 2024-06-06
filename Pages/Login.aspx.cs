using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Npgsql;
namespace BMOnlineTest.Pages
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            PassValidation.Visible = false;
        }

        protected void Submit_Click(object sender, EventArgs e)
        {
          
            // Response.Redirect("ExamPage.aspx");
        }
        private void ValidateUser(string username, string password)
        {
            string connectionString = "Host=localhost:2022;Username=postgres;Password=postgres;Database=postgres";
            string query = "SELECT idnumber, name FROM RegistrationTbl WHERE username = @Username AND password = @Password";

            using (NpgsqlConnection sqlcon = new NpgsqlConnection(connectionString))
            {
                sqlcon.Open();

                using (NpgsqlCommand sqlcmd = new NpgsqlCommand(query, sqlcon))
                {
                    sqlcmd.Parameters.AddWithValue("@Username", username);
                    sqlcmd.Parameters.AddWithValue("@Password", password);

                    NpgsqlDataReader reader = sqlcmd.ExecuteReader();
                    if (reader.Read())
                    {
                        // User is validated, retrieve and store the ID number and name in session
                        string idNumber = reader["idnumber"].ToString();
                        string name = reader["name"].ToString();

                        Session["IdNumber"] = idNumber;
                        Session["Name"] = name;

                        // Redirect to ResultsPage.aspx
                        Response.Redirect("ResultsPage.aspx");
                    }
                    else
                    {
                        // User validation failed
                        PassValidation.Visible = true;
                    }
                }

                sqlcon.Close();
            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            ValidateUser(txtUsername.Text.Trim(), txtPassword.Text.Trim());
        }
    }
}