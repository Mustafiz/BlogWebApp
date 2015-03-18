<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CreatePost.aspx.cs" Inherits="BlogWebApp.CreatePost" ValidateRequest="false" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <title>Create Post</title>


    <script type="text/javascript" src="http://tinymce.moxiecode.com/js/tinymce/jscripts/tiny_mce/tiny_mce.js"></script>
    <script type="text/javascript">

        tinyMCE.init({
            theme: "advanced",
            mode: "textareas",
            plugins: "emotions",
            force_br_newlines: "true",
            theme_advanced_buttons1_add: "emotions,bullist,numlist,undo,redo,link,unlink,code,image,|,forecolor,backcolor,image",
            theme_advanced_disable: "numlist,bullist,redo,undo,outdent,indent,cut,copy,paste,cleanup,help,hr,removeformat,formatselect,fontselect,fontsizeselect,styleselect,sub,sup,charmap,visualaid,anchor,newdocument,separator,strikethrough",
            theme_advanced_buttons2: "",
            theme_advanced_buttons3: "",
            theme_advanced_toolbar_location: "top",
            theme_advanced_toolbar_align: "left"
        });

    </script>

</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Create Post</h1>
            <asp:Label ID="Label1" runat="server" Text="Title"></asp:Label><asp:TextBox ID="titleTextBox" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label2" runat="server" Text="Content"></asp:Label><asp:TextBox ID="bodyTextBox" TextMode="MultiLine" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label3" runat="server" Text="Author"></asp:Label><asp:TextBox ID="authorTextBox" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="saveButton" runat="server" Text="Save" OnClick="saveButton_Click" />
            <asp:Label ID="messageLabel" runat="server" Text=""></asp:Label>
        </div>
    </form>
</body>
</html>
