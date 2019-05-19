<%@ Page Language="C#" AutoEventWireup="true" CodeFile="HR.aspx.cs" Inherits="HR" %>

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
            <asp:Button ID="btn_addjob" runat="server" Text="Add Job" OnClick ="add_job_redirect" />
            <br/>
            <asp:Button ID="btn_viewjob" runat="server" Text="View Jobs or Applications" OnClick ="dep_jobs_redirect"/>
            <br/>
            <asp:Button ID="btn_post_announcmnet" runat="server" Text="Post Announcement" OnClick ="post_announ_redirect"/>
            <br/>
            <asp:Button ID="btn_view_request" runat="server" Text="View Requests" OnClick ="view_requests_redirect"/>
            <br/>
            <asp:Button ID="btn_attendance" runat="server" Text="View Attendance" OnClick ="view_attendance_redirect"/>
            <br/>
            <asp:Button ID="btn_hours" runat="server" Text="View Hours" OnClick ="view_hours_redirect"/>
            
        </div>
    </form>
</body>
</html>
