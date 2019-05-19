<%@ Page Language="C#" AutoEventWireup="true" CodeFile="My Things.aspx.cs" Inherits="Default4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="btn_checkin" runat="server" Text="Check In" OnClick="Check_in"/>
            <br/>
            <br/>
            <asp:Button ID="btn_checkout" runat="server" Text="Check Out" OnClick="Check_out"/>
            <br/>
            <br/>
            <asp:Label ID="lbl_startdate" runat="server" Text="Start Date:  "></asp:Label>
    
        <asp:TextBox ID="txt_startdate" runat="server"></asp:TextBox>
    
        <br />
        <asp:Label ID="lbl_enddate" runat="server" Text="End Date:  "></asp:Label>
        <asp:TextBox ID="txt_enddate" runat="server"></asp:TextBox>
    
        <br />
         <asp:Label ID="lbl_hremployee" runat="server" Text="Hr Employee:  "></asp:Label>
        <asp:TextBox ID="txt_hremployee" runat="server"></asp:TextBox>
    
        <br />
        <asp:Label ID="lbl_manager" runat="server" Text="Manager:  "></asp:Label>
        <asp:TextBox ID="txt_manager" runat="server"></asp:TextBox>
    
        <br />
        <asp:Label ID="lbl_type" runat="server" Text="Type Of Leave Request:  "></asp:Label>
        <asp:TextBox ID="txt_type" runat="server"></asp:TextBox>
    
        <br />
            <asp:Button ID="btn_leaverequest" runat="server" Text="Apply For Leave Request" OnClick="button1_Click"/>
            <br/>
            <br/>
            <asp:Button ID="btn_business" runat="server" Text="Apply For Business Request" OnClick="button2_Click"/>
            <br/>
            <br/>
            
            <asp:GridView ID="grid1" runat="server" AutoGenerateColumns="true">         
            </asp:GridView> 
            <asp:Label ID="lbl_serialnumber" runat="server" Text="Serial number of the first mail: "></asp:Label>
        <asp:TextBox ID="txt_serialnumber" runat="server"></asp:TextBox>
    
        <br />
            
         <asp:Label ID="lbl_body2" runat="server" Text="Body:  "></asp:Label>
        <asp:TextBox ID="txt_body2" runat="server"></asp:TextBox>
    
        <br />
        <asp:Label ID="lbl_subject2" runat="server" Text="Subject: "></asp:Label>
        <asp:TextBox ID="txt_subject2" runat="server"></asp:TextBox>
        <br />
            <asp:Button ID="Button1" runat="server" Text="Reply to a mail" OnClick="button8_Click"/>
            <br />
            <br />

           
        <asp:Button ID="btn_request" runat="server" Text="Send an email" onclick="button4_Click"/>
            <br/>
            <br/>
            <asp:Button ID="btn_status" runat="server" Text="Status Of Your Requests" OnClick="button3_Click"/>
            <br/>
            <br/>
            <asp:Label ID="lbl_date" runat="server" Text="Date Of Request: "></asp:Label>
            <asp:TextBox ID="txt_date" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="btn_delete" runat="server" Text="Delete Requests" OnClick="button7_Click"/>
            <br/>
            <br/>
            <asp:Label ID="lbl_recipient" runat="server" Text="Recipient:  "></asp:Label>
    
            <asp:TextBox ID="txt_recipient" runat="server"></asp:TextBox>
    
            <br />
             <asp:Label ID="lbl_body" runat="server" Text="Body:  "></asp:Label>
            <asp:TextBox ID="txt_body" runat="server"></asp:TextBox>
    
            <br />
            <asp:Label ID="lbl_subject" runat="server" Text="Subject: "></asp:Label>
            <asp:TextBox ID="txt_subject" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="btn_email" runat="server" Text="Send Emails" OnClick="button4_Click"/>
            <br/>
            <br/>
            <asp:Button ID="btn_checkmails" runat="server" Text="Check Your Mails" OnClick="button5_Click"/>
            <br/>
            <br/>
            <asp:Button ID="btn_viewannouncements" runat="server" Text="View Announcements" OnClick="button6_Click"/>
            <br/>
            <br/>
            <asp:Button ID="Button2" runat="server" Text="View Attendance" OnClick="button12_Click"/>
            <br/>
            <br/>

            <asp:Label ID="lbl_x" runat="server" Text="Start Date: "></asp:Label>
            <asp:TextBox ID="txt_x" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="lbl_y" runat="server" Text="End Date: "></asp:Label>
            <asp:TextBox ID="txt_y" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="btn_c" runat="server" Text="View Attendance Records" OnClick="button12_Click"/>
            <br/>
            <br/>

        </div>
    </form>
</body>
</html>
