using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class View_Announcements : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        /*string connStr = ConfigurationManager.ConnectionStrings["milestone3"].ToString();
        SqlConnection conn = new SqlConnection(connStr);

        SqlCommand cmd = new SqlCommand("select A.* from Announcements A inner join Staff_Members s on A.hr_employee = s.username inner join Staff_Members m on s.company = m.company", conn);
        //cmd.CommandType = CommandType.StoredProcedure;
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        grid1.DataSource = dt;
        grid1.DataBind();*/
        string connStr = ConfigurationManager.ConnectionStrings["MyDbConn"].ToString();
        SqlConnection conn = new SqlConnection(connStr);
        SqlCommand cmd = new SqlCommand("view_announcements", conn);
        cmd.CommandType = CommandType.StoredProcedure;
        string username = (String)(Session["Username"]);
        //txt_username.Text;
        //(String)(Session["Username"]);
        SqlParameter p1 = new SqlParameter("@name", username);
        cmd.Parameters.Add(p1);
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
}