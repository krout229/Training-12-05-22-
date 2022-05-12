<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FeedBackForm.aspx.cs" Inherits="RoofTopCafe.FeedBackForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #TextArea1 {
            height: 105px;
            width: 260px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Feedback Form</h2>
            <p>
                <asp:Label ID="Label6" runat="server" Text="Thank you for your feedback"></asp:Label>
            </p>
        </div>
        <div class="container">

            <asp:Label ID="Label3" runat="server" Text="First Name"></asp:Label>
            <br />
            <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged" Width="183px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
            <br />
         <asp:Label ID="Label4" runat="server" Text="Last Name"></asp:Label>
            <br />
            <asp:TextBox ID="TextBox2" runat="server" OnTextChanged="TextBox1_TextChanged" Width="183px"></asp:TextBox>
               <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
               <br />
             <asp:Label ID="Label5" runat="server" Text="Email"></asp:Label>
            <br />
             <asp:TextBox ID="TextBox3" runat="server" AutoCompleteType="Email" Width="180px"></asp:TextBox>
            
            <asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="Enter Email" OnServerValidate="CustomValidator1_ServerValidate"></asp:CustomValidator>
            
            <br />
             <asp:Label ID="Label1" runat="server" Text="Phone number"></asp:Label>
            <br />
             <asp:TextBox ID="TextBox4" runat="server"  Width="180px"></asp:TextBox>
            <asp:CustomValidator ID="CustomValidator2" runat="server" ErrorMessage="Enter 10 digit number" OnServerValidate="CustomValidator2_ServerValidate" ControlToValidate="TextBox4" ></asp:CustomValidator>
            <br />
            <asp:Label ID="Label2" runat="server" Text="Feedback"></asp:Label>
            <br />
            <textarea id="TextArea1" name="S1" runat="server"></textarea>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter Feedback" ControlToValidate="TextArea1"></asp:RequiredFieldValidator>
            <br />
            <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
           

        </div>
      
            
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
      
            
            &nbsp;
    </form>
</body>
</html>
