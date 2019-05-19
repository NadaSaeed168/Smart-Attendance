using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;


public partial class newjob : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void addJob(object sender, EventArgs e)
    {
        string connStr = ConfigurationManager.ConnectionStrings["MyDbConn"].ToString();
        SqlConnection conn = new SqlConnection(connStr);

        SqlCommand cmd = new SqlCommand("addJob", conn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add(new SqlParameter("@username", Session["Username"]));
        string title = job_title.Text;
        cmd.Parameters.Add(new SqlParameter("@title", title));
        string short_desc = txt_sh_desc.Text;
        cmd.Parameters.Add(new SqlParameter("@short_description", short_desc));
        string dt_desc = Dt_desc.Text;
        cmd.Parameters.Add(new SqlParameter("@detailed_description", dt_desc));
        string min_exper = min_exp.Text;
        cmd.Parameters.Add(new SqlParameter("@min_experience", min_exper));
        string slry = salary.Text;
        cmd.Parameters.Add(new SqlParameter("@salary", slry));
        string deadline1 = deadline.Text;
        cmd.Parameters.Add(new SqlParameter("@deadline", deadline1));
        string vacancies = no_of_vac.Text;
        cmd.Parameters.Add(new SqlParameter("@no_of_vacancies", vacancies));
        string hours = work_hours.Text;
        cmd.Parameters.Add(new SqlParameter("@working_hours", hours));
        

        //SqlParameter pass = cmd.Parameters.Add("@password", SqlDbType.VarChar, 50);
        //pass.Value = password;

        // output parm
        SqlParameter count = cmd.Parameters.Add("@output", SqlDbType.Int);
        count.Direction = ParameterDirection.Output;

        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();

        if (count.Value.Equals(1))
        {
            Session["Title"] = title;
            Response.Write("New job added");
            //Response.Redirect("Companies", true);
        }
        else
        {
            if (count.Value.Equals(0))
                Response.Write("Write the job in the form of 'Manager' , 'HR employee' or 'Regular Employee' - job title.");
        }




    }

    protected void addQuestions(object sender, EventArgs e)
    {
        Response.Redirect("questions.aspx", true);
    }
}