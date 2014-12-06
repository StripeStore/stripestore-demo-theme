<!DOCTYPE html>
<html lang="en">
    <head>
        <% base_tag %>
        <title>$SiteConfig.Title - <% if $MetaTitle %>$MetaTitle<% else %>$Title<% end_if %></title>
        $MetaTags
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=0">

        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->

        <link rel="stylesheet/less" type="text/css" href="$ThemeDir/less/bootstrap.less" />
        <link rel="stylesheet/less" type="text/css" href="$ThemeDir/less/theme.less" />
        <script src="$ThemeDir/js/less.js" type="text/javascript"></script>
    </head>
    <body>
        
        <% include Navigation %>
        <div class="container-fluid">
            $Layout
            $Form
                
            
            <div class="row" id="footer-nav">
                <div class="col-xs-10 col-xs-offset-1 col-sm-offset-0 col-md-offset-0 col-lg-offset-0 col-sm-6 col-lg-3">
                    <h1>Ajuda</h1>
                    <ul>
                        <% loop ChildrenOf(ajuda) %>
                            <li><a href="$Link">$Title.XML</a></li>
                        <% end_loop %>
                    </ul>
                </div>
                <div class="col-xs-10 col-xs-offset-1 col-sm-offset-0 col-md-offset-0 col-lg-offset-0 col-sm-6 col-lg-3">
                    <h1>Informação Legal</h1>
                    <ul>
                        <% loop ChildrenOf(informacao-legal) %>
                            <li><a href="$Link">$Title.XML</a></li>
                        <% end_loop %>
                    </ul>
                </div>
                <div class="clearfix visible-sm-block visible-md-block"></div>
                <div class="col-xs-10 col-xs-offset-1 col-sm-offset-0 col-md-offset-0 col-lg-offset-0 col-sm-6 col-lg-3">
                    <h1>A Empresa</h1>
                    <ul>
                        <% loop ChildrenOf(empresa) %>
                            <li><a href="$Link">$Title.XML</a></li>
                        <% end_loop %>
                    </ul>
                </div>
                <div class="col-xs-10 col-xs-offset-1 col-sm-offset-0 col-md-offset-0 col-lg-offset-0 col-sm-6 col-lg-3">
                    <h1>Mapa do Site</h1>
                    <ul>
                        <% loop Menu(1) %>
                            <% if Children %>
                                <li><a href="$Link">$Title.XML</a>
                                    <ul>
                                        <% loop Children %>
                                            <li><a href="$Link">$Title.XML</a></li>
                                        <% end_loop %>
                                    </ul>
                                </li>
                            <% else %>
                                <li><a href="$Link">$Title.XML</a></li>
                            <% end_if %>
                        <% end_loop %>
                    </ul>
                </div>
            </div>
        </div>
            
        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) 4
            Use Google's CDN version and fallback to local version if necessary -->
        <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
        <script>window.jQuery || document.write('<script src="$ThemeDir/js/jquery.min.js" />')</script>
        <!-- Include all compiled plugins (below), or include individual files as needed -->
        <script src="$ThemeDir/js/bootstrap.min.js"></script>
        <!-- Custom JS scripts -->
        <script src="$ThemeDir/js/scripts.js"></script>
        <!-- Google Analytics -->
        <script> (function(b,o,i,l,e,r){b.GoogleAnalyticsObject=l;b[l]||(b[l]= function(){(b[l].q=b[l].q||[]).push(arguments)});b[l].l=+new Date; e=o.createElement(i);r=o.getElementsByTagName(i)[0]; e.src='//www.google-analytics.com/analytics.js'; r.parentNode.insertBefore(e,r)}(window,document,'script','ga')); ga('create','UA-XXXXX-X');ga('send','pageview'); </script>
    </body>
</html>
