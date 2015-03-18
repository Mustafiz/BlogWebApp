using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BlogWebApp
{
    public partial class CreatePost : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void saveButton_Click(object sender, EventArgs e)
        {
            Article aArticle = new Article();
            aArticle.Title = titleTextBox.Text;
            aArticle.Body = (bodyTextBox.Text);
            aArticle.Author = authorTextBox.Text;

            string connectionString = @"Server=ASUS\SQLEXPRESS; Database= blog_db;User Id=sa; password=1234; Integrated Security=true";
            SqlConnection connection = new SqlConnection(connectionString);

            // string query = "INSERT INTO t_article VALUES('" + aArticle.Title + "', '" + aArticle.Body + "', '" + aArticle.Author + "')";
            string query = "INSERT INTO t_article VALUES(@title, @body, @author)";

            SqlCommand command = new SqlCommand(query, connection);
            
            command.Parameters.AddWithValue("@title", aArticle.Title);
            command.Parameters.AddWithValue("@body", aArticle.Body);
            command.Parameters.AddWithValue("@author", aArticle.Author);

            connection.Open();
            int rowAffected = command.ExecuteNonQuery();
            connection.Close();

            if (rowAffected > 0)
            {
                messageLabel.Text = "Article Posted Successfully";
            }
        }
    }
}
