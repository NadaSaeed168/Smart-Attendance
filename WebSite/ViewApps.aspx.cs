using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ViewApps : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string connStr = ConfigurationManager.ConnectionStrings["MyDbConn"].ToString();
        SqlConnection conn = new SqlConnection(connStr);

        SqlCommand cmd = new SqlCommand("viewNewApplication", conn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add(new SqlParameter("@username", Session["Username"]));
        cmd.Parameters.Add(new SqlParameter("@title", Session["Title"]));

        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        new_apps.DataSource = dt;
        new_apps.DataBind();

        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();



        string job_title = txt_job.Text;

       

        if (!(job_title.ToString().Equals(null)))
        {
            Session["Title"] = job_title;

        }

        string job_seeker = txt_job_seeker.Text;

        if (!(job_title.ToString().Equals(null)))
        {
            Session["JobSeeker"] = job_seeker;

        }



    }


    protected void view_job_redirect(object sender, EventArgs e)
    {
        Response.Redirect("appJob.aspx",true);
    }

protected void view_job_seeker_redirect(object sender, EventArgs e)
    {
        Response.Redirect("jobSeeker.aspx",true);
    }


protected void response(object sender, EventArgs e)
    {
        string connStr = ConfigurationManager.ConnectionStrings["MyDbConn"].ToString();
        SqlConnection conn = new SqlConnection(connStr);

        ddlresponse.ClearSelection();
        string value = ddlresponse.SelectedValue;

        SqlCommand cmd1 = new SqlCommand("jobHrResponse", conn);
        cmd1.CommandType = CommandType.StoredProcedure;
        cmd1.Parameters.Add(new SqlParameter("@username", Session["Username"]));
        cmd1.Parameters.Add(new SqlParameter("@title", Session["Title"]));
        cmd1.Parameters.Add(new SqlParameter("@job_seeker", Session["Jobseeker"]));
        cmd1.Parameters.Add(new SqlParameter("@response", value));

        conn.Open();
        cmd1.ExecuteNonQuery();
        conn.Close();


    }
}