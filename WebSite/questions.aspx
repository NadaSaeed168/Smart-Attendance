<%@ Page Language="C#" AutoEventWireup="true" CodeFile="questions.aspx.cs" Inherits="questions" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

<br />
        <asp:Label ID="lbl_questions" runat="server" Text="Question : "></asp:Label>
        <asp:TextBox ID="question" runat="server" ></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" 
            controltovalidate="question"
            runat="server" ErrorMessage="Required Field">

        </asp:RequiredFieldValidator>

        <br />
        <asp:Label ID="lbl_answer" runat="server" Text="Answer : "></asp:Label>
        <asp:DropDownList ID="ddl_answer" runat="server">
        <asp:ListItem Text="True" Value="true"></asp:ListItem>
        <asp:ListItem Text="False" Value="false"></asp:ListItem>
        </asp:DropDownList>

         <br />
        <asp:Button ID="btn_add_ques" runat="server" Text="Add Question" onclick="addQuestions"/>

            <br />
        <asp:Button ID="btn_more_questions" runat="server" Text="Add More Questions" onclick="addMoreQuestions"/>
        </div>
    </form>
</body>
</html>
