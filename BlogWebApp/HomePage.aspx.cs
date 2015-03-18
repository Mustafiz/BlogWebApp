using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace BlogWebApp
{
    public partial class HomePage : System.Web.UI.Page
    {
        Article anArticle = new Article();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
               
                DisplayArticles();
            }

        }
        protected void DisplayArticles()
        {
            anArticle.ConnectionString = @"Server=ASUS\SQLEXPRESS; Database= blog_db;User Id=sa; password=1234; Integrated Security=true";
            List<Article> lstarticles = anArticle.GetArticles();
            if (lstarticles.Count != 0)
            {
                rptrArticles.DataSource = lstarticles;
                rptrArticles.DataBind();
                
            }


        }
        protected string CutText(object text, int length)
        {
            if (DBNull.Value == text || text == null) return "";
            string txt = text.ToString();
            if (txt.Length <= length) return txt;
            return txt.Substring(0, length);
        }
    }
}