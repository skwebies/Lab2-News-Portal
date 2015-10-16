<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="NewsPortal.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="style.css" />
    <link href='https://fonts.googleapis.com/css?family=Ubuntu:400,700' rel='stylesheet' type='text/css' />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css" />
    <title>News Portal</title>
</head>
<body>
    <form id="frmHome" runat="server">


        <div class="container">
            <header>



                <!-- <div id ="logo">
                    <h1><i class="fa fa-globe fa-2x"></i> News Portal</h1>
                </div> -->

                <nav>
                    <ul>
                        <li><a href="index.html" class="selected">Home</a></li>
                        <li><a href="news.html">News</a></li>
                        <li><a href="contact.html">Contact</a></li>
                        <li><a href="about.html">About</a></li>
                    </ul>
                </nav>

            </header>

            <div id="content">

                <h1>Welcome</h1>
                <hr />

                <div id="leftcontent">
                </div>

                <div id="sidebar">
                    <h3>Categories</h3>
                    <hr /><br />
                    <div id="categories">
                        <ul>
                            <li>
                                <a href=".html">Sverige</a>
                            </li>
                            <li>
                                <a href=".html">Politik</a>
                            </li>
                            <li>
                                <a href=".html">Världen</a>
                            </li>
                            <li>
                                <a href=".html">Sport</a>
                            </li>
                            <li>
                                <a href=".html">Väder</a>
                            </li>
                        </ul>
                    
                        </div>
        </div>

        </div>

            <footer>
                Copyright &copy; 2015 Group 7

            </footer>

        </div>

    </form>
</body>
</html>
