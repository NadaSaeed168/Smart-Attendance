using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
public partial class hours : System.Web.UI.Page
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

    protected void checkhours(object sender, EventArgs e)
    {
        string connStr = ConfigurationManager.ConnectionStrings["MyDbConn"].ToString();
        SqlConnection conn = new SqlConnection(connStr);

        SqlCommand cmd = new SqlCommand("employeeHours", conn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add(new SqlParameter("@usernameHR", Session["Username"]));
        string employee = txt_username.Text;
        cmd.Parameters.Add(new SqlParameter("@usernameEmployee", employee));
        string year = txt_year.Text;
        cmd.Parameters.Add(new SqlParameter("@year", year));

        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        tbl_hours.DataSource = dt;
        tbl_hours.DataBind();

        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();
    }

    protected void bestemployees(object sender, EventArgs e)
    {
        string connStr = ConfigurationManager.ConnectionStrings["MyDbConn"].ToString();
        SqlConnection conn = new SqlConnection(connStr);

        SqlCommand cmd = new SqlCommand("bestEmployees", conn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add(new SqlParameter("@username", Session["Username"]));
        string date = txt_date.Text;
        cmd.Parameters.Add(new SqlParameter("@date", date));

        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        tbl_best_emp.DataSource = dt;
        tbl_best_emp.DataBind();

        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();
    }
}