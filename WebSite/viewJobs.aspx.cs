using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class viewJobs : System.Web.UI.Page
{
    private object grid1;

    protected void Page_Load(object sender, EventArgs e)
    {
        string connStr = ConfigurationManager.ConnectionStrings["MyDbConn"].ToString();
        SqlConnection conn = new SqlConnection(connStr);

        SqlCommand cmd = new SqlCommand("viewJob", conn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add(new SqlParameter("@username", Session["Username"]));
        cmd.Parameters.Add(new SqlParameter("@title", Session["Title"]));

        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        view_jobs.DataSource = dt;
        view_jobs.DataBind();
    }

    protected void edit_job_redirect(object sender, EventArgs e)
    {
        Response.Redirect("editJob.aspx", true);
    }
}