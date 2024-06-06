using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Npgsql;
namespace BMOnlineTest.Pages
{
    public partial class ResistrationPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            string connectionString = "Host=localhost:2022;Username=postgres;Password=postgres;Database=postgres";

            // Example values from your text fields
            string name = txtName.Text;
            string surname = txtSurname.Text;
            string idNumber = txtID.Text;
            string email = txtEmail.Text;
            string cellphone = txtCellphone.Text;
            string preferredUsername = txtPreferredUsername.Text;
            string password = txtPassword.Text;

            using (NpgsqlConnection sqlcon = new NpgsqlConnection(connectionString))
            {
                sqlcon.Open();

                using (NpgsqlCommand sqlcmd = new NpgsqlCommand())
                {
                    sqlcmd.Connection = sqlcon;
                    sqlcmd.CommandText = @"INSERT INTO registrationtbl 
                                      (name, surname, idnumber, username, password, cellphonenumber) 
                                      VALUES 
                                      (@name, @surname, @idnumber, @username, @password, @cellphonenumber)";

                    sqlcmd.Parameters.AddWithValue("@name", name);
                    sqlcmd.Parameters.AddWithValue("@surname", surname);
                    sqlcmd.Parameters.AddWithValue("@idnumber", idNumber);
                    sqlcmd.Parameters.AddWithValue("@username", preferredUsername);
                    sqlcmd.Parameters.AddWithValue("@password", password);
                    sqlcmd.Parameters.AddWithValue("@cellphonenumber", cellphone);

                    int rowsAffected = sqlcmd.ExecuteNonQuery();

                    if (rowsAffected > 0)
                    {
                        Session["Name"] = name;
                        Session["Surname"] = surname;
                        Session["IdNumber"] = idNumber;
                        // Redirect to ResultsPage.aspx if insertion is successful
                        Response.Redirect("RequirementsPage.aspx");
                    }
                    else
                    {
                       /// PassValidation.Visible = true;
                    }
                }

                sqlcon.Close();
            }



          
        }

        protected void txtName_TextChanged(object sender, EventArgs e)
        {

        }
    }
}