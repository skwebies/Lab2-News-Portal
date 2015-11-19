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
        public List<User> ListUsers;
        
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
           
                rptUserList.DataSource = ListUsers;
                rptUserList.DataBind();
            
            
            
        }

        protected void lbtnDash_Click(object sender, EventArgs e)
        {
            Response.Redirect("dashboard.aspx");
        }

        protected void lbtnArticles_Click(object sender, EventArgs e)
        {
            Response.Redirect("articles.aspx");
        }

        protected void lbtnUsersPage_Click(object sender, EventArgs e)
        {
            
            Response.Redirect("Users.aspx");
        }

        protected void lblPassHide_Load(object sender, EventArgs e)
        {
            
            Visible = true;
        }

        //protected void rptUserList_ItemDataBound(object sender, RepeaterItemEventArgs e)
        //{
        //    if (Session["InsertUser"] != null)
        //    {
        //        ListUsers = (List<User>)Session["InsertUser"];
        //        Label lblUserPass = (Label)FindControl("lblUserPass");
        //        lblUserPass.Visible = false;
        //    }

        //    //Label lblUserPass = (Label)FindControl("lblUserPass");
        //    //TextBox txtAddPassword = (TextBox)FindControl("txtAddPassword");
        //    //if (lblUserPass.Text == txtAddPassword.Text)
        //    //{
        //    //    lblUserPass.Visible = false;
        //    //}

        //}
    }
}