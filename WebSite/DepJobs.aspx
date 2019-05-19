<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DepJobs.aspx.cs" Inherits="DepJobs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="Dep_jobs" runat="server" AutoGenerateColumns="false">    
             <Columns>    
                 <asp:BoundField DataField="title" HeaderText="Job Title" ItemStyle-Width="150" />    
             </Columns>    
         </asp:GridView> 

            <br />
            <asp:Label ID="lbl_job" runat="server" Text="Please type the job title then click on the desired button."></asp:Label>
            <asp:TextBox ID="txt_job_title" runat="server"></asp:TextBox> 
            <br />
            <asp:Button ID="btn_view_job" runat="server" Text="View Job" OnClick ="view_job_redirect"/></div>
        <br />
            <asp:Button ID="btn_view_apps" runat="server" Text="View New Applications" OnClick ="view_apps_redirect"/></div>
    </form>
</body>
</html>
