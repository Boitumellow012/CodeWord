using Npgsql;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BMOnlineTest.Pages
{
    public partial class DeleteUser : System.Web.UI.Page
    {

        private string connectionString = "Host=localhost:2022;Username=postgres;Password=postgres;Database=postgres";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGrid();
            }
        }
        private void BindGrid()
        {
            using (NpgsqlConnection sqlcon = new NpgsqlConnection(connectionString))
            {
                try
                {
                    sqlcon.Open();
                    string query = "SELECT id, name, surname, idnumber, username, password, cellphonenumber FROM registrationtbl";
                    using (NpgsqlDataAdapter da = new NpgsqlDataAdapter(query, sqlcon))
                    {
                        DataTable dt = new DataTable();
                        da.Fill(dt);
                        gvUsers.DataSource = dt;
                        gvUsers.DataBind();
                    }
                }
                catch (Exception ex)
                {
                    lblMessage.Text = "Error: " + ex.Message;
                }
            }
        }

        protected void gvUsers_RowEditing(object sender, System.Web.UI.WebControls.GridViewEditEventArgs e)
        {
            gvUsers.EditIndex = e.NewEditIndex;
            BindGrid();
        }

        protected void gvUsers_RowCancelingEdit(object sender, System.Web.UI.WebControls.GridViewCancelEditEventArgs e)
        {
            gvUsers.EditIndex = -1;
            BindGrid();
        }

        protected void gvUsers_RowUpdating(object sender, System.Web.UI.WebControls.GridViewUpdateEventArgs e)
        {
            int id = Convert.ToInt32(gvUsers.DataKeys[e.RowIndex].Value.ToString());
            string name = ((TextBox)gvUsers.Rows[e.RowIndex].Cells[1].Controls[0]).Text;
            string surname = ((TextBox)gvUsers.Rows[e.RowIndex].Cells[2].Controls[0]).Text;
            string idnumber = ((TextBox)gvUsers.Rows[e.RowIndex].Cells[3].Controls[0]).Text;
            string username = ((TextBox)gvUsers.Rows[e.RowIndex].Cells[4].Controls[0]).Text;
            string password = ((TextBox)gvUsers.Rows[e.RowIndex].Cells[5].Controls[0]).Text;
            string cellphonenumber = ((TextBox)gvUsers.Rows[e.RowIndex].Cells[6].Controls[0]).Text;

            using (NpgsqlConnection sqlcon = new NpgsqlConnection(connectionString))
            {
                try
                {
                    sqlcon.Open();
                    string query = "UPDATE registrationtbl SET name=@name, surname=@surname, idnumber=@idnumber, username=@username, password=@password, cellphonenumber=@cellphonenumber WHERE id=@id";
                    using (NpgsqlCommand sqlcmd = new NpgsqlCommand(query, sqlcon))
                    {
                        sqlcmd.Parameters.AddWithValue("@name", name);
                        sqlcmd.Parameters.AddWithValue("@surname", surname);
                        sqlcmd.Parameters.AddWithValue("@idnumber", idnumber);
                        sqlcmd.Parameters.AddWithValue("@username", username);
                        sqlcmd.Parameters.AddWithValue("@password", password);
                        sqlcmd.Parameters.AddWithValue("@cellphonenumber", cellphonenumber);
                        sqlcmd.Parameters.AddWithValue("@id", id);
                        sqlcmd.ExecuteNonQuery();
                    }
                }
                catch (Exception ex)
                {
                    lblMessage.Text = "Error: " + ex.Message;
                }
            }
            gvUsers.EditIndex = -1;
            BindGrid();
        }

        protected void gvUsers_RowDeleting(object sender, System.Web.UI.WebControls.GridViewDeleteEventArgs e)
        {
            int id = Convert.ToInt32(gvUsers.DataKeys[e.RowIndex].Value.ToString());

            using (NpgsqlConnection sqlcon = new NpgsqlConnection(connectionString))
            {
                try
                {
                    sqlcon.Open();
                    string query = "DELETE FROM registrationtbl WHERE id=@id";
                    using (NpgsqlCommand sqlcmd = new NpgsqlCommand(query, sqlcon))
                    {
                        sqlcmd.Parameters.AddWithValue("@id", id);
                        sqlcmd.ExecuteNonQuery();
                    }
                }
                catch (Exception ex)
                {
                    lblMessage.Text = "Error: " + ex.Message;
                }
            }
            BindGrid();
        }

        protected void btnAddUser_Click(object sender, EventArgs e)
        {
            string name = txtName.Text;
            string surname = txtSurname.Text;
            string idnumber = txtIDNumber.Text;
            string username = txtUsername.Text;
            string password = txtPassword.Text;
            string cellphonenumber = txtCellphoneNumber.Text;

            using (NpgsqlConnection sqlcon = new NpgsqlConnection(connectionString))
            {
                try
                {
                    sqlcon.Open();
                    string query = "INSERT INTO registrationtbl (name, surname, idnumber, username, password, cellphonenumber) VALUES (@name, @surname, @idnumber, @username, @password, @cellphonenumber)";
                    using (NpgsqlCommand sqlcmd = new NpgsqlCommand(query, sqlcon))
                    {
                        sqlcmd.Parameters.AddWithValue("@name", name);
                        sqlcmd.Parameters.AddWithValue("@surname", surname);
                        sqlcmd.Parameters.AddWithValue("@idnumber", idnumber);
                        sqlcmd.Parameters.AddWithValue("@username", username);
                        sqlcmd.Parameters.AddWithValue("@password", password);
                        sqlcmd.Parameters.AddWithValue("@cellphonenumber", cellphonenumber);
                        sqlcmd.ExecuteNonQuery();
                    }
                    lblMessage.Text = "User added successfully!";
                    ClearFormFields();
                }
                catch (Exception ex)
                {
                    lblMessage.Text = "Error: " + ex.Message;
                }
            }
            BindGrid();
        }
        private void ClearFormFields()
        {
            txtName.Text = string.Empty;
            txtSurname.Text = string.Empty;
            txtIDNumber.Text = string.Empty;
            txtUsername.Text = string.Empty;
            txtPassword.Text = string.Empty;
            txtCellphoneNumber.Text = string.Empty;
        }

    }
}