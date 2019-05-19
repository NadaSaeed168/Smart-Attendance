using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class editJob : System.Web.UI.Page
{
    public string msg { get; private set; }

    protected void Page_Load(object sender, EventArgs e)
    {
         
    }

    public static class Globals
    {
        public static string msg;
    }
    protected void edit_job(object sender, EventArgs e)
    {

        msg = "hello";
        string connStr = ConfigurationManager.ConnectionStrings["MyDbConn"].ToString();
        SqlConnection conn = new SqlConnection(connStr);

        SqlCommand cmd = new SqlCommand("editJob", conn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add(new SqlParameter("@username", Session["Username"]));
        cmd.Parameters.Add(new SqlParameter("@title", Session["title"]));
        string short_desc = txt_sh_desc.Text;
        if (!(short_desc.Equals("")))
        {
            cmd.Parameters.Add(new SqlParameter("@short_description", short_desc));
        }
        string dt_desc = Dt_desc.Text;
        if (!(dt_desc.Equals("")))
        {
            cmd.Parameters.Add(new SqlParameter("@detailed_description", dt_desc));
        }
        string min_exper = min_exp.Text;
        if (!(min_exper.Equals("")))
        {
            cmd.Parameters.Add(new SqlParameter("@min_experience", min_exper));
        }
        string slry = salary.Text;
        if (!(slry.Equals("")))
        {
            cmd.Parameters.Add(new SqlParameter("@salary", slry));
        }
        string deadline1 = deadline.Text;
        if (!(deadline1.Equals("")))
        {
            cmd.Parameters.Add(new SqlParameter("@deadline", deadline1));
        }
        string vacancies = no_of_vac.Text;
        if (!(vacancies.Equals("")))
        {
            cmd.Parameters.Add(new SqlParameter("@no_of_vacancies", vacancies));
        }
        string hours = work_hours.Text;
        if (!(hours.Equals("")))
        {
            cmd.Parameters.Add(new SqlParameter("@working_hours", hours));
        }

        //SqlParameter pass = cmd.Parameters.Add("@password", SqlDbType.VarChar, 50);
        //pass.Value = password;

        // output parm
        //SqlParameter count = cmd.Parameters.Add("@count", SqlDbType.Int);

        //count.Direction = ParameterDirection.Output;


        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();

    }
}