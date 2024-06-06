using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BMOnlineTest.Pages
{
    public partial class RequirementsPage : System.Web.UI.Page
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

        protected void Accept_Click(object sender, EventArgs e)
        {

            Response.Redirect("ExamPage.aspx");

        }
    }
}