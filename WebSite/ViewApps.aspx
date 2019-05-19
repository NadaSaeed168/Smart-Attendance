<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ViewApps.aspx.cs" Inherits="ViewApps" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="new_apps" runat="server" AutoGenerateColumns="false">    
             <Columns>    
                 <asp:BoundField DataField="job" HeaderText="Job Title" ItemStyle-Width="150" />
                 <asp:BoundField DataField="job_seeker" HeaderText="Applicant" ItemStyle-Width="150" />
                 <asp:BoundField DataField="score" HeaderText="Score" ItemStyle-Width="150" />
                 <asp:BoundField DataField="first_name" HeaderText="First Name" ItemStyle-Width="150" />
                 <asp:BoundField DataField="middle_name" HeaderText="Middle Name" ItemStyle-Width="150" />
                 <asp:BoundField DataField="last_name" HeaderText="Last Name" ItemStyle-Width="150" />
                 <asp:BoundField DataField="birth_date" HeaderText="Birthdate" ItemStyle-Width="150" />
                 <asp:BoundField DataField="age" HeaderText="Age" ItemStyle-Width="150" />
                 <asp:BoundField DataField="personal_email" HeaderText="Email" ItemStyle-Width="150" />
                 <asp:BoundField DataField="years_of_experience" HeaderText="Years of Experience" ItemStyle-Width="150" />
             </Columns> 
           </asp:GridView>
            <br/>
            <asp:Label ID="lbl_job" runat="server" Text="Type the job title to view."></asp:Label>
            <asp:TextBox ID="txt_job" runat="server"></asp:TextBox>
            <asp:Button ID="btn_job" runat="server" Text="View Job" OnClick ="view_job_redirect" />
             <br/>
            <asp:Label ID="lbl_job_seeker" runat="server" Text="Type the applicant name to view his/her information"></asp:Label>
            <asp:TextBox ID="txt_job_seeker" runat="server"></asp:TextBox>
            <asp:Button ID="btn_job_seeker" runat="server" Text="View Job Seeker" OnClick ="view_job_seeker_redirect" />
        
            <br />
            <asp:Label ID="lbl_response" runat="server" Text="Response: "></asp:Label>
            <asp:DropDownList ID="ddlresponse" runat="server">
             <asp:ListItem Text="Accpet" Value='accpet'></asp:ListItem>
             <asp:ListItem Text="Reject" Value='reject'></asp:ListItem>
            </asp:DropDownList>
            <asp:Button ID="btn_response" runat="server" Text="Respond" OnClick ="response" />
        </div>
    </form>
</body>
</html>
