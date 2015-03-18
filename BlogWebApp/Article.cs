using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace BlogWebApp
{
    public class Article
    {
        public string Title { set; get; }
        //  [UIHint("tinymce_jquery_full"), AllowHtml]
        public string Body { set; get; }
        public string Author { set; get; }

        public DateTime Created_Date { private set; get; }


        public string ConnectionString { get; set; }

        public List<Article> GetArticles()
        {
            string connectionString = @"Server=ASUS\SQLEXPRESS; Database= blog_db;User Id=sa; password=1234; Integrated Security=true";
            SqlConnection connection = new SqlConnection(connectionString);
            {
                try
                {
                    SqlCommand cmd = new SqlCommand();
                    cmd.Connection = connection;
                    cmd.CommandText = "select * from t_article";
                    cmd.Connection.Open();
                    List<Article> articles = new List<Article>();
                    SqlDataReader sdr = cmd.ExecuteReader();

                    while (sdr.Read())
                    {
                        Article c = new Article();
                        c.Title = HttpContext.Current.Server.HtmlDecode(sdr["title"].ToString());
                        c.Author = HttpContext.Current.Server.HtmlDecode(sdr["author"].ToString());
                        c.Body = HttpContext.Current.Server.HtmlDecode(sdr["body"].ToString());
                       // c.Created_Date = HttpContext.Current.Server.HtmlDecode(Convert.ToDateTime(sdr["body"]).ToShortDateString());

                        articles.Add(c);
                    }
                    sdr.Close();
                    cmd.Dispose();
                    connection.Close();
                    return articles;
                }
                catch (Exception ex)
                {
                    return null;
                }
            }
        }
    }
}