using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class attendance : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string connStr = ConfigurationManager.ConnectionStrings["MyDbConn"].ToString();
        SqlConnection conn = new SqlConnection(connStr);

        SqlCommand cmd = new SqlCommand("myDepEmp", conn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add(new SqlParameter("@username", Session["Username"]));


        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        dep_emp.DataSource = dt;
        dep_emp.DataBind();

        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();
    }

    protected void checkattendance(object sender, EventArgs e)
    {
        string connStr = ConfigurationManager.ConnectionStrings["MyDbConn"].ToString();
        SqlConnection conn = new SqlConnection(connStr);

        SqlCommand cmd = new SqlCommand("viewAttendance", conn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add(new SqlParameter("@usernameHR", Session["Username"]));
        string employee = txt_username.Text;
        cmd.Parameters.Add(new SqlParameter("@usernameEmployee", employee));
        string start = txt_start.Text;
        cmd.Parameters.Add(new SqlParameter("@start", start));
        string end = txt_end.Text;
        cmd.Parameters.Add(new SqlParameter("@end", end));

        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        tbl_attendance.DataSource = dt;
        tbl_attendance.DataBind();

        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();
    }
}