<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="static/css/bootstrap.min.css" />
        <link rel="stylesheet" type="text/css" href="static/css/bootstrap-responsive.min.css" >
        <link rel="stylesheet" type="text/css" href="static/css/style.css" />
        <!-- Other scripts at end -->
        <title><%block name="page_title">farm2fork</%block></title>
    </head>

    <body>
        <div class="container-fluid">
            <div id="header">
                <div class="row-fluid">
                    <div id="header_text" class="span12">
                        <%block name="header">
                            <h2 id="header_title">farm2fork</h2>
                        </%block>
                    </div>
                </div> <!-- End Row -->

                <div class="row-fluid">
                    <div class="navbar">
                        <div class="navbar-inner">
                            <%block name="navbar">
                                <ul class="nav">
                                    <li class="active"><a href="/">home</a></li>
                                    <li><a href="/other">other</a></li>
                                </ul>
                            </%block>
                        </div>
                    </div> <!-- End Navbar -->
                </div> <!-- End Row -->
            </div> <!-- End Header -->

            ${self.body()}

            <div class="row-fluid">
                <hr/>
                <footer class="span12">
                    <div class="footer">On The Mark Design - 2012</div>
                </footer>
            </div>
        </div>

        <!-- Apparently puting scripts here is benificial -->
        <script src="http://code.jquery.com/jquery-latest.js" type="text/javascript"></script>
        <script src="static/js/bootstrap.min.js" type="text/javascript"></script>
    </body>

</html>
