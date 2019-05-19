using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;


public partial class PostAnnoun : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void post(object sender, EventArgs e)
    {
        string connStr = ConfigurationManager.ConnectionStrings["MyDbConn"].ToString();
        SqlConnection conn = new SqlConnection(connStr);

        SqlCommand cmd = new SqlCommand("postAnnouncement", conn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add(new SqlParameter("@username", Session["Username"]));
        string title = txt_title.Text;
        cmd.Parameters.Add(new SqlParameter("@title", title));
        string type = txt_type.Text;
        cmd.Parameters.Add(new SqlParameter("@type1", type));
        string desc = txt_desc.Text;
        cmd.Parameters.Add(new SqlParameter("@description0", desc));


        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();
    }
}