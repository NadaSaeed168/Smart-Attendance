<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Reply to mail.aspx.cs" Inherits="Default5" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        <asp:Label ID="lbl_serialnumber" runat="server" Text="Serial number of the first mail: "></asp:Label>
        <asp:TextBox ID="txt_serialnumber" runat="server"></asp:TextBox>
    
        <br />
             <asp:Label ID="lbl_name" runat="server" Text="Name:  "></asp:Label>
        <asp:TextBox ID="txt_name" runat="server"></asp:TextBox>
    
        <br />
         <asp:Label ID="lbl_body" runat="server" Text="Body:  "></asp:Label>
        <asp:TextBox ID="txt_body" runat="server"></asp:TextBox>
    
        <br />
        <asp:Label ID="lbl_subject" runat="server" Text="Subject: "></asp:Label>
        <asp:TextBox ID="txt_subject" runat="server"></asp:TextBox>
        <br />
        <asp:Button ID="btn_request" runat="server" Text="Send an email" onclick="replyemail"/>
        </div>
    </form>
</body>
</html>
