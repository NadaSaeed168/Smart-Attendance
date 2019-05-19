using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class viewRequest : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        string connStr = ConfigurationManager.ConnectionStrings["MyDbConn"].ToString();
        SqlConnection conn = new SqlConnection(connStr);

        SqlCommand cmd = new SqlCommand("viewBusinessRequest", conn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add(new SqlParameter("@username", Session["Username"]));

        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        veiwbussinessrequests.DataSource = dt;
        veiwbussinessrequests.DataBind();

        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();

        SqlCommand cmd1 = new SqlCommand("viewLeaveRequest", conn);
        cmd1.CommandType = CommandType.StoredProcedure;
        cmd1.Parameters.Add(new SqlParameter("@username", Session["Username"]));

        SqlDataAdapter sda1 = new SqlDataAdapter(cmd1);
        DataTable dt1 = new DataTable();
        sda1.Fill(dt1);
        viewleaverequests.DataSource = dt1;
        viewleaverequests.DataBind();

        conn.Open();
        cmd1.ExecuteNonQuery();
        conn.Close();
    }

    protected void request_response(object sender, EventArgs e)
    {
        string connStr = ConfigurationManager.ConnectionStrings["MyDbConn"].ToString();
        SqlConnection conn = new SqlConnection(connStr);

        ddlresponse.ClearSelection();
        string value = ddlresponse.SelectedValue;

        SqlCommand cmd = new SqlCommand("requestResponse", conn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add(new SqlParameter("@username", Session["Username"]));
        string startdate = txt_start_date.Text;
        cmd.Parameters.Add(new SqlParameter("@start_date0", startdate));
        string appli = txt_applicant.Text;
        cmd.Parameters.Add(new SqlParameter("@applicant", appli));
        cmd.Parameters.Add(new SqlParameter("@response", value));

        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        veiwbussinessrequests.DataSource = dt;
        veiwbussinessrequests.DataBind();

        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();
    }
}