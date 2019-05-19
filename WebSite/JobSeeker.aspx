<%@ Page Language="C#" AutoEventWireup="true" CodeFile="JobSeeker.aspx.cs" Inherits="JobSeeker" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            
               <asp:Button ID="btn_applyforjob" runat="server" Text="Apply For Job" onclick="applyforjob"/>
                <br/>
                <asp:Button ID="btn_viewstatus" runat="server" Text="View Your Status" onclick="viewstatus"/>
                <br/>
                <asp:Button ID="btn_deleteapp" runat="server" Text="Delete Pending Applications" onclick="deleteapp"/>
                <br/>
                <asp:Button ID="btn_choosejob" runat="server" Text="Choose a Job" onclick="choosejob"/>
                <br/>
                <asp:Button ID="btn_viewinfo" runat="server" Text="View Personal Info" onclick="viewinfo"/>
                <br/>
                <asp:Button ID="btn_editinfo" runat="server" Text="Edit Personal Info" onclick="editinfo"/>
                <br/>

        </div>
    </form>
</body>
</html>
