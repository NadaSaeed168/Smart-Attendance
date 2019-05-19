using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
public partial class JobApplication : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string connStr = ConfigurationManager.ConnectionStrings["MyDbConn"].ToString();
        SqlConnection conn = new SqlConnection(connStr);

        SqlCommand cmd = new SqlCommand("jobavailble", conn);
        cmd.CommandType = CommandType.StoredProcedure;
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        grid1.DataSource = dt;
        grid1.DataBind();


    }

    protected void viewques(object sender, EventArgs e)
    {
        Response.Redirect("interviewques.aspx", true);
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
        btn_apply.Visible = true;

    }

    public void apply(object sender, EventArgs e)
    {
        btn_apply.Visible = false;
        SqlConnection conn = new SqlConnection(@"Server=localhost;Database=iWork;User Id=sa;Password=Password123");
        SqlCommand cmd = new SqlCommand("apply_for_job", conn);
        cmd.CommandType = CommandType.StoredProcedure;
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        string title = grid1.SelectedRow.Cells[0].Text;
        string department = grid1.SelectedRow.Cells[1].Text;
        int dept = Convert.ToInt32(department);
        string company = grid1.SelectedRow.Cells[2].Text;

        //Response.Write();
        cmd.Parameters.Add(new SqlParameter("@username", Session["Username"]));
        cmd.Parameters.Add(new SqlParameter("@dept", dept));
        cmd.Parameters.Add(new SqlParameter("@company", company));
        cmd.Parameters.Add(new SqlParameter("@title", title));

        SqlParameter error = cmd.Parameters.Add("@x", SqlDbType.Int);
        error.Direction = ParameterDirection.Output;


        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();


        if (error.Value.Equals(0))
        {
            lblusertype.Visible = true;


        }

        if (error.Value.Equals(1))
        {
            lblusertype.Visible = false;
            lblusertype1.Visible = true;
            btn_viewques.Visible = true;
            Session["title"] = title;
            Session["company"] = company;
            Session["department"] = dept;

        }

        if (error.Value.Equals(2))
        {
            lblusertype.Visible = false;
            lblusertype2.Visible = true;
        }






    }



}