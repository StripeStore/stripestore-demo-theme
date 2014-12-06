<% if Products %>

	<% include Pagination %>

	<div class="row invisible-xs">
		<% loop Children %>
            <% if ClassName=Product %>
                <div class="col-sm-5 col-md-4">
                    <a href="$Link">
                        <div  id="product-pane">
                            <div class="col-xs-12">
                                <% loop OrderedImages %>
                                    <% if $First %>
                                        <img src="$Link" class="img-responsive" alt="Responsive image">
                                    <% end_if %>
                                <% end_loop %>
                            </div>
                            <div class="col-xs-6">
                                <h5>$Title.XML</h5>
                            </div>
                            <div class="col-xs-6">
                                <h5><bold>$Price.Nice</bold></h5>
                            </div>
                        </div>
                    </a>
                </div>
            <% end_if %>
		<% end_loop %>
    </div>
	
	<% include Pagination %>

<% else %>

	<div class="alert alert-info">
		<% _t('Products.NONE_TO_DISPLAY','Pedimos desculpa, de momento estamos sem produtos nesta categoria. Por favor volte a visitar em breve.') %>
	</div>

<% end_if %>