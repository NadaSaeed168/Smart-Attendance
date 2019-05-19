<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Changetaskstatus.aspx.cs" Inherits="Changetaskstatus" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="grid1" runat="server" AutoGenerateColumns="false" OnRowDataBound = "OnRowDataBound" OnSelectedIndexChanged = "OnSelectedIndexChanged">    
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

          
                <br/>
          
          <asp:Label ID="msg" runat="server" Text="Click to change status to fixed" Visible=false></asp:Label>
          <br/>
                <asp:Button ID="btn_clickhere" runat="server" Text="Click Here" onclick="clickhere" Visible=false/>

                <asp:Label ID="msg1" runat="server" Text="Status changed successfully" Visible=false></asp:Label>
                <asp:Label ID="msg2" runat="server" Text="Sorry you cant change this status as the deadline has passed" Visible=false></asp:Label>

        </div>
    </form>
</body>
</html>
