<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RegularEmployee.aspx.cs" Inherits="RegularEmployee" %>

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
            <asp:Button ID="btn_project" runat="server" Text="View Projects" onclick="project"/>
                <br/>
            <asp:Button ID="btn_task" runat="server" Text="View Tasks" onclick="task"/>
                <br/>
                <asp:Button ID="btn_changestatus" runat="server" Text="Finish Task" onclick="changestatus"/>
                <br/>
                <asp:Button ID="btn_redo" runat="server" Text="Redo Task" onclick="redo"/>

        </div>
    </form>
</body>
</html>
