using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DeleteJob : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string connStr = ConfigurationManager.ConnectionStrings["MyDbConn"].ToString();
        SqlConnection conn = new SqlConnection(connStr);
        SqlCommand cmd = new SqlCommand("viewmyapp", conn);
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

        lblusertype.Visible = true;
        btn_delete.Visible = true;

    }
    protected void delete(object sender, EventArgs e)
    {
        string task = grid1.SelectedRow.Cells[0].Text;
        SqlConnection conn = new SqlConnection(@"Server=localhost;Database=iWork;User Id=sa;Password=Password123");
        SqlCommand cmd = new SqlCommand("delete_pending_applications", conn);
        cmd.CommandType = CommandType.StoredProcedure;
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        cmd.Parameters.Add(new SqlParameter("@username", Session["Username"]));
        cmd.Parameters.Add(new SqlParameter("@title", Session["title"]));
        cmd.Parameters.Add(new SqlParameter("@comp", Session["company"]));
        cmd.Parameters.Add(new SqlParameter("@dept", Session["department"]));
        SqlParameter error = cmd.Parameters.Add("@x", SqlDbType.Int);
        error.Direction = ParameterDirection.Output;



        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();


        if (error.Value.Equals(1))
        {


            //SqlCommand cmd1 = new SqlCommand("viewmyapp", conn);
            //cmd1.CommandType = CommandType.StoredProcedure;
            //SqlDataAdapter sda1 = new SqlDataAdapter(cmd1);

            //cmd1.Parameters.Add(new SqlParameter("@username", Session["Username"]));
            //DataTable dt = new DataTable();
            //sda1.Fill(dt);
            //grid2.DataSource = dt;
            //grid2.DataBind();

            //conn.Open();
            //cmd1.ExecuteNonQuery();
            //conn.Close();
            lblusertype.Visible = false;
            btn_delete.Visible = false;
            lblusertype1.Visible = true;
            grid1.Visible = false;
            //grid2.Visible = true;
        }
        else
        {
            if (error.Value.Equals(0))
            {
                lblusertype2.Visible = true;

            }

        }

    }

}