using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default4 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }
    protected void button1_Click(object sender, EventArgs e)
    {
        //Server.Transfer("Leave_Request.aspx", true);
        string connStr = ConfigurationManager.ConnectionStrings["MyDbConn"].ToString();
        SqlConnection conn = new SqlConnection(connStr);

        SqlCommand cmd = new SqlCommand("leave_request", conn);
        cmd.CommandType = CommandType.StoredProcedure;
        string start_date = txt_startdate.Text;
        string username = (String)(Session["Username"]);
        string end_date = txt_enddate.Text;
        string hr_emplyee = txt_hremployee.Text;
        string manager = txt_manager.Text;
        string type = txt_type.Text;
        cmd.Parameters.Add(new SqlParameter("@start_date", start_date));
         cmd.Parameters.Add(new SqlParameter("@applicant", username));
         cmd.Parameters.Add(new SqlParameter("@end_date", end_date));
         cmd.Parameters.Add(new SqlParameter("@hr_employee", hr_emplyee));
         cmd.Parameters.Add(new SqlParameter("@manager", manager));
         cmd.Parameters.Add(new SqlParameter("@type", type));
        /*conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();*/
        SqlParameter output = new SqlParameter();
        output.ParameterName = "@ol";
        output.SqlDbType = System.Data.SqlDbType.VarChar;
        output.Size = 100;
        output.Direction = System.Data.ParameterDirection.Output;
        cmd.Parameters.Add(output);
        
        if (output.Value != null)
        {
            Response.Write(output.Value.ToString());
        }
        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();
    }
    protected void button2_Click(object sender, EventArgs e)
    {
        Server.Transfer("Business Request.aspx", true);

    }
    protected void button3_Click(object sender, EventArgs e)
    {
        Server.Transfer("Status of requests.aspx", true);
    }
    protected void button4_Click(object sender, EventArgs e)
    {
        //Server.Transfer("Email.aspx", true);
        string connStr = ConfigurationManager.ConnectionStrings["MyDbConn"].ToString();
        SqlConnection conn = new SqlConnection(connStr);
        SqlCommand cmd = new SqlCommand("send_email", conn);
        cmd.CommandType = CommandType.StoredProcedure;
        string recipient = txt_recipient.Text;
        string username = (String)(Session["Username"]);
        string body = txt_body.Text;
        string subject = txt_subject.Text;
        SqlParameter p1 = new SqlParameter("@name", username);
        cmd.Parameters.Add(p1);
        SqlParameter p2 = new SqlParameter("@recipient", recipient);
        cmd.Parameters.Add(p2);
        SqlParameter p3 = new SqlParameter("@body", body);
        cmd.Parameters.Add(p3);
        SqlParameter p4 = new SqlParameter("@subject0", subject);
        cmd.Parameters.Add(p4);
        SqlParameter output = new SqlParameter();
        output.ParameterName = "@smnull";
        output.SqlDbType = System.Data.SqlDbType.VarChar;
        output.Size = 100;
        output.Direction = System.Data.ParameterDirection.Output;
        cmd.Parameters.Add(output);
        SqlParameter nc = new SqlParameter();
        nc.ParameterName = "@c";
        nc.SqlDbType = System.Data.SqlDbType.VarChar;
        nc.Size = 100;
        nc.Direction = System.Data.ParameterDirection.Output;
        cmd.Parameters.Add(nc);
        //Response.Redirect("My Things", true);
        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();
        if (output.Value != null)
        {
            Response.Write(output.Value.ToString());
        }
        if (nc.Value != null)
        {
            Response.Write(nc.Value.ToString());
        }
    }

    protected void button5_Click(object sender, EventArgs e)
    {
        //Server.Transfer("Check Mails.aspx", true);
        string connStr = ConfigurationManager.ConnectionStrings["MyDbConn"].ToString();
        SqlConnection conn = new SqlConnection(connStr);
        SqlCommand cmd = new SqlCommand("view_emails", conn);
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
    protected void button6_Click(object sender, EventArgs e)
    {
        Server.Transfer("View Announcements.aspx", true);
    }
    protected void button8_Click(object sender, EventArgs e)
    {
        //Server.Transfer("Reply to mail.aspx", true);
        string connStr = ConfigurationManager.ConnectionStrings["MyDbConn"].ToString();
        SqlConnection conn = new SqlConnection(connStr);
        SqlCommand cmd = new SqlCommand("reply_to_emails", conn);
        cmd.CommandType = CommandType.StoredProcedure;
        string username = (String)(Session["Username"]);
        string serial_number = txt_serialnumber.Text;
        string body = txt_body2.Text;
        string subject = txt_subject2.Text;
        cmd.Parameters.Add(new SqlParameter("@name", username));
        cmd.Parameters.Add(new SqlParameter("@serialno1", serial_number));
        cmd.Parameters.Add(new SqlParameter("@body", body));
        cmd.Parameters.Add(new SqlParameter("@subject0", subject));
        //Response.Redirect("My Things", true);
        
        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();
        
    }
    protected void Check_in(object sender, EventArgs e)
        {
        string connStr = ConfigurationManager.ConnectionStrings["MyDbConn"].ToString();
        SqlConnection conn = new SqlConnection(connStr);
        SqlCommand cmd = new SqlCommand("Check_In_staffmember", conn);
        cmd.CommandType = CommandType.StoredProcedure;
        string username = (String)(Session["Username"]);
        cmd.Parameters.Add(new SqlParameter("Username", username));
        SqlParameter output = new SqlParameter();
        output.ParameterName = "@smnull";
        output.SqlDbType = System.Data.SqlDbType.VarChar;
        output.Size = 100;
        output.Direction = System.Data.ParameterDirection.Output;
        cmd.Parameters.Add(output);
        SqlParameter dayoff = new SqlParameter();
        dayoff.ParameterName = "@dayoff";
        dayoff.SqlDbType = System.Data.SqlDbType.VarChar;
        dayoff.Size = 100;
        dayoff.Direction = System.Data.ParameterDirection.Output;
        cmd.Parameters.Add(dayoff);
        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();
        if (output.Value != null)
        {
            Response.Write(output.Value.ToString());
        }
        if (dayoff.Value != null)
        {
            Response.Write(dayoff.Value.ToString());
        }
    }
    protected void Check_out(object sender, EventArgs e)
    {
        //string connStr = ConfigurationManager.ConnectionStrings["milestone3"].ToString();
        //SqlConnection conn = new SqlConnection(connStr);
        //SqlCommand cmd = new SqlCommand("Check_Out_staffmember", conn);
        //cmd.CommandType = CommandType.StoredProcedure;
        //Server.Transfer("username and password.aspx", true);
        string connStr = ConfigurationManager.ConnectionStrings["MyDbConn"].ToString();
        SqlConnection conn = new SqlConnection(connStr);
        SqlCommand cmd = new SqlCommand("Check_Out_staffmember", conn);
        cmd.CommandType = CommandType.StoredProcedure;
        string username = (String)(Session["Username"]);
        cmd.Parameters.Add(new SqlParameter("Username", username));
        SqlParameter output = new SqlParameter();
        output.ParameterName = "@smnull";
        output.SqlDbType = System.Data.SqlDbType.VarChar;
        output.Size = 100;
        output.Direction = System.Data.ParameterDirection.Output;
        cmd.Parameters.Add(output);
        SqlParameter dayoff = new SqlParameter();
        dayoff.ParameterName = "@dayoff";
        dayoff.SqlDbType = System.Data.SqlDbType.VarChar;
        dayoff.Size = 100;
        dayoff.Direction = System.Data.ParameterDirection.Output;
        cmd.Parameters.Add(dayoff);
        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();
        if (output.Value != null)
        {
            Response.Write(output.Value.ToString());
        }
        if (dayoff.Value != null)
        {
            Response.Write(dayoff.Value.ToString());
        }
    }
    protected void button7_Click(object sender, EventArgs e)
    {
        string connStr = ConfigurationManager.ConnectionStrings["MyDbConn"].ToString();
        SqlConnection conn = new SqlConnection(connStr);
        SqlCommand cmd = new SqlCommand("delete_request1", conn);
        cmd.CommandType = CommandType.StoredProcedure;
        string username = (String)(Session["Username"]);
        cmd.Parameters.Add(new SqlParameter("@name", username));
        string date = txt_date.Text;
        cmd.Parameters.Add(new SqlParameter("@startdate", date));
        SqlParameter output = new SqlParameter();
        output.ParameterName = "@smnull";
        output.SqlDbType = System.Data.SqlDbType.VarChar;
        output.Size = 100;
        output.Direction = System.Data.ParameterDirection.Output;
        cmd.Parameters.Add(output);
        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();
        if (output.Value != null)
        {
            Response.Write(output.Value.ToString());
        }
    }
    
    protected void button12_Click(object sender, EventArgs e)
    {
        string connStr = ConfigurationManager.ConnectionStrings["MyDbConn"].ToString();
        SqlConnection conn = new SqlConnection(connStr);
        SqlCommand cmd = new SqlCommand("Check_Attendance_staffmember", conn);
        cmd.CommandType = CommandType.StoredProcedure;
        string username = (String)(Session["Username"]);
        cmd.Parameters.Add(new SqlParameter("@name", username));
        string sdate = txt_x.Text;
        cmd.Parameters.Add(new SqlParameter("@startdate", sdate));
        string edate = txt_y.Text;
        cmd.Parameters.Add(new SqlParameter("@enddate", edate));
        SqlParameter output1 = new SqlParameter();
        output1.ParameterName = "@check_in";
        output1.SqlDbType = System.Data.SqlDbType.VarChar;
        output1.Size = 100;
        output1.Direction = System.Data.ParameterDirection.Output;
        cmd.Parameters.Add(output1);
        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();
        if (output1.Value != null)
        {
            Response.Write(output1.Value.ToString());
        }
        SqlParameter output2 = new SqlParameter();
        output1.ParameterName = "@check_out";
        output2.SqlDbType = System.Data.SqlDbType.VarChar;
        output2.Size = 100;
        output2.Direction = System.Data.ParameterDirection.Output;
        cmd.Parameters.Add(output2);
        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();
        if (output2.Value != null)
        {
            Response.Write(output2.Value.ToString());
        }
        SqlParameter output3 = new SqlParameter();
        output3.ParameterName = "@duration";
        output3.SqlDbType = System.Data.SqlDbType.VarChar;
        output3.Size = 100;
        output3.Direction = System.Data.ParameterDirection.Output;
        cmd.Parameters.Add(output3);
        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();
        if (output3.Value != null)
        {
            Response.Write(output3.Value.ToString());
        }
        SqlParameter output4 = new SqlParameter();
        output3.ParameterName = "@missing_hours";
        output4.SqlDbType = System.Data.SqlDbType.VarChar;
        output4.Size = 100;
        output4.Direction = System.Data.ParameterDirection.Output;
        cmd.Parameters.Add(output4);
        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();
        if (output4.Value != null)
        {
            Response.Write(output4.Value.ToString());
        }
    }

}