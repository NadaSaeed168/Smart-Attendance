<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
       <form id="form1" runat="server">     
          <div>
            
            <br />
            <asp:Button ID="btn_login" runat="server" Text="Login" onclick="login"/>
              <br />
            <asp:Button ID="btn_register" runat="server" Text="Register" onclick="register"/>
                
              <br/>
                <asp:Button ID="btn_searchforjobs" runat="server" Text="SearchForJobs" onclick="searchforjobs"/>
         <br />
            <asp:Label ID="lblusertype" runat="server" ></asp:Label>

               <br />
        <asp:Button ID="btn_avg" runat="server" Text="Show Companies with Highest Average Salary" onclick="avg_redirect"/>
        <br />
        
         <asp:Label ID="lbl_cname" runat="server" Text="Company Name : "></asp:Label>
            <asp:TextBox ID="txt_cname" runat="server"></asp:TextBox>
        <br />
              <br />
            <asp:Button ID="btn_search" runat="server" Text="Name Search" OnClick="search1"/>
            <br/>
              <br />
            <asp:Label ID="lbl_caddress" runat="server" Text="Company Address : "></asp:Label>
            <asp:TextBox ID="txt_caddress" runat="server"></asp:TextBox>
            <br />
              <br />
            <asp:Button ID="btn_search2" runat="server" Text="Address Search" OnClick="search2"/>
            <br/>
              <br />
            <asp:Button ID="lbl_national" runat="server" Text="National" OnClick="button2_Click"/>
            <br/>
              <br />
            <asp:Button ID="lbl_international" runat="server" Text="International" OnClick="button3_Click"/>
            <br/>
              <br />
            <asp:Button ID="Button1" runat="server" Text="National Names" OnClick="button4_Click"/>
            <br/>
              <br />
            <asp:Button ID="Button2" runat="server" Text="International Names" OnClick="button5_Click"/>
            <br/>
              <br />
            <asp:GridView ID="grid1" runat="server" AutoGenerateColumns="true">      
         </asp:GridView>
            <br />
            <asp:Label ID="Label1" runat="server" Text="Company Name : "></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label2" runat="server" Text="Department : "></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="btn_view" runat="server" Text="View Information" OnClick="viewInformation"/>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="true">    
             <Columns>    
                 <asp:BoundField DataField="title" HeaderText="Job Title" ItemStyle-Width="150" />    
                 <asp:BoundField DataField="department" HeaderText="Department" ItemStyle-Width="150" />
                 <asp:BoundField DataField="company" HeaderText="Company" ItemStyle-Width="150" />
                 <asp:BoundField DataField="short_description" HeaderText="Short Description" ItemStyle-Width="150" />
                 <asp:BoundField DataField="detailed_description" HeaderText="Detailed Description" ItemStyle-Width="150" />
                 <asp:BoundField DataField="min_experience" HeaderText="Min years of Experience" ItemStyle-Width="150" />    
                 <asp:BoundField DataField="salary" HeaderText="Salary" ItemStyle-Width="150" />
                 <asp:BoundField DataField="deadline" HeaderText="Deadline" ItemStyle-Width="150" />
                 <asp:BoundField DataField="no_of_vacancies" HeaderText="Number of Vacancies" ItemStyle-Width="150" />
                 <asp:BoundField DataField="working_hours" HeaderText="Working Hours" ItemStyle-Width="150" />

             </Columns>    
            </asp:GridView> 
            <br />
            <asp:Label ID="Label3" runat="server" Text="Company Email : "></asp:Label>
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="Button3" runat="server" Text="View Information" OnClick="displayCompanywithDepartment"/> 
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="true">    
             <Columns>    
                 <asp:BoundField DataField="title" HeaderText="Job Title" ItemStyle-Width="150" />    
                 <asp:BoundField DataField="department" HeaderText="Department" ItemStyle-Width="150" />
                 <asp:BoundField DataField="company" HeaderText="Company" ItemStyle-Width="150" />
                 <asp:BoundField DataField="short_description" HeaderText="Short Description" ItemStyle-Width="150" />
                 <asp:BoundField DataField="detailed_description" HeaderText="Detailed Description" ItemStyle-Width="150" />
                 <asp:BoundField DataField="min_experience" HeaderText="Min years of Experience" ItemStyle-Width="150" />    
                 <asp:BoundField DataField="salary" HeaderText="Salary" ItemStyle-Width="150" />
                 <asp:BoundField DataField="deadline" HeaderText="Deadline" ItemStyle-Width="150" />
                 <asp:BoundField DataField="no_of_vacancies" HeaderText="Number of Vacancies" ItemStyle-Width="150" />
                 <asp:BoundField DataField="working_hours" HeaderText="Working Hours" ItemStyle-Width="150" />

             </Columns>    
            </asp:GridView> 


        </div>
    </form>
</body>
</html>
