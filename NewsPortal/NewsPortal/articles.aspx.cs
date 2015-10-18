using System;
using System.Collections.Generic;
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
                Session["AddNews"] = (Article)Session["AddNews"];
            }
            else
            {
                addArticles = new List<Article>();
            }

           
        }

    }






    public class Article
    {
        public string AddTitle { get; private set; }
        public string AddArticle { get; set; }
        public string AddMedia { get; set; }
        public string AddCategory { get; set; }

        public Article(string getTitle, string getArticle, string getMedia, string getCategory)
        {
            AddTitle = getTitle;
            AddArticle = getArticle;
            AddMedia = getMedia;
            AddCategory = getCategory;
        }

    }
}