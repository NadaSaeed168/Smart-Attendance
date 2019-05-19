using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;


public partial class questions : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void addQuestions(object sender, EventArgs e)
    {
        string connStr = ConfigurationManager.ConnectionStrings["MyDbConn"].ToString();
        SqlConnection conn = new SqlConnection(connStr);

        SqlCommand cmd = new SqlCommand("newJobQuestions", conn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add(new SqlParameter("@username", Session["Username"]));
        cmd.Parameters.Add(new SqlParameter("@title", Session["Title"]));
        string questions = question.Text;
        cmd.Parameters.Add(new SqlParameter("@question", questions));
        //string answers = answer.Text;
        cmd.Parameters.Add(new SqlParameter("@answer", ddl_answer.SelectedValue));


        SqlParameter count = cmd.Parameters.Add("@output", SqlDbType.Int);
        count.Direction = ParameterDirection.Output;

        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();

        

        if (count.Value.Equals(1))
            Response.Write("Question Added");
        else
            Response.Write("Failed");

    }

    protected void addMoreQuestions(object sender, EventArgs e)
    {
        Response.Redirect("questions.aspx", true);
    }

}