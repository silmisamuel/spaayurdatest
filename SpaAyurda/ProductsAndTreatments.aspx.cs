using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SpaAyurda
{
    public partial class WebForm12 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {



        }

        protected void btnAddCart_Click(object sender, EventArgs e)
        {
            DAL_Users aLayer = new DAL_Users();

            // aLayer.addCar(txtCarName.Text, txtType.Text, txtPrice.Text, txtDescription.Text);
        }
    }
}