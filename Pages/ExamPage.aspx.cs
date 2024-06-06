using Npgsql;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BMOnlineTest.Pages
{
    public partial class ExamPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Check if the session variable exists and retrieve its value
                if (Session["IdNumber"] != null)
                {
                    string name = Session["Name"].ToString();

                    // Use the idNumber as needed
                    // For example, you can display it in a label or perform other operations
                    lblIdNumber.Text = name;
                }
            }
        }
        protected void SubmitButton_Click(object sender, EventArgs e)
        {
            string[] correctAnswers = { "A", "B", "B", "B", "B", "A", "B", "B", "A", "B" };
            int score = 0;

            for (int i = 0; i < correctAnswers.Length; i++)
            {
                string answer = Request.Form["q" + (i + 1)];
                if (!string.IsNullOrEmpty(answer) && answer == correctAnswers[i])
                {
                    score++;
                }
            }

            // Save the score into the "result" table
            SaveExamResults(score);

            // Redirect to the "ResultsPage.aspx" with the score and total questions
            Response.Redirect("ResultsPage.aspx?score=" + score + "&total=" + correctAnswers.Length);
        }

        protected void SaveExamResults(int score)
        {
            // Retrieve name and ID number from session variables
            string name = Session["Name"].ToString();
            string idNumber = Session["IdNumber"].ToString();

            string connectionString = "Host=localhost:2022;Username=postgres;Password=postgres;Database=postgres";

            using (NpgsqlConnection sqlcon = new NpgsqlConnection(connectionString))
            {
                sqlcon.Open();

                using (NpgsqlCommand sqlcmd = new NpgsqlCommand())
                {
                    sqlcmd.Connection = sqlcon;
                    sqlcmd.CommandText = @"INSERT INTO result (score, name, idnumber) 
                                  VALUES 
                                  (@score, @name, @idnumber)";

                    sqlcmd.Parameters.AddWithValue("@score", score);
                    sqlcmd.Parameters.AddWithValue("@name", name);
                    sqlcmd.Parameters.AddWithValue("@idnumber", idNumber);

                    int rowsAffected = sqlcmd.ExecuteNonQuery();

                    if (rowsAffected > 0)
                    {
                        // Insertion successful
                    }
                    else
                    {
                        // Handle the case where insertion fails
                    }
                }

                sqlcon.Close();
            }
        }

    }
}