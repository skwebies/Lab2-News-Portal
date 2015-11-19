using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NewsPortal
{
    public partial class articles : System.Web.UI.Page
    {
        public List<Article> addArticles;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!Page.IsPostBack)
            {
                Session["AddNews"] = new List<Article>();
            } 
        }

        private void AddContents()
        {
            if(Session["AddNews"] != null)
            {
                addArticles = (List<Article>)Session["AddNews"];
            }
            else
            
            addArticles = new List<Article>();

            //check to make sure a file is selected
            if (fpImage.HasFile)
            {
                //create the path to save the file to
                string fileName = Path.Combine(Server.MapPath("~/Assets"), fpImage.FileName);
                //save the file to our local path
                fpImage.SaveAs(fileName);
                
            }

           
        
            DateTime postDate = DateTime.Now;
        

            addArticles.Add(new Article(txtTitle.Text, ddlCategory.SelectedItem.Text, txtContent.Text, fpImage.PostedFile.FileName, postDate));


            Session["AddNews"] = addArticles;
        }

        protected void btbPost_Click(object sender, EventArgs e)
        {
            AddContents();
            BindArticles();
            MakeEmpty();
        }

        private void BindArticles()
        {
            rptArticle.DataSource = addArticles;
            rptArticle.DataBind();
            
        }

        private void MakeEmpty()
        {
            txtTitle.Text = string.Empty;
            txtContent.Text = string.Empty;
            
        }

        protected void lbtnUsersPage_Click(object sender, EventArgs e)
        {
            Response.Redirect("Users.aspx");
        }

        protected void lbtnDash_Click(object sender, EventArgs e)
        {
            Response.Redirect("dashboard.aspx");
        }

        protected void lbtnArticles_Click(object sender, EventArgs e)
        {
            Response.Redirect("articles.aspx");
        }
    }


    public class Article
    {
        public string AddTitle { get; private set; }
        public string AddCategory { get; private set; }
        public string AddArticle { get; private set; }
        public string AddMedia { get; private set; }
        public DateTime postDate { get; set; }
        

        public Article(string getTitle, string getCategory, string getArticle, string getMedia, DateTime getDate)
        {
            AddTitle = getTitle;
            AddCategory = getCategory;
            AddArticle = getArticle;
            AddMedia = getMedia;
            postDate = getDate;
        }

    }
}