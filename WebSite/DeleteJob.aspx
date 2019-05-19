<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DeleteJob.aspx.cs" Inherits="DeleteJob" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
             
                <asp:GridView ID="grid1" runat="server" AutoGenerateColumns="false" OnRowDataBound="OnRowDataBound" OnSelectedIndexChanged = "OnSelectedIndexChanged">    
             <Columns>    
                 <asp:BoundField DataField="job" HeaderText="Title" ItemStyle-Width="150" />
                 <asp:BoundField DataField="department" HeaderText="Department" ItemStyle-Width="150" />
                 <asp:BoundField DataField="company" HeaderText="Company Name" ItemStyle-Width="150" />
                 <asp:BoundField DataField="job_seeker" HeaderText="Username" ItemStyle-Width="150" />
                 <asp:BoundField DataField="hr_response" HeaderText="Hr_Response" ItemStyle-Width="150" />
                 <asp:BoundField DataField="manager_response" HeaderText="Manager_Response" ItemStyle-Width="150" />
                 <asp:BoundField DataField="score" HeaderText="Score" ItemStyle-Width="150" />

             </Columns>    
            </asp:GridView>  
                <br/>

                <asp:GridView ID="grid2" runat="server" AutoGenerateColumns="false" Visible=false>    
             <Columns>    
                 <asp:BoundField DataField="job" HeaderText="Title" ItemStyle-Width="150" />
                 <asp:BoundField DataField="department" HeaderText="Department" ItemStyle-Width="150" />
                 <asp:BoundField DataField="company" HeaderText="Company Name" ItemStyle-Width="150" />
                 <asp:BoundField DataField="job_seeker" HeaderText="Username" ItemStyle-Width="150" />
                 <asp:BoundField DataField="hr_response" HeaderText="Hr_Response" ItemStyle-Width="150" />
                 <asp:BoundField DataField="manager_response" HeaderText="Manager_Response" ItemStyle-Width="150" />
                 <asp:BoundField DataField="score" HeaderText="Score" ItemStyle-Width="150" />

             </Columns>    
            </asp:GridView>  
               
                
                <br/>
                <asp:Label ID="lblusertype" runat="server"  Text = "Are you sure you want to delete this application" Visible=false ForeColor='Crimson'></asp:Label>
                <br/>
                <asp:Button ID="btn_delete" runat="server" Text="Yes Delete" onclick="delete" Visible=false/>
                <asp:Label ID="lblusertype1" runat="server"  Text = "you have successfully deleted this application" Visible=false ForeColor='Cyan'></asp:Label>
                <br/>
                <asp:Label ID="lblusertype2" runat="server"  Text = "you cant delete this application" Visible=false ForeColor='Cyan'></asp:Label>
                <br/>

        </div>
    </form>
</body>
</html>
