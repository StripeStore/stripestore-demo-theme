<div class="row">
    

    <div class="col-xs-12 col-sm-8 col-sm-push-4 col-md-10 col-md-push-2">
        <% include Products %>
    </div>
        
    <div class="col-xs-12 col-sm-4 col-sm-pull-8 col-md-2 col-md-pull-10">
        <h3>Filtros</h3>
        <form role="form">
            
            <hr/>
            
            <h4>Preço</h4>
            
            <div class="input-group input-group-sm">
                <span class="input-group-addon">De</span>
                <input type="text" class="form-control" value="0">
                <span class="input-group-addon">Kz</span>
            </div>

            <div class="input-group input-group-sm">
                <span class="input-group-addon">Até</span>
                <input type="text" class="form-control" value="100000000">
                <span class="input-group-addon">Kz</span>
            </div>

            <hr/>
            
            <button type="submit" class="btn btn-default">Aplicar</button>
        </form>
    </div>
        
</div>