using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default5 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void replyemail(object sender, EventArgs e)
    {
        string connStr = ConfigurationManager.ConnectionStrings["MyDbConn"].ToString();
        SqlConnection conn = new SqlConnection(connStr);
        SqlCommand cmd = new SqlCommand("reply_to_emails", conn);
        cmd.CommandType = CommandType.StoredProcedure;
        string username = txt_name.Text;
        //(String)(Session["Username"]);
        string serial_number = txt_serialnumber.Text;
        string body = txt_body.Text;
        string subject = txt_subject.Text;
        cmd.Parameters.Add(new SqlParameter("@name", username));
        cmd.Parameters.Add(new SqlParameter("@serialno1", serial_number));
        cmd.Parameters.Add(new SqlParameter("@body", body));
        cmd.Parameters.Add(new SqlParameter("@subject0", subject));
        //Response.Redirect("My Things", true);
        SqlParameter output = new SqlParameter();
        output.ParameterName = "@notsender";
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
}