using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void login(object sender, EventArgs e)
    {
        string connStr = ConfigurationManager.ConnectionStrings["MyDbConn"].ToString();
        SqlConnection conn = new SqlConnection(connStr);

        SqlCommand cmd = new SqlCommand("userLogin", conn);
        cmd.CommandType = CommandType.StoredProcedure;
        string username = txt_username.Text;
        string password = txt_password.Text;
        cmd.Parameters.Add(new SqlParameter("@username", username));
        cmd.Parameters.Add(new SqlParameter("@password", password));

        SqlParameter user = cmd.Parameters.Add("@user", SqlDbType.VarChar, 50);
        cmd.Parameters["@user"].Direction = ParameterDirection.Output;

        //// output parm
        SqlParameter count = cmd.Parameters.Add("@output", SqlDbType.Int);
        count.Direction = ParameterDirection.Output;

        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();

        //lblusertype.Text = "User: " + cmd.Parameters["@user"].Value.ToString();

        if (count.Value.Equals(1))
        {
            //this is how you store data to session variable.
            Session["Username"] = username;
            Session["user"] = user;
            lblusertype.Text = "User: " + cmd.Parameters["@user"].Value.ToString();
            Response.Write("Passed");
            if (user.Value.ToString().Equals("HR_Employee"))
                Response.Redirect("HR.aspx", true);
            else
            {
                if (user.Value.ToString().Equals("Manager"))
                    Response.Redirect("Manager's_HomePage", true);
                else
                {
                    if (user.Value.ToString().Equals("Job Seeker"))
                        Response.Redirect("JobSeeker.aspx", true);
                    else
                            Response.Redirect("RegularEmployee.aspx", true);
                }
            }
        }
        else
        {
            Response.Write("Username or password Wrong");
        }
    }

    
}