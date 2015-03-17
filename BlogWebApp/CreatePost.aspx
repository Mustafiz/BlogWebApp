<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CreatePost.aspx.cs" Inherits="BlogWebApp.CreatePost" ValidateRequest="false" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <title>Create Post</title>
    <script src="//tinymce.cachefly.net/4.1/tinymce.min.js"></script>
    <script>tinymce.init({ selector: 'textarea' });</script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1>Create Post</h1>
        <asp:Label ID="Label1" runat="server" Text="Title"></asp:Label><asp:TextBox ID="titleTextBox" runat="server"></asp:TextBox>
        <br/>
        <asp:Label ID="Label2" runat="server" Text="Content"></asp:Label><asp:TextBox ID="bodyTextBox" TextMode="MultiLine" runat="server"></asp:TextBox>
        <br/>
        <asp:Label ID="Label3" runat="server" Text="Author"></asp:Label><asp:TextBox ID="authorTextBox" runat="server"></asp:TextBox>
        <br/>
        <asp:Button ID="saveButton" runat="server" Text="Save" OnClick="saveButton_Click" />
        <asp:Label ID="messageLabel" runat="server" Text=""></asp:Label>
    </div>
    </form>
</body>
</html>
