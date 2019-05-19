<%@ Page Language="C#" AutoEventWireup="true" CodeFile="attendance.aspx.cs" Inherits="attendance" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="dep_emp" runat="server" AutoGenerateColumns="false">    
             <Columns>    
                 <asp:BoundField DataField="username" HeaderText="Employee Username" ItemStyle-Width="150" />    
             </Columns>    
         </asp:GridView> 

            <br/>
            <asp:Label ID="lbl_username" runat="server" Text="Please type employee username"></asp:Label>
            <asp:TextBox ID="txt_username" runat="server"></asp:TextBox>
            <br/>
            <asp:Label ID="lbl_start" runat="server" Text="Please type Start of duration"></asp:Label>
            <asp:TextBox ID="txt_start" runat="server"></asp:TextBox>
            <br/>
            <asp:Label ID="lbl_end" runat="server" Text="Please type End of duration"></asp:Label>
            <asp:TextBox ID="txt_end" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="btn_check_attendance" runat="server" Text="View Attendace" OnClick ="checkattendance" />

        <asp:GridView ID="tbl_attendance" runat="server" AutoGenerateColumns="false">        
             <Columns>    
                 <asp:BoundField DataField="staff" HeaderText="Employee Username" ItemStyle-Width="150" />
                 <asp:BoundField DataField="date0" HeaderText="Date" ItemStyle-Width="150" />
                 <asp:BoundField DataField="start_time" HeaderText="Start Time" ItemStyle-Width="150" />
                 <asp:BoundField DataField="end_time" HeaderText="Leave Time" ItemStyle-Width="150" />
                 
             </Columns>    
         </asp:GridView>    
            
        </div>
    </form>
</body>
</html>
