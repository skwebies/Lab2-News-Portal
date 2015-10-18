using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace NewsPortal
{

    public partial class register : System.Web.UI.Page
    {
        private List<User> ListUsers;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                //if (ListUsers == null)
                //{
                Session["InsertUser"] = new List<User>();
                //}

            }


        }

        private void AddUsers()
        {
            if (Session["InsertUser"] != null)
            {
                ListUsers = (List<User>)Session["InsertUser"];
            }
            else

                ListUsers = new List<User>();


            int isAvailable = 0;

            for (int i = 0; i < ListUsers.Count; i++)
            {
                if (ListUsers[i].Email == txtEmail.Text)
                {
                    isAvailable = 1;
                }

            }
            if (isAvailable == 1)
            {
                //alert message for the existing user
                ScriptManager.RegisterStartupScript(this, GetType(), "alertMessage",
              "alert('Username Already Exist!. Please Login');", true);
            }
            else
            {

                ListUsers.Add(new User(txtFirstName.Text, txtLastName.Text, txtEmail.Text, txtAddPassword.Text));

            }

            Session["InsertUser"] = ListUsers;



        }

        //private void UserBinding()
        //{
        //    //Repeater rptUserList = (Repeater)FindControl("rptUserList");
        //    rptUserList.DataSource = ListUsers;
        //    rptUserList.DataBind();

        //}

        private void ClearFields()
        {
            txtFirstName.Text = string.Empty;
            txtLastName.Text = string.Empty;
            txtEmail.Text = string.Empty;
            txtAddPassword.Text = string.Empty;
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            AddUsers();

            ClearFields();

            Response.Redirect("../login.aspx");


        }


    }

    public class User
    {
        public string FirstName { get; private set; }
        public string LastName { get; private set; }
        public string Email { get; private set; }
        public string Password { get; private set; }
        //public string UserName { get; private set; }

        public User(string AddFirstName, string AddLastName, string AddEmail, string AddPassword)
        {
            FirstName = AddFirstName;
            LastName = AddLastName;
            Email = AddEmail;
            Password = AddPassword;
        }
    }
}