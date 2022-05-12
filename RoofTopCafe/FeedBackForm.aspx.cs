using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RoofTopCafe
{
    public partial class FeedBackForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label6.Text = "";
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

       

        protected void CustomValidator2_ServerValidate(object source, ServerValidateEventArgs args)
        {
            if (args.Value.Length == 10)
            {
                args.IsValid = true;
            }
            else
                args.IsValid = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                Label6.Text = "Thank you for your Feedback";
            }
        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {

        }
    }
}