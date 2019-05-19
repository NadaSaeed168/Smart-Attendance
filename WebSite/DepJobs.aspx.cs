using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DepJobs : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string connStr = ConfigurationManager.ConnectionStrings["MyDbConn"].ToString();
        SqlConnection conn = new SqlConnection(connStr);

        SqlCommand cmd = new SqlCommand("myDepJobs", conn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add(new SqlParameter("@username", Session["Username"]));

        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        Dep_jobs.DataSource = dt;
        Dep_jobs.DataBind();

        string job_title = txt_job_title.Text;

        if(!(job_title.ToString().Equals(null)))
        {
            Session["Title"] = job_title;
        }

        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();
    }

    protected void view_job_redirect(object sender, EventArgs e)
    {
        Response.Redirect("viewJobs.aspx", true);
    }

    protected void view_apps_redirect(object sender, EventArgs e)
    {
        Response.Redirect("ViewApps.aspx", true);
    }
}