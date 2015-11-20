using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NewsPortal
{
    public partial class dashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack)
            {
                Session["InsertUser"] = new List<User>();
            }
        }

        protected void lbtnArticles_Click(object sender, EventArgs e)
        {
            Response.Redirect("articles.aspx");
        }

        protected void lbtnUsersPage_Click(object sender, EventArgs e)
        {
            Response.Redirect("Users.aspx");
        }

        protected void lbtnDash_Click(object sender, EventArgs e)
        {
            Response.Redirect("dashboard.aspx");
        }
    }
}