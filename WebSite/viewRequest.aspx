<%@ Page Language="C#" AutoEventWireup="true" CodeFile="viewRequest.aspx.cs" Inherits="viewRequest" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <asp:GridView ID="veiwbussinessrequests" runat="server" AutoGenerateColumns="false">    
             <Columns>    
                 <asp:BoundField DataField="start_date0" HeaderText="Start Date" ItemStyle-Width="150" />
                 <asp:BoundField DataField="applicant" HeaderText="Applicant" ItemStyle-Width="150" />
                 <asp:BoundField DataField="end_date" HeaderText="End Date" ItemStyle-Width="150" />
                 <asp:BoundField DataField="request_date" HeaderText="Request Date" ItemStyle-Width="150" />
                 <asp:BoundField DataField="total_days" HeaderText="Total Number Days" ItemStyle-Width="150" />
                 <asp:BoundField DataField="destination" HeaderText="Destination" ItemStyle-Width="150" />
                 <asp:BoundField DataField="puropse" HeaderText="Purpose" ItemStyle-Width="150" />
             </Columns> 
           </asp:GridView>
            <br />
            <asp:GridView ID="viewleaverequests" runat="server" AutoGenerateColumns="false">    
             <Columns>    
                 <asp:BoundField DataField="start_date0" HeaderText="Start Date" ItemStyle-Width="150" />
                 <asp:BoundField DataField="applicant" HeaderText="Applicant" ItemStyle-Width="150" />
                 <asp:BoundField DataField="end_date" HeaderText="End Date" ItemStyle-Width="150" />
                 <asp:BoundField DataField="request_date" HeaderText="Request Date" ItemStyle-Width="150" />
                 <asp:BoundField DataField="total_days" HeaderText="Total Number Days" ItemStyle-Width="150" />
                 <asp:BoundField DataField="type0" HeaderText="Type" ItemStyle-Width="150" />
             </Columns> 
           </asp:GridView>

            <br/ >
            <asp:Label ID="lbl_start_date" runat="server" Text="Please add the start date of the request:"></asp:Label>
            <asp:TextBox ID="txt_start_date" runat="server"></asp:TextBox>

            <asp:Label ID="lbl_applicant" runat="server" Text="Please type the applicant name:"></asp:Label>
            <asp:TextBox ID="txt_applicant" runat="server"></asp:TextBox>

            <br />
            <asp:Label ID="lbl_response" runat="server" Text="Response: "></asp:Label>
            <asp:DropDownList ID="ddlresponse" runat="server">
             <asp:ListItem Text="Accpet" Value='accept'></asp:ListItem>
             <asp:ListItem Text="Reject" Value='reject'></asp:ListItem>
            </asp:DropDownList>
            <asp:Button ID="btn_response" runat="server" Text="Respond" OnClick ="request_response" />
        </div>
    </form>
</body>
</html>
