using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
public partial class Redo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string connStr = ConfigurationManager.ConnectionStrings["MyDbConn"].ToString();
        SqlConnection conn = new SqlConnection(connStr);
        SqlCommand cmd = new SqlCommand("viewtasks", conn);
        cmd.CommandType = CommandType.StoredProcedure;
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        cmd.Parameters.Add(new SqlParameter("@username", Session["Username"]));
        DataTable dt = new DataTable();
        sda.Fill(dt);
        grid1.DataSource = dt;
        grid1.DataBind();

        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();
    }
    protected void OnRowDataBound(object sender, System.Web.UI.WebControls.GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            e.Row.Attributes["onclick"] = Page.ClientScript.GetPostBackClientHyperlink(grid1, "Select$" + e.Row.RowIndex);
            e.Row.ToolTip = "Click to select this row.";
        }
    }

    protected void OnSelectedIndexChanged(object sender, EventArgs e)
    {

        msg.Visible = true;
        btn_clickhere.Visible = true;

    }

    protected void clickhere(object sender, EventArgs e)
    {
        string task = grid1.SelectedRow.Cells[0].Text;
        SqlConnection conn = new SqlConnection(@"Server=localhost;Database=iWork;User Id=sa;Password=Password123");
        SqlCommand cmd = new SqlCommand("change_task_status_to_assigned", conn);
        cmd.CommandType = CommandType.StoredProcedure;
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        cmd.Parameters.Add(new SqlParameter("@username", Session["Username"]));
        cmd.Parameters.Add(new SqlParameter("@task_name", task));
        SqlParameter error = cmd.Parameters.Add("@x", SqlDbType.Int);
        error.Direction = ParameterDirection.Output;


        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();

        if (error.Value.Equals(1))
        {
            msg1.Visible = true;
            btn_clickhere.Visible = false;
            msg.Visible = false;
        }
        else
        {
            msg2.Visible = true;
            msg.Visible = false;
        }
    }

}