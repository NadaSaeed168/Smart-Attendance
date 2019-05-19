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
    protected void businessrequest(object sender, EventArgs e)
    {
        string connStr = ConfigurationManager.ConnectionStrings["MyDBConn"].ToString();
        SqlConnection conn = new SqlConnection(connStr);

        SqlCommand cmd = new SqlCommand("business_trip_request", conn);
        cmd.CommandType = CommandType.StoredProcedure;
        //SqlDataAdapter da = new SqlDataAdapter(cmd);
        //da.SelectCommand = cmd;
        //DataSet ds = new DataSet();
        // da.Fill(ds,"leave_request")

        string start_date = txt_startdate.Text;
        string username = 
            //(String)(Session["Username"]);
        txt_username.Text;
        string end_date = txt_enddate.Text;
        string request_date = txt_requestdate.Text;
        string hr_emplyee = txt_hremployee.Text;
        string manager = txt_manager.Text;
        string destination = txt_destination.Text;
        string purpose = txt_purpose.Text;
        cmd.Parameters.Add(new SqlParameter("@start_date", start_date));
        cmd.Parameters.Add(new SqlParameter("@applicant", username));
        cmd.Parameters.Add(new SqlParameter("@end_date", end_date));
        cmd.Parameters.Add(new SqlParameter("@request_date", request_date));
        cmd.Parameters.Add(new SqlParameter("@hr_employee", hr_emplyee));
        cmd.Parameters.Add(new SqlParameter("@manager", manager));
        cmd.Parameters.Add(new SqlParameter("@destination", destination));
        cmd.Parameters.Add(new SqlParameter("@purpose", purpose));
        SqlParameter output = new SqlParameter();
        output.ParameterName = "@ol";
        output.SqlDbType = System.Data.SqlDbType.VarChar;
        output.Size = 100;
        output.Direction = System.Data.ParameterDirection.Output;
        cmd.Parameters.Add(output);
        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();
    }

}