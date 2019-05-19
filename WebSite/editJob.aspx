<%@ Page Language="C#" AutoEventWireup="true" CodeFile="editJob.aspx.cs" Inherits="editJob" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
    <%--    <asp:Label ID="jobtitle" runat="server" Text="Job Title: "></asp:Label>
        <asp:TextBox ID="job_title" runat="server" ></asp:TextBox>
    --%>
           <p><%= Session["@title"] %></p>
        <br />
       <asp:Label ID="lbl_sh_desc" runat="server" Text="Short Description: "></asp:Label>
        <asp:TextBox ID="txt_sh_desc" runat="server" ></asp:TextBox>

        <br />
        <asp:Label ID="dtdesc" runat="server" Text="Detailed Description: "></asp:Label>
        <asp:TextBox ID="Dt_desc" runat="server" ></asp:TextBox>

        <br />
        <asp:Label ID="minexp" runat="server" Text="Minimum Years of Experience: "></asp:Label>
        <asp:TextBox ID="min_exp" runat="server" ></asp:TextBox>

        <br />
        <asp:Label ID="lbl_salary" runat="server" Text="Salary: "></asp:Label>
        <asp:TextBox ID="salary" runat="server" ></asp:TextBox>

        <br />
        <asp:Label ID="lbl_deadline" runat="server" Text="Deadline for applying: "></asp:Label>
        <asp:TextBox ID="deadline" runat="server" ></asp:TextBox>

        <br />
        <asp:Label ID="noofvac" runat="server" Text="Number Of Vacancies : "></asp:Label>
        <asp:TextBox ID="no_of_vac" runat="server" ></asp:TextBox>

        <br />
        <asp:Label ID="workhours" runat="server" Text="Working Hours : "></asp:Label>
        <asp:TextBox ID="work_hours" runat="server" ></asp:TextBox>

        <br />
        <asp:Button ID="btn_edit_job" runat="server" Text="Edit Job" onclick="edit_job"/>
        </div>
    </form>
</body>
</html>
