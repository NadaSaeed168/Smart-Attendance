using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    
    }


    protected void login(object sender, EventArgs e)
    {
        
        Response.Redirect("Login.aspx", true);

    }

    protected void register(object sender, EventArgs e)
    {
        //SqlConnection conn = new SqlConnection(@"Server=localhost;Database=iWork;User Id=sa;Password=Password123");


        Response.Redirect("Register.aspx", true);

    }

    protected void searchforjobs(object sender, EventArgs e)
    {
        //SqlConnection conn = new SqlConnection(@"Server=localhost;Database=iWork;User Id=sa;Password=Password123");


        Response.Redirect("SearchforJobs.aspx", true);

    }

    protected void avg_redirect(object sender, EventArgs e)
    {
        Response.Redirect("comAvgSal.aspx", true);
    }
    protected void search1(object sender, EventArgs e)
    {
        string connStr = ConfigurationManager.ConnectionStrings["MyDbConn"].ToString();
        SqlConnection conn = new SqlConnection(connStr);
        SqlCommand cmd = new SqlCommand("searchcompanies", conn);
        string cname = txt_cname.Text;
        //string caddress = txt_caddress.Text;
        //cmd.Parameters.Add(new SqlParameter("@address0", caddress));
        cmd.Parameters.Add(new SqlParameter("@name0", cname));
        SqlCommand cmd2 = new SqlCommand("SELECT * from Companies c where c.name0=" + cname, conn);
        cmd.CommandType = CommandType.StoredProcedure;
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        grid1.DataSource = dt;
        grid1.DataBind();
        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();

    }
    protected void search2(object sender, EventArgs e)
    {
        string connStr = ConfigurationManager.ConnectionStrings["MyDbConn"].ToString();
        SqlConnection conn = new SqlConnection(connStr);
        SqlCommand cmd = new SqlCommand("searchcompanies", conn);
        //string cname = txt_cname.Text;
        string caddress = txt_caddress.Text;
        cmd.Parameters.Add(new SqlParameter("@address0", caddress));
        //cmd.Parameters.Add(new SqlParameter("@name0", cname));
        SqlCommand cmd2 = new SqlCommand("SELECT * from Companies c where c.address0=" + caddress, conn);
        cmd.CommandType = CommandType.StoredProcedure;
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        grid1.DataSource = dt;
        grid1.DataBind();
        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();
    }
    protected void button2_Click(object sender, EventArgs e)
    {
        string connStr = ConfigurationManager.ConnectionStrings["MyDbConn"].ToString();
        SqlConnection conn = new SqlConnection(connStr);

        SqlCommand cmd = new SqlCommand("SELECT * from Companies c where c.type0='national'", conn);
        //cmd.CommandType = CommandType.StoredProcedure;
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        grid1.DataSource = dt;
        grid1.DataBind();
        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();
    }
    protected void button3_Click(object sender, EventArgs e)
    {
        string connStr = ConfigurationManager.ConnectionStrings["MyDbConn"].ToString();
        SqlConnection conn = new SqlConnection(connStr);

        SqlCommand cmd = new SqlCommand("SELECT * from Companies c where c.type0='international'", conn);
        //cmd.CommandType = CommandType.StoredProcedure;
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        grid1.DataSource = dt;
        grid1.DataBind();
        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();
    }
    protected void button4_Click(object sender, EventArgs e)
    {
        string connStr = ConfigurationManager.ConnectionStrings["MyDbConn"].ToString();
        SqlConnection conn = new SqlConnection(connStr);

        SqlCommand cmd = new SqlCommand("SELECT c.name0 from Companies c where c.type0='national'", conn);
        //cmd.CommandType = CommandType.StoredProcedure;
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        grid1.DataSource = dt;
        grid1.DataBind();
        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();
    }
    protected void button5_Click(object sender, EventArgs e)
    {
        string connStr = ConfigurationManager.ConnectionStrings["MyDbConn"].ToString();
        SqlConnection conn = new SqlConnection(connStr);

        SqlCommand cmd = new SqlCommand("SELECT c.name0 from Companies c where c.type0='international'", conn);
        //cmd.CommandType = CommandType.StoredProcedure;
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        grid1.DataSource = dt;
        grid1.DataBind();
        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();
    }
    protected void viewInformation(object sender, EventArgs e)
    {
        string connStr = ConfigurationManager.ConnectionStrings["MyDbConn"].ToString();
        SqlConnection conn = new SqlConnection(connStr);
        SqlCommand cmd = new SqlCommand("viewInformationOfDepartmentinCompany", conn);
        cmd.CommandType = CommandType.StoredProcedure;
        string dep = TextBox2.Text;
        string com = TextBox1.Text;
        SqlParameter p1 = new SqlParameter("@department", dep);
        SqlParameter p2 = new SqlParameter("@company", com);
        cmd.Parameters.Add(p1);
        cmd.Parameters.Add(p2);

        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();

        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        grid1.DataSource = dt;
        grid1.DataBind();

    }
    protected void displayCompanywithDepartment(object sender, EventArgs e)
    {
        string connStr = ConfigurationManager.ConnectionStrings["MyDbConn"].ToString();
        SqlConnection conn = new SqlConnection(connStr);
        SqlCommand cmd = new SqlCommand("displayCompanyWithDepartment", conn);
        cmd.CommandType = CommandType.StoredProcedure;
        string com = TextBox3.Text;
        SqlParameter p = new SqlParameter("@company", com);
        cmd.Parameters.Add(p);

        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();

        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        grid1.DataSource = dt;
        grid1.DataBind();

    }
}