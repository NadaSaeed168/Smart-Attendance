using System;

public partial class RegularEmployee : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    public void project(object sender, EventArgs e)
    {
        Response.Redirect("Projects.aspx", true);
    }

    public void task(object sender, EventArgs e)
    {
        Response.Redirect("Tasks.aspx", true);
    }

    public void changestatus(object sender, EventArgs e)
    {
        Response.Redirect("Changetaskstatus.aspx", true);
    }

    public void redo(object sender, EventArgs e)
    {
        Response.Redirect("Redo.aspx", true);
    }

    protected void taketostaff(object sender, EventArgs e)
    {
        Response.Redirect("My Things.aspx", true);
    }
}