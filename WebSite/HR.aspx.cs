using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class HR : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void add_job_redirect(object sender, EventArgs e)
    {
        Response.Redirect("newjob.aspx", true);
    }

    protected void dep_jobs_redirect(object sender, EventArgs e)
    {
        Response.Redirect("DepJobs.aspx", true);
    }

    protected void post_announ_redirect(object sender, EventArgs e)
    {
        Response.Redirect("PostAnnoun.aspx", true);
    }

    protected void view_requests_redirect(object sender, EventArgs e)
    {
        Response.Redirect("viewRequest.aspx", true);
    }

    protected void view_attendance_redirect(object sender, EventArgs e)
    {
        Response.Redirect("attendance.aspx", true);
    }

    protected void view_hours_redirect(object sender, EventArgs e)
    {
        Response.Redirect("hours.aspx", true);
    }
    protected void taketostaff(object sender, EventArgs e)
    {
        Response.Redirect("My Things.aspx", true);
    }

}