<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="about.aspx.cs" Inherits="NewsPortal.about" %>

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
                    <li><a href="index.aspx" >Home</a></li>
                    <li><a href="#">News</a></li>
                    <li><a href="#">Videos</a></li>
                    <li><a href="#">Entertainment</a></li>
                    <li><a href="about.aspx" class="selected">About Us</a></li>
                    <li><a href="contact.aspx">Contact Us</a></li>
                </ul>
            </nav>
            <div class="slideshow">

                <img src="Assets/globe.jpg" alt="Global News" height="350" width="960"/>
                <h1>Connecting News World by Media</h1>
            </div>
            <section class="contents">
                <h2>About Us</h2>
                <div class="main_content">
                    
                <p> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt 
                    ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco
                     laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in
                     voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat 
                    non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>     
                    
                    <img src="Assets/about.jpg" alt="about us" width="450" />
                    
                    <p>Utdraget, om än något förändrat, kommer från Ciceros bok om etik, De finibus bonorum et 
                        malorum, där den ursprungliga texten börjar "Neque porro quisquam est qui dolorem ipsum 
                        quia dolor sit amet, consectetur, adipisci velit" ("Det finns ingen som älskar smärtan i sig, 
                        som söker den och vill ha den, just eftersom det är smärta").Det är oklart när texten började 
                        användas i sin nuvarande form: Kanske redan så tidigt som på 1500-talet, eller så sent som på 1960-talet.</p>
                             
                    <p>malorum, där den ursprungliga texten börjar "Neque porro quisquam est qui dolorem ipsum 
                        quia dolor sit amet, consectetur, adipisci velit" ("Det finns ingen som älskar smärtan i sig, 
                        som söker den och vill ha den, just eftersom det är smärta").Det är oklart när texten började
                        ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco
                     laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in
                     voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat 
                    non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
                    </p>
                   
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
