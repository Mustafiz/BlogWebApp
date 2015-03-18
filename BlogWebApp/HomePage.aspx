<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="BlogWebApp.HomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>HomePage</title>
    <link href="readMore.css" rel="stylesheet" />
    <script>
    $(document).ready(function() {
    var showChar = 100;
    var ellipsestext = "...";
    var moretext = "more";
    var lesstext = "less";
    $('.more').each(function() {
        var content = $(this).html();
 
        if(content.length > showChar) {
 
            var c = content.substr(0, showChar);
            var h = content.substr(showChar-1, content.length - showChar);
 
            var html = c + '<span class="moreellipses">' + ellipsestext+ ' </span><span class="morecontent"><span>' + h + '</span>  <a href="" class="morelink">' + moretext + '</a></span>';
 
            $(this).html(html);
        }
 
    });
 
    $(".morelink").click(function(){
        if($(this).hasClass("less")) {
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
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <br />
            <br />
            <br />
            <br />
            <asp:Panel ID="Panel1" runat="server" Width="500px">
                <asp:Repeater ID="rptrArticles" runat="server">
                    <ItemTemplate>
                        <div style="background-color: #FFFF66">
                            
                            Title: <%#Eval("title")%>
                            <br />
                            Author: <%#Eval("author")%><br />
                            <br />
                            
                            <%# CutText(DataBinder.Eval(Container.DataItem,"body"), 110)%><a href="#">...Read more</a>
                        </div>
                    </ItemTemplate>

                    <AlternatingItemTemplate>
                        <div style="background-color: #CCFF33">
                            
                            Title: <%#Eval("title")%>
                            <br />
                            Author: <%#Eval("author")%><br />
                            <br />
                            <%# CutText(DataBinder.Eval(Container.DataItem,"body"), 110)%><a href="#">...Read more</a>
                        </div>
                    </AlternatingItemTemplate>

                    <SeparatorTemplate>
                        <hr />
                    </SeparatorTemplate>

                </asp:Repeater>
            </asp:Panel>
            <asp:Label ID="LabelTitleFirst" runat="server"></asp:Label>

            <asp:Label ID="LabelAuthorFirst" runat="server"></asp:Label>

            <asp:Label ID="LabelDateFirst" runat="server"></asp:Label>

            <asp:Label ID="LabelBodyFirst" runat="server"></asp:Label>



        </div>
    </form>
    
</body>
</html>
