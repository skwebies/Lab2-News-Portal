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

                <!-- Main Menu -->
                <nav>
                    <ul>
                        <li><a href="index.aspx" class="selected">Home</a></li>
                        <li><a href="news.aspx">News</a></li>
                        <li><a href="contact.aspx">Contact</a></li>
                        <li><a href="about.aspx">About</a></li>
                    </ul>
                </nav>
                <!-- End of Main Menu -->

            </header>

            <!-- Main Content -->
            <div id="content">

                <div id="newsportal">
                    <h1>News Portal</h1>
                </div>
                
                <hr />

                <!-- Left Side Content -->
                <div id="leftcontent">
                    <h3>Home</h3>
                    <p>
                        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus vestibulum, mi nec consectetur hendrerit, urna nisi venenatis nunc, in laoreet libero nisl eu leo. 
                        Etiam magna nulla, pharetra nec volutpat sollicitudin, tincidunt non dolor. Cras vehicula ultrices ex, eget mattis sem fringilla et. 
                        Aliquam sollicitudin arcu vel metus mattis, vel ullamcorper metus vestibulum. Vivamus efficitur lectus dolor, eget suscipit est fringilla quis. 
                        In eget urna facilisis dolor vehicula placerat. Proin non libero mattis, laoreet felis quis, luctus arcu.
                    </p>
                    <p>
                        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus vestibulum, mi nec consectetur hendrerit, urna nisi venenatis nunc, in laoreet libero nisl eu leo. 
                        Etiam magna nulla, pharetra nec volutpat sollicitudin, tincidunt non dolor. Cras vehicula ultrices ex, eget mattis sem fringilla et. 
                        Aliquam sollicitudin arcu vel metus mattis, vel ullamcorper metus vestibulum. Vivamus efficitur lectus dolor, eget suscipit est fringilla quis. 
                        In eget urna facilisis dolor vehicula placerat. Proin non libero mattis, laoreet felis quis, luctus arcu.
                    </p>
                </div>
                <!-- End of Left Side Content -->

                <!-- Side bar -->
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
                    <!-- End of Side Bar -->
        </div>

        </div>

            <footer>
                Copyright &copy; 2015 Group 7

            </footer>

        </div>

    </form>
</body>
</html>
