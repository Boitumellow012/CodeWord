using Npgsql;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BMOnlineTest.Pages
{
    public partial class ResultsPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

               int total = 10;

                // Retrieve score from the database
                int score = GetScoreFromDatabase();

                // Display score and total
                ResultsLiteral.Text = $"<h3>Your Score: {score} out of {total}</h3>";

                // Display suggestions based on the score
                if (score < 8)
                {
                    ResultsLiteral.Text += "<p>You scored below 8. Here are some suggestions to improve:</p>";
                    ResultsLiteral.Text += "<ul>";
                    ResultsLiteral.Text += "<li>Review your weak areas in C language.</li>";
                    ResultsLiteral.Text += "<li>Practice more coding exercises and quizzes.</li>";
                    ResultsLiteral.Text += "<li>Seek assistance from online resources or tutors.</li>";
                    ResultsLiteral.Text += "</ul>";
                }
            
        }

        protected int GetScoreFromDatabase()
        {
            int score = 0;

            // Retrieve name and ID number from session variables
            string name = Session["Name"].ToString();
            string idNumber = Session["IdNumber"].ToString();

            // Query to retrieve the score from the database
            string connectionString = "Host=localhost:2022;Username=postgres;Password=postgres;Database=postgres";
            string query = "SELECT score FROM result WHERE name = @name AND idnumber = @idnumber";

            using (NpgsqlConnection sqlcon = new NpgsqlConnection(connectionString))
            {
                sqlcon.Open();

                using (NpgsqlCommand sqlcmd = new NpgsqlCommand(query, sqlcon))
                {
                    sqlcmd.Parameters.AddWithValue("@name", name);
                    sqlcmd.Parameters.AddWithValue("@idnumber", idNumber);

                    // Execute the query
                    object result = sqlcmd.ExecuteScalar();
                    if (result != null)
                    {
                        score = Convert.ToInt32(result);
                    }
                }

                sqlcon.Close();
            }

            return score;
        }



    }
}