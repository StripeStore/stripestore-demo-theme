<div class="row">
    
    <div class="col-sm-2">
        <form role="form">
            <% loop $Children %>
                <div class="hidden-xs checkbox">
                    <label>
                        <input checked type="checkbox">$Title<//a>
                    </label>
                </div>
                <a class="visible-xs btn btn-default btn-lg btn-block" href="$Link" role="button">$Title</a>
            <% end_loop %>
        </form>
    </div>
    <div class="col-sm-10">
        <% include Products %>
    </div>

</div>