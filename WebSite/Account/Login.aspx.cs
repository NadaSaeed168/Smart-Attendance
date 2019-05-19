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

        SqlParameter user = new SqlParameter();
        user.ParameterName = "@user";
        user.SqlDbType = System.Data.SqlDbType.VarChar;
        user.Size = 100;
        user.Direction = System.Data.ParameterDirection.Output;
         cmd.Parameters.Add(user);
        //cmd.Parameters["@user"].Direction = ParameterDirection.Output;

        //// output parm
        //SqlParameter count = cmd.Parameters.Add("@count", SqlDbType.Int);
         //count.Direction = ParameterDirection.Output;

        
        Session["Username"] = username;
        Session["user"] = user;
        Response.Redirect("Manager's_HomePage", true);
        //lblusertype.Text = "User: " + cmd.Parameters["@user"].Value.ToString();
        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();

        if (!(user.Value.ToString().Equals(null)))
        {
            //this is how you store data to session variable.
            
            Response.Write("Passed");
            
        }
        else
        {
            Response.Write("Failed");
        }
    }
}