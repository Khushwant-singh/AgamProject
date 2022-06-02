using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AgamProject
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
        {
            if (Login1.UserName == "agam" && Login1.Password == "agam")
                FormsAuthentication.RedirectFromLoginPage(Login1.UserName, true);
         }

        protected void Login1_LoggedIn(object sender, EventArgs e)
        {

        }

        protected void Login1_LoggingIn(object sender, LoginCancelEventArgs e)
        {

        }

        protected void LoginButton_Click(object sender, EventArgs e)
        {
            if (Login1.UserName == "agam" && Login1.Password == "agam")
                FormsAuthentication.RedirectFromLoginPage(Login1.UserName, true);

        }
    }
}