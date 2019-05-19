<%@ Page Language="C#" AutoEventWireup="true" CodeFile="comAvgSal.aspx.cs" Inherits="comAvgSal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="tbl_avg_salary" runat="server" AutoGenerateColumns="false">    
             <Columns>    
                 <asp:BoundField DataField="Company" HeaderText="Company" ItemStyle-Width="150" />    
                 <asp:BoundField DataField="Average Salary" HeaderText="Average Salary" ItemStyle-Width="150" />
             </Columns>    
         </asp:GridView>
        </div>
    </form>
</body>
</html>
