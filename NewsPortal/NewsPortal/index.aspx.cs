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

        protected void Page_Load(object sender, EventArgs e)
        {
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

        private void HomeContentBinding()
        {
            
            rptHomeContent.DataSource = addArticles;
            rptHomeContent.DataBind();
        }
    }
}