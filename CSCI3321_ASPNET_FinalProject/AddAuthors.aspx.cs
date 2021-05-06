using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CSCI3321_ASPNET_FinalProject
{
    public partial class AddAuthors : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = WebConfigurationManager.ConnectionStrings["DBConnectionString"].ConnectionString;

            SqlCommand cmd = new SqlCommand();
            cmd.Connection = conn;

            if(txtLastName.Text.Trim() != "" && txtFirstName.Text.Trim() != "" && txtGender.Text.Trim() != "" && txtBirthDate.Text.Trim() != "")
            {
                cmd.CommandText = "INSERT INTO Authors VALUES ('" + txtLastName.Text + "', '" + txtFirstName.Text +
                                "', '" + txtGender.Text + "', '" + txtBirthDate.Text + "')";

                conn.Open();
                cmd.ExecuteNonQuery();
                conn.Close();

                this.lblCheck.Visible = true;
            }
            else
            {
                this.lblCheck.CssClass = "alert alert-danger";
                this.lblCheck.Text = "The author has not been added to the table.";
                this.lblCheck.Visible = true;
            }
        }
    }
}