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
                                    <li>
                                        ## TODO send mobile to page
                                        ## TODO if loged in don't show login
                                        <a href="#loginModal" class="hidden-phone" role="button" data-toggle="modal">login</a>
                                        <a href="/login" class="visible-phone" data-toggle="modal">login</a>
                                    </li>
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
                <div style="clear:both;"></div>
            </div>

            <div id="loginModal" class="modal hide" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h3 id="loginModalLabel">Login to Farm2fork</h3>
                </div>
                <div class="modal-body">
                    <%include file="login.mako"/>
                </div>
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

        <!-- Login modal -->
        <div id="loginModal" class="modal hide" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h3 id="loginModalLabel">Login to Farm2fork</h3>
            </div>
            <div class="modal-body">
                <%include file="login.mako"/>
            </div>
        </div>

        <!-- puting scripts here is benificial, so your page loads parallel -->
        <script src="//ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
        <script>window.jQuery || document.write('<script src="/static/js/jquery-1.8.2.min.js"><\/script>')</script>
        <script src="/static/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="/static/js/less.js" type="text/javascript"></script>
        <script src="/static/js/script.js" type="text/javascript"></script>
    </body>


</html>
