<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Lessons</title>
    <meta name="description" content="" />
    <meta name="keywords" content="" />
    <link rel="shortcut icon" href="" />
    <link rel='stylesheet' type='text/css' href='http://fonts.googleapis.com/css?family=Josefin+Sans+Std+Light' />
    <link rel="stylesheet" type="text/css" media="all" href="css/mgopenmodataregular.css" />
    <link rel="stylesheet" type="text/css" media="all" href="css/nivo-slider.css" />
    <link rel="stylesheet" type="text/css" media="all" href="css/prettyPhoto.css" />
    <link rel="stylesheet" type="text/css" media="all" href="css/reset.css" />
    <link rel="stylesheet" type="text/css" media="all" href="css/style.css" />
    <link rel="stylesheet" type="text/css" media="all" href="css/effects.css" />
    <!--[if IE]>
		<link rel="stylesheet" type="text/css" media="all" href="css/ie.css" />
	<![endif]-->
    <!--[if IE 7]>
		<link rel="stylesheet" type="text/css" media="all" href="css/ie7.css" />
	<![endif]-->
    <!-- /end stylesheets -->
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js"></script>
    <script type="text/javascript" src="http://s7.addthis.com/js/250/addthis_widget.js#username=YOUR-ACCOUNT-ID"></script>
    <script type="text/javascript" src="js/jquery.plugins.min.js"></script>
    <script type="text/javascript" src="js/jquery.nivo.slider.js"></script>
    <script type="text/javascript" src="js/custom.js"></script>
    <style type="text/css">
        .information h4 b
        {
            font-size: 12px;
        }
        
        .information
        {
            font-size: 12px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <!-- home [section_1]-->
    <div style="position: fixed; bottom: -1px; left: -1px; border: 2px solid #003366;
        border-bottom: none; color: White;" runat="server" id="DivComprar" visible="False">
    </div>
    <div style="position: fixed; bottom: -1px; right: -1px; border: 2px solid #CC0000;
        border-bottom: none; color: White;" runat="server" id="DivComprar2" visible="False">
    </div>
    <div id="section_1">
        <!-- javascript fallback -->
        <noscript>
            <ul class="noscript">
                <li>Unfortunately your browser does not have JavaScript capabilities which are required
                    to exploit full functionality of our site. This could be the result of two possible
                    scenarios:</li>
                <li>You are using an old web browser, in which case you should upgrade it to a newer
                    version. We recommend the latest version of <a href="http://www.getfirefox.com">Firefox</a>.</li>
                <li>You have disabled JavaScript in you browser, in which case you will have to enable
                    it to properly use our site. <a href="http://www.google.com/support/bin/answer.py?answer=23852">
                        Learn how to enable JavaScript</a>.</li>
            </ul>
        </noscript>
        <!-- /end javascript fallback -->
        <!-- header -->
        <div id="wrap-header">
            <div id="wrap-2-header">
                <div id="logo">
                    <a href="#welcome"></a>
                </div>
                <ul id="menu">
                    <li><a href="http://www.welbe.com.br">Back to the Web Site</a></li>
                    <li><a href="Logoff.aspx">Exit</a></li>
                </ul>
                <div class="clear">
                </div>
            </div>
        </div>
        <!-- /end header -->
    </div>
    <!-- styles [section_3] -->
    <!-- header -->
    <div id="welcome" class="wrap-section-header">
        <div class="section-header">
            <h1>
                Welcome</h1>
            <ul class="section-nav">
                <li><a class="down" href="#lessons"></a></li>
            </ul>
        </div>
    </div>
    <!-- /end header -->
    <!-- body -->
    <div class="wrap-section-body">
        <div id="styles">
            <div class="column-720 v-separator">
                <h1>
                    <asp:Literal ID="LitHello" runat="server"></asp:Literal></h1>
                <p>
                    <br />
                    <div id="pnlFraseTopo" runat="server">
                        We hope you have enjoyed studying with us! You still have
                        <asp:Literal ID="LitRemainingDays" runat="server"></asp:Literal>
                        days to use the system. Your last access was on
                        <asp:Literal ID="LitLastAccess" runat="server"></asp:Literal>. Keep enjoying it
                        and to change the book just <a href="Choose.aspx">click here</a>.<br />
                        <br />
                    </div>
                    <div id="pnlAcabou" runat="server" visible="false">
                        <b>Your free access time is over!</b><br />
                        <br />
                        To keep accessing you must buy the product. To do it, just
                        <asp:HyperLink ID="lnkBuy" runat="server" Text="click here"></asp:HyperLink>.
                    </div>
                </p>
                <h2>
                    Where Am I?</h2>
                <p>
                    Currently, you are at <a id="WhereAmI" href="#lessons"><b>
                        <asp:Literal ID="LitWhereAmI" runat="server"></asp:Literal></b></a>.</p>
            </div>
            <div class="column-240">
                <h2>
                    Copy registered for:</h2>
                <p>
                    <br />
                    <b>
                        <asp:Literal ID="LitRegistered" runat="server"></asp:Literal></b><br />
                    <asp:Literal ID="LitCPF" runat="server"></asp:Literal></p>
                <p>
                    <b>First Access of
                        <asp:Literal ID="litBookName" runat="server"></asp:Literal>:</b><br />
                    <asp:Literal ID="litFirstAccess" runat="server"></asp:Literal></p>
                <p>
                    <b>Expiration Date of
                        <asp:Literal ID="litBookName1" runat="server"></asp:Literal>:</b><br />
                    <asp:Literal ID="litExpirationDate" runat="server"></asp:Literal></p>
            </div>
            <div class="clear">
            </div>
        </div>
    </div>
    <div id="lessons" class="wrap-section-header">
        <div class="section-header">
            <h1>
                Lessons - Book One</h1>
            <ul class="section-nav">
                <li><a class="up" href="#welcome"></a></li>
            </ul>
        </div>
    </div>
    <div class="wrap-section-body">
        <div id="portfolio">
            <!-- filter -->
            <ul id="filter">
                <li class="selected"><a href="#" class="all">All</a></li>
                <li><a href="#" class="grammar">Grammar</a></li>
                <li><a href="#" class="text">Text</a></li>
                <li><a href="#" class="practice">Practice</a></li>
                <li><a href="#" class="homework">Homework</a></li>
                <li><a href="#" class="quiz">Quiz</a></li>
            </ul>
            <!-- /end filter -->
            <!-- layout switcher -->
            <div id="layoutSwitcher">
                <a class="button" href="#" style="display: none">Switch Display</a>
            </div>
            <!-- /end layout switcher -->
            <!-- image-grid -->
            <ul id="list" class="image-grid clear">
                <asp:Literal ID="LitItems" runat="server" EnableViewState="false"></asp:Literal>
            </ul>
            <!-- /end image-grid -->
        </div>
    </div>
    <div id="class" class="wrap-section-header">
        <div class="section-header">
            <h1>
            </h1>
            <ul class="section-nav">
                <li><a class="up" href="#lessons"></a></li>
            </ul>
        </div>
    </div>
    <div class="wrap-section-body" id="classBody">
        <div id="class_content">
        </div>
        <div id="class_close">
            <a class="button" href="#lessons" onclick='javascript:closeClass();'>Close this class</a>
        </div>
    </div>
    <!-- footer -->
    <div id="wrap-footer">
        <div id="wrap-2-footer">
            <div id="copyrights">
                &copy; 2011 Welbe. All rights reserved.</div>
            <div id="information">
<a href="#section_1">Go
                    to Top</a></div>
            <div class="clear">
            </div>
        </div>
    </div>
    <!-- /end footer -->
    <a id="GoToClass" href="#class" style="display: none;">go</a>
    </form>
</body>
</html>
