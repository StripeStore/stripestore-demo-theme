<div class="row" id="ProductCage">

    <div class="col-xs-12 col-sm-8 pagination-centered">
        <% loop OrderedImages %>
            <% if $First %>
                <img src="$Link" class="img-responsive" alt="Responsive image">
            <% end_if %>
        <% end_loop %>
    </div>
    
    <div class="col-xs-12 col-sm-4" id="sws">
        <h2>$Title</h2>
        <hr/>
        <h3 class="product-price-js">$Price.Nice</h3>
        $Content
        
        <form id="ProductForm_ProductForm" role="form" action="{$Link}ProductForm" method="post" enctype="application/x-www-form-urlencoded" data-map="$VariationsMap">
            <input type="hidden" name="ProductID" value="$ID" />
            <input type="hidden" name="ProductClass" value="$ClassName" />
            <% loop $Attributes %>
                <div class="form-group">
                    <label for="$ID">$Title</label>
                    <select name="Options[{$ID}]" class="attribute_option form-control" id="ProductForm_ProductForm_Options-{$ID}">
                        <% loop $Options %>
                            <option value="$ID">$Title</option>
                        <% end_loop %>
                    </select>
                </div>
            <% end_loop %>
            <label for="Quantity">Quantidade</label>
            <div class="input-group">
                <input type="text" class="form-control" name="Quantity" value="1">
                <span class="input-group-btn">
                    <button class="btn btn-default" type="submit">Adicionar ao carrinho</button>
                </span>
            </div>
        </form>
    </div>
    <div class="col-xs-12 col-sm-8">
        <div role="tabpanel">

            <!-- Nav tabs -->
            <ul class="nav nav-tabs" role="tablist">
                <li role="presentation"><a href="#galeria" aria-controls="galeria" role="tab" data-toggle="tab">Galeria</a></li>
                <li role="presentation" class="active"><a href="#ficha-tecnica" aria-controls="ficha-tecnica" role="tab" data-toggle="tab">Ficha Técnica</a></li>
                <li role="presentation" class="hidden-xs"><a href="#sugestoes" aria-controls="sugestoes" role="tab" data-toggle="tab">Sugestão</a></li>
                <li role="presentation" class="hidden-xs"><a href="#opiniao" aria-controls="opiniao" role="tab" data-toggle="tab">Opinião</a></li>
                <li role="presentation" class="dropdown visible-xs">
                    <a href="#" id="myTabDrop1" class="dropdown-toggle" data-toggle="dropdown" aria-controls="myTabDrop1-contents">+</a>
                    <ul class="dropdown-menu" role="menu" aria-labelledby="myTabDrop1" id="myTabDrop1-contents">
                        <li><a href="#sugestoes" tabindex="-1" role="tab" id="dropdown1-tab" data-toggle="tab" aria-controls="sugestoes">Sugestão</a></li>
                        <li><a href="#opiniao" tabindex="-1" role="tab" id="dropdown2-tab" data-toggle="tab" aria-controls="opiniao">Opinião</a></li>
                    </ul>
                </li>
            </ul>

            <!-- Tab panes -->
            <div class="tab-content">
                <div role="tabpanel" class="tab-pane fade" id="galeria">
                    <% loop OrderedImages %>
                        <% if $First %>
                        <% else %>
                            <img src="$Link" class="img-responsive" alt="Responsive image">
                        <% end_if %>
                    <% end_loop %>
                </div>
                <div role="tabpanel" class="tab-pane fade in active" id="ficha-tecnica">
                    <p>Tipo de produto	TV LED com retroiluminação LED - Smart TV</p>
                    <p>Classe de Energia	Classe A+</p>
                    <p>Consumo de Energia (modo ligado)	51 W</p>
                    <p>Consumo de Energia por Ano	71 kWh</p>
                    <p>Dimensão diagonal	40"</p>
                    <p>Dimensão diagonal (cm)	101.9 cm</p>
                    <p>Séries	6 Series</p>
                    <p>3D	Sim ( óculos 3D (2 pcs) incluídos )</p>
                    <p>Tecnologia 3D	Activo</p>
                    <p>Características 3D	3D HyperReal Engine</p>
                    <p>Sintonizador de TV	1x analógico, 1x digital</p>
                    <p>Interface de Video	Componente, composto, HDMI, SCART</p>
                    <p>Qtd Portas HDMI	4 porta(s)</p>
                    <p>Compatível com HDCP	Sim</p>
                    <p>Funções do cronómetro	Descanso</p>
                    <p>Largura	91.76 cm</p>
                    <p>Profundidade	4.93 cm</p>
                    <p>Altura	53.54 cm</p>
                    <p>Peso	8.2 kg</p>
                    <p>Cor de compartimento	Preto</p>       
                </div>
                <div role="tabpanel" class="tab-pane fade" id="sugestoes">
                    Pesquisa automatizada de produtos semelhantes.
                </div>
                <div role="tabpanel" class="tab-pane fade" id="opiniao">
                    Espaço destinado a comentários de antigos compradores.
                </div>
            </div>

        </div>
    </div>
</div>