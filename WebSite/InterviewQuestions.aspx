<%@ Page Language="C#" AutoEventWireup="true" CodeFile="InterviewQuestions.aspx.cs" Inherits="InterviewQuestions" %>

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
                 <asp:BoundField DataField="question" HeaderText="Question" ItemStyle-Width="150" />
                 <asp:ButtonField ButtonType="Button" CommandName="true" HeaderText="Answer" Text="True" />
                 <asp:ButtonField ButtonType="Button" CommandName="false" HeaderText="Answer" Text="False"  />
                        
             </Columns>    
            </asp:GridView>  
                <br/>
               
        </div>
    </form>
</body>
</html>
