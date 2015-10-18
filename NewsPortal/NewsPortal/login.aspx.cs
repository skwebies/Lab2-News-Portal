using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

namespace NewsPortal
{
    public partial class login : System.Web.UI.Page
    {

        private List<User> LoginUsers;
        protected void Page_Load(object sender, EventArgs e)
        {
         

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            //if (FormsAuthentication.Authenticate(txtUser.Text, txtPassword.Text))
            //{
            //    FormsAuthentication.RedirectFromLoginPage(txtUser.Text, chkRemember.Checked);
            //}
            //else
            //{
            //    lblLoginMessage.Text = "Invalid User Name and/or Password";
            //}
            Credential();
        }

        private void Credential()
        {
            if (Session["InsertUser"] != null)
            {
                LoginUsers = (List<User>)Session["InsertUser"];
            }

            //if (LoginUsers.Count == 0)
            //{
            //    //alert message for the existing user
            //    ScriptManager.RegisterStartupScript(this, GetType(), "alertMessage",
            //  "alert('You are not registered. Please click on register');", true);
            //}

            int isUserExist = 0;
            for (int i = 0; i < LoginUsers.Count; i++)
            {
                if (LoginUsers[i].Email == txtUser.Text && LoginUsers[i].Password == txtPassword.Text)
                {
                    isUserExist = 1;
                }

         
            }
            if(isUserExist == 1)
            {
                Response.Redirect("dashboard.aspx");
            }
        }
    }





    
}