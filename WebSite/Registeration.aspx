<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Registeration.aspx.cs" Inherits="Registeration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            
            <asp:Label ID="lbl_username" runat="server" Text="Username: "></asp:Label>
        
            <asp:TextBox ID="txt_username" runat="server"></asp:TextBox>
        
            <br />
            <asp:Label ID="lbl_password" runat="server" Text="Password: "></asp:Label>
            <asp:TextBox ID="txt_password" runat="server" TextMode="Password"></asp:TextBox>
        
            <br />

           <!-- <asp:Label ID="lbl_personalemail" runat="server" Text="PersonalEmail: "></asp:Label>
            <asp:TextBox ID="txt_personalemail" runat="server" TextMode="PersonalEmail"></asp:TextBox>
        
            <br />-->

            <asp:Button ID="btn_confirm" runat="server" Text="Confirm" onclick="confirm"/>
           


 
        </div>
    </form>
</body>
</html>
