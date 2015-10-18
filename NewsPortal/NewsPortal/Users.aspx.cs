using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace NewsPortal
{
    public partial class Users : System.Web.UI.Page
    {
        private List<User> ListUsers;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["InsertUser"] != null)
            {
                ListUsers = (List<User>)Session["InsertUser"];
            }
            UserBinding();
        }

        private void UserBinding()
        {
            //Repeater rptUserList = (Repeater)FindControl("rptUserList");
            rptUserList.DataSource = ListUsers;
            rptUserList.DataBind();

        }

    }
}