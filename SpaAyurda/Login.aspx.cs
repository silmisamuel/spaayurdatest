using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;


namespace SpaAyurda
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

            string loginString = Security.GetHash512(txtLoginUserName.Text, txtLoginPassword.Text);

            string connectionstring = ConfigurationManager.ConnectionStrings["connectionSpaAyurda"].ConnectionString;

            SqlConnection connection;

            connection = new SqlConnection(connectionstring);

            connection.Open();

            SqlDataAdapter sda = new SqlDataAdapter("Select count(*) from tbl_Users where userName='" + txtLoginUserName.Text + "' and password= '" + loginString + "'", connection);

            DataTable dt = new DataTable();

            sda.Fill(dt);

            if (dt.Rows[0][0].ToString() == "1")

            {

                Response.Redirect("ManageCustomers.aspx");

            }

            else

            {

                Response.Redirect("ProductsAndTraetments.aspx");

            }



        }
    }
}
