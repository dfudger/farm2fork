<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <link rel="stylesheet" type="text/css" href="/static/css/bootstrap.min.css" />
        <style type="text/css">
            body {padding-top:40px;}
        </style>
        <link rel="stylesheet" type="text/css" href="/static/css/bootstrap-responsive.min.css" >
        <link rel="stylesheet/less" type="text/css" href="/static/css/style.less">
        
        <!-- Other scripts at end -->
        <title><%block name="page_title">farm2fork</%block></title>
    </head>

    <body>
        <div class="navbar navbar-fixed-top">
            <div class="navbar-inner">
                <div class="container-fluid">
                    <div class="row-fluid">
                        <div class="span12">
                            <a class="brand" href="/">Farm2Fork</a>
                            <%block name="navbar">
                                <ul class="nav">
                                    <li><a href="/about">about</a></li>
                                    <li><a href="/foodbanks">list of food providers</a></li>
                                </ul>
                                <ul class="nav pull-right">
                                     <li><a rel="popover" data-placement="bottom" data-content="Hi" data-original-title="Login" data-html="true" href="#">login</a></li>
                                </ul>
                            </%block>
                        </div>
                    </div>
                </div>
            </div>
        </div> <!-- End Navbar -->
        
        
        <div class="container-fluid">
            <div class="row-fluid" id="header">
                
                <!-- <div class="span2" id="header_logo">
                    <img src="http://placehold.it/180x150"  />
                </div> -->
                
                <div class="span12" id="header_text">
                    <div class="contents">
                        <%block name="header"><h1 id="header_title">farm2fork</h1></%block>
                    </div>
                </div>

            </div> <!-- End Row -->
            
            <div id="body" class="contents">
                ${self.body()}
            </div>

            <div class="row-fluid" id="footer">
                <footer class="span12">
                    <div class="contents">
                        <hr/>
                        On The Mark Design - 2012
                    </div>
                </footer>
            </div> <!-- End Row -->
        </div> <!-- End Container -->

        <!-- Apparently puting scripts here is benificial, so your page loads parallel with your scripts not after. -->
        <script src="http://code.jquery.com/jquery-latest.js" type="text/javascript"></script>
        <script src="/static/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="/static/js/less.js" type="text/javascript"></script>
        <script src="/static/js/script.js" type="text/javascript"></script>
    </body>

</html>
