<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Task.aspx.cs" Inherits="Task" %>

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
                 <asp:BoundField DataField="name0" HeaderText="Task Name" ItemStyle-Width="150" />   
                 <asp:BoundField DataField="project" HeaderText="Project Name" ItemStyle-Width="150" />  
                 <asp:BoundField DataField="company" HeaderText="Company Name" ItemStyle-Width="150" />
                   
                 <asp:BoundField DataField="deadline" HeaderText="Deadline" ItemStyle-Width="150" />
                 <asp:BoundField DataField="status0" HeaderText="Status" ItemStyle-Width="150" />
                 <asp:BoundField DataField="description0" HeaderText="Description" ItemStyle-Width="150" />
                 <asp:BoundField DataField="regular_employee" HeaderText="Regular Employee" ItemStyle-Width="150" />
                 <asp:BoundField DataField="manager" HeaderText="Manager" ItemStyle-Width="150" />    
             </Columns>    
            </asp:GridView>  

            <asp:Label ID="lbl_enterproject" runat="server" Text="Enter Project Name: "></asp:Label>
         <asp:TextBox ID="txt_enterproject" runat="server"></asp:TextBox>

                <br/>
            <asp:Button ID="btn_viewtask" runat="server" Text="View Tasks" onclick="viewtask"/>

        </div>
    </form>
</body>
</html>
