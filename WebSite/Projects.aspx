<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Projects.aspx.cs" Inherits="Projects" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <asp:GridView ID="grid1" runat="server" AutoGenerateColumns="false">    
             <Columns>    
                 <asp:BoundField DataField="name0" HeaderText="Project Name" ItemStyle-Width="150" />    
                 <asp:BoundField DataField="company" HeaderText="Company Name" ItemStyle-Width="150" />
                 <asp:BoundField DataField="start_date0" HeaderText="Start Date" ItemStyle-Width="150" />    
                 <asp:BoundField DataField="end_date" HeaderText="End Date" ItemStyle-Width="150" />
                 <asp:BoundField DataField="manager" HeaderText="Manager" ItemStyle-Width="150" />    
                 <asp:BoundField DataField="regular_employee" HeaderText="Regular Employee" ItemStyle-Width="150" />

             </Columns>    
            </asp:GridView>  


        </div>
    </form>
</body>
</html>
