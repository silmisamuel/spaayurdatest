using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SpaAyurda
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            string loginString = Security.GetHash512(txtUserName.Text, txtPassword.Text);



            DAL_Users aLayer = new DAL_Users();

            aLayer.addUser(txtFirstName.Text, txtLastName.Text, txtPhoneNumber.Text, txtAddress.Text, txtEmail.Text, txtUserName.Text, loginString);





            txtFirstName.Text = "";

            txtLastName.Text = "";

            txtPhoneNumber.Text = "";

            txtAddress.Text = "";

            txtEmail.Text = "";

            txtUserName.Text = "";

            txtPassword.Text = "";

            Response.Redirect("Login.aspx");

        }
    }
}