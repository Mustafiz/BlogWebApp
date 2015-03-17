<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="BlogWebApp.HomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>HomePage</title>
    <link href="readMore.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <br />
            <br />
            <br />
            <br />

            <asp:Label ID="LabelTitleFirst" runat="server"></asp:Label>
            <br />
            <br />
            <asp:Label ID="LabelAuthorFirst" runat="server"></asp:Label>
            <br />
            <br />
            <asp:Label ID="LabelDateFirst" runat="server"></asp:Label>
            <br />
            <br />
            <asp:Label ID="LabelBodyFirst" runat="server"></asp:Label>
            <br />
            <br />
            <asp:Label ID="LabelTitleSecond" runat="server"></asp:Label>
            <br />
            <br />
            <asp:Label ID="LabelAuthorSecond" runat="server"></asp:Label>
            <br />
            <br />
            <asp:Label ID="LabelDateSecond" runat="server"></asp:Label>
            <br />
            <br />
            <asp:Label ID="LabelBodySecond" runat="server"></asp:Label>
            <br />
            <br />
            <asp:Label ID="LabelTitleThird" runat="server"></asp:Label>
            <br />
            <br />
            <asp:Label ID="LabelAuthorThird" runat="server"></asp:Label>
            <br />
            <br />
            <asp:Label ID="LabelDateThird" runat="server"></asp:Label>
            <br />
            <br />
            <asp:Label ID="LabelBodyThird" runat="server"></asp:Label>
            <br />
            <br />
            <asp:Label ID="LabelTitleFourth" runat="server"></asp:Label>
            <br />
            <br />
            <asp:Label ID="LabelAuthorFourth" runat="server"></asp:Label>
            <br />
            <br />
            <asp:Label ID="LabelDateFourth" runat="server"></asp:Label>
            <br />
            <br />
            <asp:Label ID="LabelBodyFourth" runat="server"></asp:Label>
            <br />
            <br />
            <asp:Label ID="LabelTitleFifth" runat="server"></asp:Label>
            <br />
            <br />
            <asp:Label ID="LabelAuthorFifth" runat="server"></asp:Label>
            <br />
            <br />
            <asp:Label ID="LabelDateFifth" runat="server"></asp:Label>
            <br />
            <br />
            <asp:Label ID="LabelBodyFifth" runat="server"></asp:Label>
            <br />

        </div>
    </form>
    <script>
        $(document).ready(function () {
            var showChar = 100;
            var ellipsestext = "...";
            var moretext = "more";
            var lesstext = "less";
            $('.more').each(function () {
                var content = $(this).html();

                if (content.length > showChar) {

                    var c = content.substr(0, showChar);
                    var h = content.substr(showChar - 1, content.length - showChar);

                    var html = c + '<span class="moreellipses">' + ellipsestext + ' </span><span class="morecontent"><span>' + h + '</span>  <a href="" class="morelink">' + moretext + '</a></span>';

                    $(this).html(html);
                }

            });

            $(".morelink").click(function () {
                if ($(this).hasClass("less")) {
                    $(this).removeClass("less");
                    $(this).html(moretext);
                } else {
                    $(this).addClass("less");
                    $(this).html(lesstext);
                }
                $(this).parent().prev().toggle();
                $(this).prev().toggle();
                return false;
            });
        });
    </script>
</body>
</html>
