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
            Credential();
        }

        private void Credential()
        {
            if (Session["InsertUser"] != null)
            {
                LoginUsers = (List<User>)Session["InsertUser"];
            }


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
                Response.Redirect("index.aspx");
            }
        }
    }





    
}