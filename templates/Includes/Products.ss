<% if Products %>

	<% include Pagination %>

	<div class="row">
		<% loop Products %>
            <div class="col-xs-12 col-md-4">
                <a href="$Link">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h3 class="panel-title">$Title.XML</h3>
                        </div>
                        <div class="panel-body">
                            $Price.Nice
                        </div>
                    </div>
                </a>
            </div>			
		<% end_loop %>
	
	
	<% include Pagination %>

<% else %>

	<div class="alert alert-info">
		<% _t('Products.NONE_TO_DISPLAY','Pedimos desculpa, de momento estamos sem produtos nesta categoria. Por favor volte a visitar em breve.') %>
	</div>

<% end_if %>