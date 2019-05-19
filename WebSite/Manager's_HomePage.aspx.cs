
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;


public partial class Manager_s_HomePage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ViewingApplication(object sender, EventArgs e)
    {
        string connStr = ConfigurationManager.ConnectionStrings["MyDbConn"].ToString();
        SqlConnection conn = new SqlConnection(connStr);

        SqlCommand cmd = new SqlCommand("viewApplications", conn);
        cmd.CommandType = CommandType.StoredProcedure;
        string Username = (string)(Session["Username"]);
        SqlParameter p = new SqlParameter("@username",Username);
        cmd.Parameters.Add(p);

        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        grid1.DataSource = dt;
        grid1.DataBind();

        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();
    }
    protected void CreatingProjects(object sender, EventArgs e)
    {
        string connStr = ConfigurationManager.ConnectionStrings["MyDbConn"].ToString();
        SqlConnection conn = new SqlConnection(connStr);

        SqlCommand cmd = new SqlCommand("creatingProjects", conn);
        cmd.CommandType = CommandType.StoredProcedure;
        string Username = (string)(Session["Username"]);
        string name = TextBox1.Text;
        //string company = TextBox2.Text;
        string start = TextBox3.Text;
        string end = TextBox4.Text;
        SqlParameter p1 = new SqlParameter("@username_m", Username);
        SqlParameter p2 = new SqlParameter("@name0", name);
        //SqlParameter p3 = new SqlParameter("@company", company);
        SqlParameter p4 = new SqlParameter("@start_date0", start);
        SqlParameter p5 = new SqlParameter("@end_date", end);
        cmd.Parameters.Add(p1);
        cmd.Parameters.Add(p2);
        //cmd.Parameters.Add(p3);
        cmd.Parameters.Add(p4);
        cmd.Parameters.Add(p5);

        SqlParameter output = new SqlParameter();
        output.ParameterName = "@out";
        output.SqlDbType = System.Data.SqlDbType.VarChar;
        output.Size = 100;
        output.Direction = System.Data.ParameterDirection.Output;
        cmd.Parameters.Add(output);

        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();
        Response.Write(output.Value.ToString());

    }

    protected void changeregulartask(object sender, EventArgs e)
    {
        string connStr = ConfigurationManager.ConnectionStrings["MyDbConn"].ToString();
        SqlConnection conn = new SqlConnection(connStr);

        SqlCommand cmd = new SqlCommand("changeRegularEmployeeForTask", conn);
        cmd.CommandType = CommandType.StoredProcedure;
        string rep = regularreplacement.Text;
        string org = regularoriginal.Text;
        string task = Textbox2.Text;
        string Username = (string)(Session["Username"]);

        SqlParameter p1 = new SqlParameter("@username_r", rep);
        SqlParameter p2 = new SqlParameter("@username_orig", org);
        SqlParameter p3 = new SqlParameter("@task", task);
        SqlParameter p4 = new SqlParameter("@username_m", Username);
        cmd.Parameters.Add(p1);
        cmd.Parameters.Add(p2);
        cmd.Parameters.Add(p3);

        SqlParameter output = new SqlParameter();
        output.ParameterName = "@out";
        output.SqlDbType = System.Data.SqlDbType.VarChar;
        output.Size = 100;
        output.Direction = System.Data.ParameterDirection.Output;
        cmd.Parameters.Add(output);

        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();
        Response.Write(output.Value.ToString());
    }
    protected void RemoveRegularEmployees(object sender, EventArgs e)
    {
        string connStr = ConfigurationManager.ConnectionStrings["MyDbConn"].ToString();
        SqlConnection conn = new SqlConnection(connStr);
        SqlCommand cmd = new SqlCommand("removeRegularEmployee", conn);
        cmd.CommandType = CommandType.StoredProcedure;
        SqlParameter output = new SqlParameter();
        output.ParameterName = "@out";
        output.SqlDbType = System.Data.SqlDbType.VarChar;
        output.Size = 100;
        output.Direction = System.Data.ParameterDirection.Output;
        cmd.Parameters.Add(output);
        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();
        Response.Write(output.Value.ToString());
    }
    protected void AssignRegularEmployeeToProject(object sender, EventArgs e)
    {
        string connStr = ConfigurationManager.ConnectionStrings["MyDbConn"].ToString();
        SqlConnection conn = new SqlConnection(connStr);
        SqlCommand cmd = new SqlCommand("assignRegularEmployeeToProject", conn);
        cmd.CommandType = CommandType.StoredProcedure;

        string Username = (string)(Session["Username"]);
        SqlParameter p = new SqlParameter("@username_m", Username);
        cmd.Parameters.Add(p);

        string reg = reg_emp.Text;
        string pro = project.Text;
        SqlParameter p1 = new SqlParameter("@username_r", reg);
        SqlParameter p2 = new SqlParameter("@project_name", pro);
        cmd.Parameters.Add(p1);
        cmd.Parameters.Add(p2);

        SqlParameter output = new SqlParameter();
        output.ParameterName = "@out";
        output.SqlDbType = System.Data.SqlDbType.VarChar;
        output.Size = 100;
        output.Direction = System.Data.ParameterDirection.Output;
        cmd.Parameters.Add(output);

        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();
        Response.Write(output.Value.ToString());

    }
    protected void defineTaskAndAssignRegularEmployee(object sender, EventArgs e)
    {
        string connStr = ConfigurationManager.ConnectionStrings["MyDbConn"].ToString();
        SqlConnection conn = new SqlConnection(connStr);

        SqlCommand cmd = new SqlCommand("defineTask", conn);
        cmd.CommandType = CommandType.StoredProcedure;
        string Username = (string)(Session["Username"]);
        string name = TextBox5.Text;
        string project = TextBox6.Text;
        string deadline = TextBox8.Text;
        string description = TextBox9.Text;
        string reg = TextBox10.Text;
        SqlParameter p1 = new SqlParameter("@username_m", Username);
        SqlParameter p2 = new SqlParameter("@name0", name);
        SqlParameter p3 = new SqlParameter("@project", project);
        SqlParameter p5 = new SqlParameter("@deadline", deadline);
        SqlParameter p6 = new SqlParameter("@description0", description);
        SqlParameter p7 = new SqlParameter("@regular_employee", reg);
        cmd.Parameters.Add(p1);
        cmd.Parameters.Add(p2);
        cmd.Parameters.Add(p3);
        cmd.Parameters.Add(p5);
        cmd.Parameters.Add(p6);
        cmd.Parameters.Add(p7);

        SqlParameter output = new SqlParameter();
        output.ParameterName = "@out";
        output.SqlDbType = System.Data.SqlDbType.VarChar;
        output.Size = 100;
        output.Direction = System.Data.ParameterDirection.Output;
        cmd.Parameters.Add(output);

        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();
        Response.Write(output.Value.ToString());
    }

    protected void ViewingTasks(object sender, EventArgs e)
    {
        string connStr = ConfigurationManager.ConnectionStrings["MyDbConn"].ToString();
        SqlConnection conn = new SqlConnection(connStr);

        SqlCommand cmd = new SqlCommand("viewMyTask", conn);
        cmd.CommandType = CommandType.StoredProcedure;
        string Username = (string)(Session["Username"]);
        SqlParameter p = new SqlParameter("@username_m",Username);
        cmd.Parameters.Add(p);

        SqlDataAdapter sda0 = new SqlDataAdapter(cmd);
        DataTable dt0 = new DataTable();
        sda0.Fill(dt0);
        GridView1.DataSource = dt0;
        GridView1.DataBind();

        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();
    }

    protected void reviewingTasks(object sender, EventArgs e)
    {
        string connStr = ConfigurationManager.ConnectionStrings["MyDbConn"].ToString();
        SqlConnection conn = new SqlConnection(connStr);

        SqlCommand cmd = new SqlCommand("reviewTask", conn);
        cmd.CommandType = CommandType.StoredProcedure;
        string Username = (string)(Session["Username"]);
        SqlParameter p4 = new SqlParameter("@username_m",Username);

        string task = TextBox11.Text;
        string response = TextBox12.Text;
        string deadline = TextBox13.Text;
        SqlParameter p1 = new SqlParameter("@name", task);
        SqlParameter p2 = new SqlParameter("@response", response);
        SqlParameter p3 = new SqlParameter("@deadline", deadline);
        cmd.Parameters.Add(p1);
        cmd.Parameters.Add(p2);
        cmd.Parameters.Add(p3);
        cmd.Parameters.Add(p4);

        SqlParameter output = new SqlParameter();
        output.ParameterName = "@out";
        output.SqlDbType = System.Data.SqlDbType.VarChar;
        output.Size = 100;
        output.Direction = System.Data.ParameterDirection.Output;
        cmd.Parameters.Add(output);

        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();
        Response.Write(output.Value.ToString());
    }
    protected void AcceptingApplication(object sender, EventArgs e)
    {
        string connStr = ConfigurationManager.ConnectionStrings["MyDbConn"].ToString();
        SqlConnection conn = new SqlConnection(connStr);

        SqlCommand cmd = new SqlCommand("respondToApplications", conn);
        cmd.CommandType = CommandType.StoredProcedure;
        string Username = (string)(Session["Username"]);
        SqlParameter p1 = new SqlParameter("@username_m", Username);
        string applicant = TextBox14.Text;
        SqlParameter p2 = new SqlParameter("@username2_a",applicant);
        SqlParameter p3 = new SqlParameter("@manager_response", "accept");
        cmd.Parameters.Add(p1);
        cmd.Parameters.Add(p2);
        cmd.Parameters.Add(p3);

        SqlParameter output = new SqlParameter();
        output.ParameterName = "@out";
        output.SqlDbType = System.Data.SqlDbType.VarChar;
        output.Size = 100;
        output.Direction = System.Data.ParameterDirection.Output;
        cmd.Parameters.Add(output);

        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();
        Response.Write(output.Value.ToString());

    }
    protected void RejectingApplication(object sender, EventArgs e)
    {
        string connStr = ConfigurationManager.ConnectionStrings["MyDbConn"].ToString();
        SqlConnection conn = new SqlConnection(connStr);

        SqlCommand cmd = new SqlCommand("respondToApplications", conn);
        cmd.CommandType = CommandType.StoredProcedure;
        string Username = (string)(Session["Username"]);
        SqlParameter p1 = new SqlParameter("@username_m", Username);
        string applicant = TextBox14.Text;
        SqlParameter p2 = new SqlParameter("@username2_a", applicant);
        SqlParameter p3 = new SqlParameter("@manager_response", "reject");
        cmd.Parameters.Add(p1);
        cmd.Parameters.Add(p2);
        cmd.Parameters.Add(p3);

        SqlParameter output = new SqlParameter();
        output.ParameterName = "@out";
        output.SqlDbType = System.Data.SqlDbType.VarChar;
        output.Size = 100;
        output.Direction = System.Data.ParameterDirection.Output;
        cmd.Parameters.Add(output);

        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();
        Response.Write(output.Value.ToString());

    }

    protected void AcceptingRequest(object sender, EventArgs e)
    {
        string connStr = ConfigurationManager.ConnectionStrings["MyDbConn"].ToString();
        SqlConnection conn = new SqlConnection(connStr);

        SqlCommand cmd = new SqlCommand("respondToRequests_Accept", conn);
        cmd.CommandType = CommandType.StoredProcedure;
        string Username = (string)(Session["Username"]);
        SqlParameter p1 = new SqlParameter("@username_m",Username);
        string startdate = TextBox15.Text;
        SqlParameter p2 = new SqlParameter("@start_date0", startdate);
        string applicant = TextBox16.Text;
        SqlParameter p3 = new SqlParameter("@applicant", applicant);
        SqlParameter p4 = new SqlParameter("@manager_response", "Accept");
        cmd.Parameters.Add(p1);
        cmd.Parameters.Add(p2);
        cmd.Parameters.Add(p3);
        cmd.Parameters.Add(p4);

        SqlParameter output = new SqlParameter();
        output.ParameterName = "@out";
        output.SqlDbType = System.Data.SqlDbType.VarChar;
        output.Size = 100;
        output.Direction = System.Data.ParameterDirection.Output;
        cmd.Parameters.Add(output);

        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();
        Response.Write(output.Value.ToString());
    }
    protected void RejectingRequest(object sender, EventArgs e)
    {
        string connStr = ConfigurationManager.ConnectionStrings["MyDbConn"].ToString();
        SqlConnection conn = new SqlConnection(connStr);

        SqlCommand cmd = new SqlCommand("respondToRequests_Reject", conn);
        cmd.CommandType = CommandType.StoredProcedure;
        string Username = (string)(Session["Username"]);
        SqlParameter p1 = new SqlParameter("@username_m", Username);
        string startdate = TextBox15.Text;
        SqlParameter p2 = new SqlParameter("@start_date0", startdate);
        string applicant = TextBox16.Text;
        SqlParameter p3 = new SqlParameter("@applicant", applicant);
        SqlParameter p4 = new SqlParameter("@manager_response", "accept");
        string reason = TextBox17.Text;
        SqlParameter p5 = new SqlParameter("@manager_reason",reason);
        cmd.Parameters.Add(p1);
        cmd.Parameters.Add(p2);
        cmd.Parameters.Add(p3);
        cmd.Parameters.Add(p4);
        cmd.Parameters.Add(p5);

        SqlParameter output = new SqlParameter();
        output.ParameterName = "@out";
        output.SqlDbType = System.Data.SqlDbType.VarChar;
        output.Size = 100;
        output.Direction = System.Data.ParameterDirection.Output;
        cmd.Parameters.Add(output);

        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();
        Response.Write(output.Value.ToString());
    }
    protected void ViewingRequest(object sender, EventArgs e)
    {
        string connStr = ConfigurationManager.ConnectionStrings["MyDbConn"].ToString();
        SqlConnection conn = new SqlConnection(connStr);

        SqlCommand cmd = new SqlCommand("viewNewRequests", conn);
        cmd.CommandType = CommandType.StoredProcedure;
        string Username = (string)(Session["Username"]);
        SqlParameter p1 = new SqlParameter("@username",Username);
        cmd.Parameters.Add(p1);

        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        GridView2.DataSource = dt;
        GridView2.DataBind();

        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();
    }
    protected void taketostaff(object sender, EventArgs e)
    {
        Response.Redirect("My Things.aspx", true);
    }

}