﻿using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Task : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    public void viewtask(object sender, EventArgs e)
    {
        string connStr = ConfigurationManager.ConnectionStrings["MyDbConn"].ToString();
        SqlConnection conn = new SqlConnection(connStr);
        SqlCommand cmd = new SqlCommand("view_task_my_projects", conn);
        cmd.CommandType = CommandType.StoredProcedure;
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        string project = txt_enterproject.Text;
        cmd.Parameters.Add(new SqlParameter("@project", project));
        cmd.Parameters.Add(new SqlParameter("@username", Session["Username"]));
        DataTable dt = new DataTable();
        sda.Fill(dt);
        grid1.DataSource = dt;
        grid1.DataBind();

        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();

        txt_enterproject.Visible = false;
        lbl_enterproject.Visible = false;
        btn_viewtask.Visible = false;

        Session["Project"] = project;
    }

}