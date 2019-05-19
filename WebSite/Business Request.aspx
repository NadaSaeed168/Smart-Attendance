<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Business Request.aspx.cs" Inherits="Default4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
         
        <asp:Label ID="lbl_startdate" runat="server" Text="Start Date:  "></asp:Label>
    
        <asp:TextBox ID="txt_startdate" runat="server"></asp:TextBox>
    
        <br />
        <asp:Label ID="lbl_username" runat="server" Text="Username: "></asp:Label>
        <asp:TextBox ID="txt_username" runat="server"></asp:TextBox>
    
        <br />
        <asp:Label ID="lbl_enddate" runat="server" Text="End Date:  "></asp:Label>
        <asp:TextBox ID="txt_enddate" runat="server"></asp:TextBox>
    
        <br />
         <asp:Label ID="lbl_requestdate" runat="server" Text="Request Date:  "></asp:Label>
        <asp:TextBox ID="txt_requestdate" runat="server"></asp:TextBox>
    
        <br />
         <asp:Label ID="lbl_hremployee" runat="server" Text="Hr Employee:  "></asp:Label>
        <asp:TextBox ID="txt_hremployee" runat="server"></asp:TextBox>
    
        <br />
        <asp:Label ID="lbl_manager" runat="server" Text="Manager:  "></asp:Label>
        <asp:TextBox ID="txt_manager" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="lbl_destination" runat="server" Text="Destination:  "></asp:Label>
        <asp:TextBox ID="txt_destination" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="lbl_purpose" runat="server" Text="Purpose:  "></asp:Label>
        <asp:TextBox ID="txt_purpose" runat="server"></asp:TextBox>
        <br />
            <asp:Button ID="btn_a" runat="server" Text="Apply" OnClick="businessrequest"/>
            <br/>
        </div>
    </form>
</body>
</html>
