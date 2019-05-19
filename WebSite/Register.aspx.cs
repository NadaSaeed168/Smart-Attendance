using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        txt_name1.Text = "";
        txt_pass1.Text = "";
        ;
        if (!Page.IsPostBack)
        {
            //Fill Years
            for (int i = 1980; i <= 2020; i++)
            {
                ddlYear.Items.Add(i.ToString());
            }
            ddlYear.Items.FindByValue(System.DateTime.Now.Year.ToString()).Selected = true;  //set current year as selected

            //Fill Months
            for (int i = 1; i <= 12; i++)
            {
                ddlMonth.Items.Add(i.ToString());
            }
            ddlMonth.Items.FindByValue(System.DateTime.Now.Month.ToString()).Selected = true; // Set current month as selected

            //Fill days
            FillDays();

            //fillyearsexp
            for (int i = 0; i <= 50; i++)
            {
                ddlexp.Items.Add(i.ToString());
            }
        }
    }



    protected void confirm(object sender, EventArgs e)
    {

        string connStr = ConfigurationManager.ConnectionStrings["MyDbConn"].ToString();
        SqlConnection conn = new SqlConnection(connStr);
        SqlCommand cmd = new SqlCommand("registeration", conn);
        cmd.CommandType = CommandType.StoredProcedure;
        string username = txt_name1.Text;
        string password = txt_pass1.Text;
        string personalemail = txt_email.Text;
        string firstname = txt_fname.Text;
        string middlename = txt_mname.Text;
        string lastname = txt_lname.Text;
        string yearsexp = ddlexp.SelectedValue;
        int expyears = Convert.ToInt32(yearsexp);
        string years = ddlYear.SelectedValue;
        int year = Convert.ToInt32(years);
        string months = ddlMonth.SelectedValue;
        int month = Convert.ToInt32(months);
        string days = ddlDay.SelectedValue;
        int day = Convert.ToInt32(days);
        string bDate = day + "." + month + "." + year + " 00:00:00";
        DateTime birthdate = DateTime.ParseExact(bDate, "dd.M.yyyy hh:mm:ss", null);
        //new DateTime();
        //birthdate.AddYears(year);
        //birthdate.AddMonths(month);
        //birthdate.AddDays(day);
        //birthdate.AddHours(00);
        //birthdate.AddMinutes(00);
        //birthdate.AddSeconds(00);


        //lblusertype.Text = "User: " + cmd.Parameters["@user"].Value.ToString();


        cmd.Parameters.Add(new SqlParameter("@username", username));
        cmd.Parameters.Add(new SqlParameter("@password0", password));
        cmd.Parameters.Add(new SqlParameter("@personal_email", personalemail));
        SqlParameter param = cmd.Parameters.Add("@birth_date", System.Data.SqlDbType.DateTime);
        param.Value = birthdate;
        //cmd.Parameters.Add(new SqlParameter("@birth_date", DateTime.Now));
        cmd.Parameters.Add(new SqlParameter("@first_name", firstname));
        cmd.Parameters.Add(new SqlParameter("@middle_name", middlename));
        cmd.Parameters.Add(new SqlParameter("@last_name", lastname));
        cmd.Parameters.Add(new SqlParameter("@years_of_experience", expyears));


        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();

        //Response.Redirect("Profile.aspx",true);
        Response.Write("Registered User: " + username + "  <br /> <br />");
        Response.Redirect("JobSeeker.aspx", true);

    }

    public void FillDays()
    {
        ddlDay.Items.Clear();
        //getting numbner of days in selected month & year
        int noofdays = DateTime.DaysInMonth(Convert.ToInt32(ddlYear.SelectedValue), Convert.ToInt32(ddlMonth.SelectedValue));

        //Fill days
        for (int i = 1; i <= noofdays; i++)
        {
            ddlDay.Items.Add(i.ToString());
        }
        ddlDay.Items.FindByValue(System.DateTime.Now.Day.ToString()).Selected = true;// Set current date as selected
    }

}