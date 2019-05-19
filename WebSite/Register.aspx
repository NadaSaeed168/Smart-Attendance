<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            
                <asp:Label ID="lbl_name1" runat="server" Text="Username: "></asp:Label>
                <asp:TextBox ID="txt_name1" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txt_name1"
            ErrorMessage=""> *
        </asp:RequiredFieldValidator>
        <br/>

                
                <br/>
                
                <asp:Label ID="lbl_pass1" runat="server" Text="Password: "></asp:Label>
                <asp:TextBox ID="txt_pass1" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txt_pass1"
            ErrorMessage=""> *
        </asp:RequiredFieldValidator>
        <br/>
                <br/>
                
                <asp:Label ID="lbl_email" runat="server" Text="PersonalEmail: "></asp:Label>
                <asp:TextBox ID="txt_email" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txt_email"
            ErrorMessage=""> *
        </asp:RequiredFieldValidator>
        <br/>
                

                <br/>
                <asp:Label ID="lbl_birthdate" runat="server" Text="BirthDate: "></asp:Label>

                Year:<asp:DropDownList ID="ddlYear" runat="server" onchange = "PopulateDays()" />
                Month:<asp:DropDownList ID="ddlMonth" runat="server" onchange = "PopulateDays()" />
                Day:<asp:DropDownList ID="ddlDay" runat="server" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="ddlYear"
            ErrorMessage=""> *
        </asp:RequiredFieldValidator>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="ddlMonth"
            ErrorMessage=""> *
        </asp:RequiredFieldValidator>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="ddlDay"
            ErrorMessage=""> *
        </asp:RequiredFieldValidator>
        <br/>
                <br /> 

                <asp:Label ID="lbl_yearsofexp" runat="server" Text="YearsOfExperience: "></asp:Label>
                :<asp:DropDownList ID="ddlexp" runat="server" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="ddlexp"
            ErrorMessage=""> *
        </asp:RequiredFieldValidator>
                <br/>

                <asp:Label ID="lbl_fname" runat="server" Text="FirstName: "></asp:Label>
                <asp:TextBox ID="txt_fname" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txt_fname"
            ErrorMessage=""> *
        </asp:RequiredFieldValidator>
                <br/>
                <br/>

                <asp:Label ID="lbl_mname" runat="server" Text="MiddleName: "></asp:Label>
                <asp:TextBox ID="txt_mname" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txt_mname"
            ErrorMessage=""> *
        </asp:RequiredFieldValidator>
                <br/>
                <br/>

                <asp:Label ID="lbl_lname" runat="server" Text="LastName: "></asp:Label>
                <asp:TextBox ID="txt_lname" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txt_lname"
            ErrorMessage=""> *
        </asp:RequiredFieldValidator>
                <br/>
                <br/>
             
                <asp:Button ID="btn_confirm" runat="server" Text="Confirm" onclick="confirm"/>

                <br/>



        </div>
    </form>
</body>
</html>
