<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="RoofTopCafe.ContactUs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID ="Mylabel" Text="Hello World!" runat="server"></asp:Label>
            <br />
            
        </div>
        <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
        <p>
            <asp:TextBox ID="TextBox1" runat="server" Width="255px"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="Label2" runat="server" Text="Age"></asp:Label>
        </p>
        <asp:TextBox ID="TextBox2" runat="server" Width="111px" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="RangeValidator" MaximumValue="65" MinimumValue="18" Type="Integer"></asp:RangeValidator>
        <br />
        MobileNo:<br />
        <asp:TextBox ID="TextBox3" runat="server" OnTextChanged="TextBox3_TextChanged" Width="190px"></asp:TextBox>
        <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="TextBox3" OnServerValidate="CustomValidator1_ServerValidate" ErrorMessage="Must Have 10 digits"></asp:CustomValidator>
        <p>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
        </p>
    </form>
</body>
</html>
