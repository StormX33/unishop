<!-- Block visible once page is loaded -->
<div class="over__wraper">
	<div class="products__item_long">	
    	<div class="products__item-inner">
			<div class="product__title">{echo $model->getName()}</div>
			<div class="products__label_content">
				<div class="label__item">
                	{if array_key_exists('mod_link', $modules)}
      					{$sales = module('mod_link')->getLinksByProduct($model->getId())}
      						{if $sales && $CI->core->core_data['data_type'] != 'page'}
        						<span class="products__label_icon products__label_sale">
          							{foreach $sales as $sale}
            							{if $sale->getPermanent() == false}
              								<div class="product-cut__sale-item">{echo $sale->getPageData()['title']}</div>
            							{/if}
          							{/foreach}
        						</span>
      						{/if}
    				{/if}
				</div>
			</div>
        </div><!-- /.products__item-inner-->
    	<div class="products__left">
        	<div class="products__img_wrap">
				<a class="products__link" href="{shop_url('product/'.$model->getUrl())}">
                	{view('shop/includes/product/product_cut_photo.tpl', ['model' => $model])}
				</a>
                <div class="product_ective-element">
                	{view('shop/includes/product/product_rating.tpl', ['model' => $model])}
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
