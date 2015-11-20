<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="NewsPortal.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>News Porta - Home</title>
    <link rel="stylesheet" type="text/css" href="../style.css" />
    <link href='https://fonts.googleapis.com/css?family=Source+Sans+Pro:400,700,300' rel='stylesheet' type='text/css' />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css" />
    <link href='https://fonts.googleapis.com/css?family=Exo:400,700' rel='stylesheet' type='text/css' />
    <meta name="description" content="News Portal Website" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
</head>
<body>
    <form id="frmHome" runat="server">
        <div class="container">
            <div id="logo_home">

                <h1 class="news"><i class="fa fa-2x fa-globe logoIcon" style="color: #ff6a00;"></i>News <span class="portal">Portal</span></h1>
            </div><!--end of logo-->
            <nav>
                <ul>
                    <li><a href="index.aspx" class="selected">Home</a></li>
                    <li><a href="#">News</a></li>
                    <li><a href="#">Videos</a></li>
                    <li><a href="#">Entertainment</a></li>
                    <li><a href="about.aspx">About Us</a></li>
                    <li><a href="contact.aspx">Contact Us</a></li>
                </ul>
            </nav>
            <div class="slideshow">

                <img src="Assets/globe.jpg" alt="Global News" height="350" width="960"/>
                <h1>Connecting News World by Media</h1>
            </div>
            <section class="contents">
                <h2>Welcome to News Portal</h2>
                <div class="main_content">
                    
                         
                    <asp:Repeater ID="rptHomeContent" runat="server">
                       <ItemTemplate>
                            <div id="PostArticles">
                                
                                   <h2 style="width:650px; clear:left; color:#0094ff;"><%# DataBinder.Eval(Container.DataItem, "AddTitle") %></h2>
                                    <h3 style="color:#ff6a00;"><span style="color:grey">Category:</span> <%# DataBinder.Eval(Container.DataItem, "AddCategory") %>     <span style="color:grey;">Published On </span><%# DataBinder.Eval(Container.DataItem, "postDate") %></h3>
                                   <p style="text-align:justify;"><img src="Assets/<%# DataBinder.Eval(Container.DataItem, "AddMedia") %>" width="150" style = "float:left; margin-bottom:10px; margin-right:10px;" />
                                   <%# DataBinder.Eval(Container.DataItem, "AddArticle") %></p>
                                    
                                    
                                </div>

                                
                           
                       </ItemTemplate>
                    </asp:Repeater>
                             
                   
                </div>
                <aside class="sidebar_left">

                </aside>

            </section>
            <footer>

            </footer>

        </div><!--end of container-->
    </form>
</body>
</html>
