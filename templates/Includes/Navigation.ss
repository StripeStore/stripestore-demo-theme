<nav class="navbar navbar-default" role="navigation">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">$SiteConfig.Title</a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <% with Page(Categories) %>
                    <% loop Children %>
                        <% if Children %>
                            <li class="dropdown $LinkingMode">
                                <a href="$Link" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">$MenuTitle <span class="caret"></span></a>
                                <ul class="dropdown-menu" role="menu">
                                    <% loop Children %>
                                        <li><a href="$Link">$MenuTitle</a></li>
                                    <% end_loop %>
                                </ul>
                            </li>
                        <% else %>
                            <li><a href="$Link">$MenuTitle</a></li>
                        <% end_if %>
                    <% end_loop %>
                <% end_with %>
            </ul>
            <form class="navbar-form navbar-left" role="search">
                <div class="form-group">
                    <input type="text" class="form-control" placeholder="Search">
                </div>
                <button type="submit" class="btn btn-default">Search</button>
            </form>
            <ul class="nav navbar-nav navbar-right">
                <% if $CurrentMember %>
                    <li><a href="#">Signed in as $CurrentMember.Name</a></li>
                    <li><a href="Security/logout">Sign Out</a></li>
                <% else %>
                    <li><a href="Security/login">Sign In</a></li>
                    <li><a href="sign-up">Sign Up</a></li>
                <% end_if %>
            </ul>
        </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>