<div class="products__item-inner">

    <div class="product__title">{echo $model->getName()}</div>
	<div class="products__label_content">
		{view('shop/includes/product/product_labels.tpl', ['model' => $model])}
	</div>
	<div class="products__img_wrap">
    	<a href="{shop_url('product/'.$model->getUrl())}" class="products__link">
        	<img class="products__img" src="{echo $model->firstVariant->getMediumPhoto()}" alt="{echo $model->getName()}" title="{echo $model->getName()}">
    	</a>
    	<div class="product_ective-element">
    	</div>
    </div>
    <div class="products__info">
    	<div class="products__price">
			{if $model->firstVariant->getDiscountStatic() > 0}
				<div class="products__price_item products__price_old">
						{echo emmet_money($model->firstVariant->getOriginPrice())}
				</div>
            {/if}
            <div class="products__price_item products__price_new">
                {echo emmet_money($model->firstVariant->getFinalPrice())}
            </div>    
            {if count($loc_additional_prices) > 0}
				{foreach $loc_additional_prices as $additional_price}
					<div class="products__price_item products__price_eur">
						{$additional_price}
					</div>
				{/foreach}
	        {/if}
        </div>
        <div class="products__info-button">
        	{view('shop/includes/product/product_buy.tpl', ['model' => $model,'parent_quantity' => false])}
        </div>
	</div>
</div>