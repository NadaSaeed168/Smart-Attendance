<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SearchForJobs.aspx.cs" Inherits="SearchForJobs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            
         
         <asp:Label ID="lbl_search" runat="server" Text="Enter a keyword: "></asp:Label>
         <asp:TextBox ID="txt_search" runat="server"></asp:TextBox>

                <br/>
        <asp:Button ID="btn_search" runat="server" Text="Search" onclick="search"/>

                <br/>

                <asp:GridView ID="grid1" runat="server" AutoGenerateColumns="false">    
             <Columns>    
                 <asp:BoundField DataField="title" HeaderText="Job Title" ItemStyle-Width="150"  />    
                 <asp:BoundField DataField="department" HeaderText="Company Department" ItemStyle-Width="150" />
                 <asp:BoundField DataField="company" HeaderText="Company" ItemStyle-Width="150" />    
                 <asp:BoundField DataField="short_description" HeaderText="Short Description" ItemStyle-Width="150" />
                 <asp:BoundField DataField="detailed_description" HeaderText="Detailed Description" ItemStyle-Width="150" />    
                 <asp:BoundField DataField="min_experience" HeaderText="Minimum Experience" ItemStyle-Width="150" />
                 <asp:BoundField DataField="salary" HeaderText="Job Salary" ItemStyle-Width="150" />    
                 <asp:BoundField DataField="deadline" HeaderText="Deadline" ItemStyle-Width="150" />
                 <asp:BoundField DataField="no_of_vacancies" HeaderText="Number of Vacancies" ItemStyle-Width="150" />    
                 <asp:BoundField DataField="working_hours" HeaderText="Working Hours" ItemStyle-Width="150" />
             </Columns>    
            </asp:GridView>  



        </div>
    </form>
</body>
</html>
