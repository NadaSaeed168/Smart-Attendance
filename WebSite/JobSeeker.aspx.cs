using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class JobSeeker : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void applyforjob(object sender, EventArgs e)
    {

        Response.Redirect("JobApplication.aspx", true);

    }
    protected void viewstatus(object sender, EventArgs e)
    {

        Response.Redirect("Status.aspx", true);

    }
    protected void deleteapp(object sender, EventArgs e)
    {

        Response.Redirect("DeleteJob.aspx", true);

    }
    protected void choosejob(object sender, EventArgs e)
    {

        Response.Redirect("ChooseJob.aspx", true);

    }

    protected void viewinfo(object sender, EventArgs e)
    {

        Response.Redirect("ViewInfo.aspx", true);

    }
    protected void editinfo(object sender, EventArgs e)
    {

        Response.Redirect("EditInfo.aspx", true);

    }

}