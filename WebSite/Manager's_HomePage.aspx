<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Manager's_HomePage.aspx.cs" Inherits="Manager_s_HomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="Button2" runat="server" Text="View My Properties as Staff Member" OnClick="taketostaff"/>
            <br />
            <br />
            <asp:Button ID="btn_viewApplications" runat="server" Text="View Applications" OnClick="ViewingApplication"/>
            <asp:GridView ID="grid1" runat="server" AutoGenerateColumns="false">    
             <Columns>    
                 <asp:BoundField DataField="username" HeaderText="Company Name" ItemStyle-Width="150" />    
                 <asp:BoundField DataField="personal_email" HeaderText="Personal Email" ItemStyle-Width="150" />
                 <asp:BoundField DataField="years_of_experience" HeaderText="Years of Experience" ItemStyle-Width="150" />
                 <asp:BoundField DataField="title" HeaderText="Title" ItemStyle-Width="150" />
                 <asp:BoundField DataField="score" HeaderText="Score" ItemStyle-Width="150" />
             </Columns>    
            </asp:GridView> 

            <br />

            <asp:Label ID="lbl_name" runat="server" Text="Project Name: "></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Lbl_startdate" runat="server" Text="Start Date: "></asp:Label>
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Lbl_enddate" runat="server" Text="End Date: "></asp:Label>
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="btn_createProject" runat="server" Text="Create a Project" OnClick="CreatingProjects"/>
            <br />
            <br />
            <asp:Label ID="Label14" runat="server" Text="Replace Employee : "></asp:Label>
            <asp:TextBox ID="regularoriginal" runat="server"></asp:TextBox>
            <asp:Label ID="Label15" runat="server" Text="with : "></asp:Label>
            <asp:TextBox ID="regularreplacement" runat="server"></asp:TextBox>
            <br />
             <asp:Label ID="Label16" runat="server" Text="Task : "></asp:Label>
            <asp:TextBox ID="Textbox2" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="changeregulartask1" runat="server" Text="Change Regular Employee for a Task" OnClick="changeregulartask"/>
            <br />
            <br />

            <asp:Button ID="removeregular" runat="server" Text="Remove Regular Employees" OnClick="RemoveRegularEmployees"/>
            <br />
            <br />
            <asp:Label ID="Label18" runat="server" Text="Project Name : "></asp:Label>
            <asp:TextBox ID="project" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label17" runat="server" Text="Regular Employee : "></asp:Label>
            <asp:TextBox ID="reg_emp" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="assign" runat="server" Text="Assign Regular Employee to Project" OnClick="AssignRegularEmployeeToProject"/>
            <br />
            <br />

            <asp:Label ID="Label1" runat="server" Text="Task Name: "></asp:Label>
            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label2" runat="server" Text="Project Name: "></asp:Label>
            <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label4" runat="server" Text="Deadline Date: "></asp:Label>
            <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label5" runat="server" Text="Description: "></asp:Label>
            <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label6" runat="server" Text="Regular Employee: "></asp:Label>
            <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="Button1" runat="server" Text="Define a task" OnClick="defineTaskAndAssignRegularEmployee"/>
            <br />
            <br />

            <asp:Button ID="Btn_viewTasks" runat="server" Text="View Tasks" OnClick="ViewingTasks"/>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false">    
            <Columns>    
                <asp:BoundField DataField="name0" HeaderText="Task Name" ItemStyle-Width="150" />    
                <asp:BoundField DataField="project" HeaderText="Project Name" ItemStyle-Width="150" />
                <asp:BoundField DataField="company" HeaderText="Company" ItemStyle-Width="150" />
                <asp:BoundField DataField="deadline" HeaderText="Deadline" ItemStyle-Width="150" />
                <asp:BoundField DataField="status0" HeaderText="Status" ItemStyle-Width="150" />
                <asp:BoundField DataField="description0" HeaderText="Description" ItemStyle-Width="150" />
                <asp:BoundField DataField="regular_employee" HeaderText="Regular Employee" ItemStyle-Width="150" />
                <asp:BoundField DataField="manager" HeaderText="Manager" ItemStyle-Width="150" />
                
            </Columns>    
            </asp:GridView> 
            <br />
            <br />
            <asp:Label ID="Label7" runat="server" Text="Task Name: "></asp:Label>
            <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label8" runat="server" Text="Reponse : "></asp:Label>
            <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label9" runat="server" Text="Deadline : "></asp:Label>
            <asp:TextBox ID="TextBox13" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="Btn_reviewTasks" runat="server" Text="Review a task" OnClick="reviewingTasks"/>
            <br />

            <br />
            <asp:Label ID="Label10" runat="server" Text="Applicant : "></asp:Label>
            <asp:TextBox ID="TextBox14" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="btn_accepta" runat="server" Text="Accept Application" OnClick="AcceptingApplication"/>
            <asp:Button ID="btn_rejecta" runat="server" Text="Reject Application" OnClick="RejectingApplication"/>
            <br />

            <br />
            <asp:Button ID="Btn_viewRequest" runat="server" Text="View New Request" OnClick="ViewingRequest"/>
            <br />
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="false">    
            <Columns>    
                <asp:BoundField DataField="start_date0" HeaderText="Start Date" ItemStyle-Width="150" />    
                <asp:BoundField DataField="applicant" HeaderText="Applicant" ItemStyle-Width="150" />
                <asp:BoundField DataField="end_date" HeaderText="End Date" ItemStyle-Width="150" />
                <asp:BoundField DataField="request_date" HeaderText="Request Date" ItemStyle-Width="150" />
                <asp:BoundField DataField="total_days" HeaderText="Total number of days" ItemStyle-Width="150" />
                <asp:BoundField DataField="hr_response" HeaderText="HR Response" ItemStyle-Width="150" />
                <asp:BoundField DataField="hr_employee" HeaderText="HR Employee" ItemStyle-Width="150" />
                <asp:BoundField DataField="manager" HeaderText="Manager" ItemStyle-Width="150" />
                <asp:BoundField DataField="manager_response" HeaderText="Manager Response" ItemStyle-Width="150" />
                <asp:BoundField DataField="manager_reason" HeaderText="Manager Reason" ItemStyle-Width="150" />
            </Columns>    
            </asp:GridView> 
            <br />
            <br />
            <asp:Label ID="Label11" runat="server" Text="Start Date : "></asp:Label>
            <asp:TextBox ID="TextBox15" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label12" runat="server" Text="Applicant : "></asp:Label>
            <asp:TextBox ID="TextBox16" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label13" runat="server" Text="In case of disapproval, please provide a reason : "></asp:Label>
            <asp:TextBox ID="TextBox17" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="Btn_acceptr" runat="server" Text="Accept Request" OnClick="AcceptingRequest"/>
            <asp:Button ID="Btn_rejectr" runat="server" Text="Reject Request" OnClick="RejectingRequest"/>
            <br />

        </div>
    </form>
</body>
</html>
