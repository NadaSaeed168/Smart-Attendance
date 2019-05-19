<%@ Page Language="C#" AutoEventWireup="true" CodeFile="newjob.aspx.cs" Inherits="newjob" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        <asp:Label ID="jobtitle" runat="server" Text="Job Title: "></asp:Label>
        <asp:TextBox ID="job_title" runat="server" ></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1"
            controltovalidate="job_title" 
            runat="server" ErrorMessage="Required Field">

        </asp:RequiredFieldValidator>
       
        <br />
        <asp:Label ID="lbl_sh_desc" runat="server" Text="Short Description: "></asp:Label>
        <asp:TextBox ID="txt_sh_desc" runat="server" ></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2"
            controltovalidate="txt_sh_desc"
            runat="server" ErrorMessage="Required Field">
        </asp:RequiredFieldValidator>
        
        <br />
        <asp:Label ID="dtdesc" runat="server" Text="Detailed Description: "></asp:Label>
        <asp:TextBox ID="Dt_desc" runat="server" ></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator10"
            controltovalidate="Dt_desc"
            runat="server" ErrorMessage="Required Field">
        </asp:RequiredFieldValidator>

        <br />
        <asp:Label ID="minexp" runat="server" Text="Minimum Years of Experience: "></asp:Label>
        <asp:TextBox ID="min_exp" runat="server" ></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" 
            controltovalidate="min_exp"
            runat="server" ErrorMessage="Required Field">

        </asp:RequiredFieldValidator>

        <br />
        <asp:Label ID="lbl_salary" runat="server" Text="Salary: "></asp:Label>
        <asp:TextBox ID="salary" runat="server" ></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator8"
            controltovalidate="salary"
            runat="server" ErrorMessage="Required Field">

        </asp:RequiredFieldValidator>

        <br />
        <asp:Label ID="lbl_deadline" runat="server" Text="Deadline for applying: "></asp:Label>
        <asp:TextBox ID="deadline" runat="server" ></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" 
            controltovalidate="deadline"
            runat="server" ErrorMessage="Required Field">

        </asp:RequiredFieldValidator>

        <br />
        <asp:Label ID="noofvac" runat="server" Text="Number Of Vacancies : "></asp:Label>
        <asp:TextBox ID="no_of_vac" runat="server" ></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" 
            controltovalidate="no_of_vac"
            runat="server" ErrorMessage="Required Field">

        </asp:RequiredFieldValidator>

        <br />
        <asp:Label ID="workhours" runat="server" Text="Working Hours : "></asp:Label>
        <asp:TextBox ID="work_hours" runat="server" ></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" 
            controltovalidate="work_hours"
            runat="server" ErrorMessage="Required Field">

        </asp:RequiredFieldValidator>

        <br />
        <asp:Button ID="btn_add_job" runat="server" Text="Add Job" onclick="addJob"/>

        <br />
        <asp:Button ID="btn_add_ques" runat="server" Text="Add Questions" onclick="addQuestions"/>
    

        </div>
    </form>
</body>
</html>
