<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PostAnnoun.aspx.cs" Inherits="PostAnnoun" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
           
            <asp:Label ID="lbl_title" runat="server" Text="Title: "></asp:Label>
            <asp:TextBox ID="txt_title" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
               controltovalidate="txt_title" ErrorMessage="Required Field">
            </asp:RequiredFieldValidator>
            <br/>
            <asp:Label ID="lbl_type" runat="server" Text="Type: "></asp:Label>
            <asp:TextBox ID="txt_type" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
               controltovalidate="txt_type" ErrorMessage="Required Field">
            </asp:RequiredFieldValidator>
            <br/>
            <asp:Label ID="lbl_desc" runat="server" Text="Description: "></asp:Label>
            <asp:TextBox ID="txt_desc" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
               controltovalidate="txt_desc" ErrorMessage="Required Field">
            </asp:RequiredFieldValidator>

            <br/ >
            <asp:Button ID="btn_post" runat="server" Text="Post Announcement"  OnClick="post" />
        </div>
    </form>
</body>
</html>
