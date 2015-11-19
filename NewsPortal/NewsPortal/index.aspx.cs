using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NewsPortal
{
    
    public partial class index : System.Web.UI.Page
    {
        public List<Article> addArticles;
        public List<User> ListUsers;

        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (Session["InsertUser"] != null)
            {
                
                ListUsers = (List<User>)Session["InsertUser"];
                
                rptLoggedUser.DataSource = ListUsers;
                rptLoggedUser.DataBind();

                
                
            }

            if (Session["AddNews"] != null)
            {
                addArticles = (List<Article>)Session["AddNews"];
            }
            HomeContentBinding();
            PostDate();
        }

        private void PostDate()
        {
            DateTime postDate = DateTime.Now;
        }

        //private void LoggedUser()
        //{
        //    if (Session["InsertUser"] != null)
        //    {
        //        ListUsers = (List<User>)Session["InsertUser"];
        //    }
        //    int loggedIn = 0;
        //    if()


        //    Label lblLoggedIn = (Label)FindControl("lblLoggedIn");
        //    lblLoggedIn.DataBind();
        //}

        private void HomeContentBinding()
        {
            
            rptHomeContent.DataSource = addArticles;
            rptHomeContent.DataBind();
        }
    }
}