<%@ Page Language="C#" AutoEventWireup="true" CodeFile="viewJobs.aspx.cs" Inherits="viewJobs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
          <asp:GridView ID="view_jobs" runat="server" AutoGenerateColumns="false">    
             <Columns>    
                 <asp:BoundField DataField="title" HeaderText="Job Title" ItemStyle-Width="150" />    
                 <asp:BoundField DataField="department" HeaderText="Department" ItemStyle-Width="150" />
                 <asp:BoundField DataField="company" HeaderText="Company Name" ItemStyle-Width="150" />
                 <asp:BoundField DataField="short_description" HeaderText="Short description" ItemStyle-Width="150" />
                 <asp:BoundField DataField="detailed_description" HeaderText="detailed description" ItemStyle-Width="150" />
                 <asp:BoundField DataField="min_experience" HeaderText="Minimum Years of Experience" ItemStyle-Width="150" />
                 <asp:BoundField DataField="salary" HeaderText="Salary" ItemStyle-Width="150" />
                 <asp:BoundField DataField="deadline" HeaderText="Application Deadline" ItemStyle-Width="150" />
                 <asp:BoundField DataField="no_of_vacancies" HeaderText="Number of Vacancies" ItemStyle-Width="150" />
                 <asp:BoundField DataField="working_hours" HeaderText="Working Hours" ItemStyle-Width="150" />

             </Columns>    
         </asp:GridView>
            <br />
            <asp:Button ID="btn_edit_job" runat="server" Text="Edit Job" OnClick="edit_job_redirect" />  
        </div>
    </form>
</body>
</html>
