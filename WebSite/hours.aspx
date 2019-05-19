<%@ Page Language="C#" AutoEventWireup="true" CodeFile="hours.aspx.cs" Inherits="hours" %>

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
            <br />
            <asp:Label ID="lbl_year" runat="server" Text="Please type year"></asp:Label>
            <asp:TextBox ID="txt_year" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="btn_check_hours" runat="server" Text="View Hours" OnClick ="checkhours" />

            <asp:GridView ID="tbl_hours" runat="server" AutoGenerateColumns="false">        
             <Columns>    
                 <asp:BoundField DataField="staff" HeaderText="Employee Username" ItemStyle-Width="150" />
                 <asp:BoundField DataField="month" HeaderText="Month" ItemStyle-Width="150" />
                 <asp:BoundField DataField="Total Hours" HeaderText="Total Hours" ItemStyle-Width="150" />
             </Columns>    
         </asp:GridView>
            
            <br />
             <asp:Label ID="lbl_bestemp" runat="server" Text="Please type the date you want to view best 3 employees"></asp:Label>
            <asp:TextBox ID="txt_date" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="btn_best_emp" runat="server" Text="Show" OnClick ="bestemployees" />
            <br/>
            <asp:GridView ID="tbl_best_emp" runat="server" AutoGenerateColumns="false">        
             <Columns>    
                 <asp:BoundField DataField="staff" HeaderText="Employee Username" ItemStyle-Width="150" />
             </Columns>    
         </asp:GridView>

        </div>
    </form>
</body>
</html>
