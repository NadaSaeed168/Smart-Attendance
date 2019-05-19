<%@ Page Language="C#" AutoEventWireup="true" CodeFile="JobApplication.aspx.cs" Inherits="JobApplication" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            
                <asp:GridView ID="grid1" runat="server" AutoGenerateColumns="false" OnRowDataBound="OnRowDataBound" OnSelectedIndexChanged = "OnSelectedIndexChanged">    
             <Columns>    
                 <asp:BoundField DataField="title" HeaderText="Job Title" ItemStyle-Width="150" />    
                 <asp:BoundField DataField="department" HeaderText="Company Department" ItemStyle-Width="150" />
                 <asp:BoundField DataField="company" HeaderText="Company" ItemStyle-Width="150" />    
                 <asp:BoundField DataField="short_description" HeaderText="Short Description" ItemStyle-Width="150" />
                 <asp:BoundField DataField="detailed_description" HeaderText="Detailed Description" ItemStyle-Width="150" />    
                 <asp:BoundField DataField="min_experience" HeaderText="Minimum Experience" ItemStyle-Width="150" />
                 <asp:BoundField DataField="salary" HeaderText="Job Salary" ItemStyle-Width="150" />    
                 <asp:BoundField DataField="deadline" HeaderText="Deadline" ItemStyle-Width="150" />
                 <asp:BoundField DataField="no_of_vacancies" HeaderText="Number of Vacancies" ItemStyle-Width="150" />    
                 <asp:BoundField DataField="working_hours" HeaderText="Working Hours" ItemStyle-Width="150" />
             </Columns>    
            </asp:GridView>  
                <br/>
               
                <br/>
                <asp:Button ID="btn_apply" runat="server" Text="Apply" onclick="apply" Visible=false/>
                <br/>
                <asp:Label ID="lblusertype" runat="server"  Text = "Sorry you cant apply for this job as you don't have the required years of experience" Visible=false ForeColor='Crimson'></asp:Label>
                <asp:Label ID="lblusertype2" runat="server"  Text = "Sorry you cant apply for this job as you it is in the review process" Visible=false ForeColor='Crimson'></asp:Label>
                <asp:Label ID="lblusertype1" runat="server"  Text = "You have successfully applied for this job" Visible=false ForeColor='Cyan'></asp:Label>
                <asp:Button ID="btn_viewques" runat="server" Text="View Interview Questions" onclick="viewques" Visible=false/>



        </div>
    </form>
</body>
</html>
