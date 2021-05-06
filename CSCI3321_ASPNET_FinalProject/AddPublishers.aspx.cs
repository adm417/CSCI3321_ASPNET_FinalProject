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
    public partial class AddPublishers : System.Web.UI.Page
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

            if(txtPublisherName.Text.Trim() != "" && txtAddress.Text.Trim() != "" && txtCity.Text.Trim() != "" && 
                txtPostalCode.Text.Trim() != "" && txtCountry.Text.Trim() != "" && txtPhone.Text.Trim() != "")
            {
                cmd.CommandText = "INSERT INTO Publishers VALUES ('" + txtPublisherName.Text + "', '" + txtAddress.Text + "', '"
                    + txtCity.Text + "', '" + txtPostalCode.Text + "', '" + txtCountry.Text + "', '" + txtPhone.Text + "')";

                conn.Open();
                cmd.ExecuteNonQuery();
                conn.Close();

                this.lblCheck.Visible = true;
            }
            else
            {
                this.lblCheck.CssClass = "alert alert-danger";
                this.lblCheck.Text = "The publisher has been added to the table.";
                this.lblCheck.Visible = true;
            }
        }
    }
}