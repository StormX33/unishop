<!-- Block visible once page is loaded -->
<div class="over__wraper">
	<div class="products__item_long">	
    	<div class="products__item-inner hidden-xs-grid">
        
			<div class="product__title"><a class="products__title_link" href="{shop_url('product/'.$model->getUrl())}">{echo $model->getName()}</a></div>
			<div class="products__label_content">
				    {view('shop/includes/product/product_labels.tpl', ['model' => $model])}
			</div>
            
        </div><!-- /.products__item-inner-->
    	<div class="products__left">
        	<div class="products__img_wrap">
				<a class="products__link" href="{shop_url('product/'.$model->getUrl())}">
                	{view('shop/includes/product/product_cut_photo.tpl', ['model' => $model])}
				</a>
                <div class="product_ective-element hidden-xs">
                	{view('shop/includes/product/product_rating.tpl', ['model' => $model])}
                </div>
                <div class="products__item-inner visible-xs-grid">
                    <div class="product__title"><a class="products__title_link" href="{shop_url('product/'.$model->getUrl())}">{echo $model->getName()}</a></div>
                    <div class="products__label_content">
                            {view('shop/includes/product/product_labels.tpl', ['model' => $model])}
                    </div>
            </div>
        </div>
        </div>
        <div class="products__right">
        	<div class="products__info">
            	<div class="products__price">
					<!-- If product is not archived -->
					{if !tpl_is_product_archived($model)}
						<!-- Product price -->
							{view('shop/includes/product/product_price.tpl', ['variant' => $model->firstVariant, 'parent_modifier' => 'product-price--bg'])}
					{else:}
						<!-- If archived product -->
							{tlang('Product has been discontinued')}
					{/if}
                </div>
                <div class="products__info-button">
                	<!-- Product "add to cart" and "already in cart" buttons -->
            		{view('shop/includes/product/product_buy.tpl', ['model' => $model,'parent_quantity' => false])}
                </div>
                <ul class="detail__tools">
                </ul>
            </div>
            <div class="product_ective-element visible-xs-block">
                {view('shop/includes/product/product_rating.tpl', ['model' => $model])}
            </div>
            <!-- Main properties BEGIN -->
            {$loc_main_params = ShopCore::app()->SPropertiesRenderer->renderPropertiesArray($model, true)}
            {if count($loc_main_params) > 0}
                <div class="products__desc">
                	<h4 class="products__desc_title">{tlang('Main characteristics')}</h4>
                    <ul class="productcs__desc-options">
                        {foreach $loc_main_params as $item}
                            <li class="productcs__option-item">
                                <div class="productcs__option-key">{$item.Name}:</div>
                                <div class="productcs__option-value">{$item.Value}</div>
                            </li>
                        {/foreach}
                    </ul>
                </div>
            {/if}
            <!-- END Main properties -->
	</div><!-- /.products__item_long-->
</div><!-- /.over__wraper -->
