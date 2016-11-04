<!-- Photo  -->
<div class="compare__img_wrap">
	<div class="img__wrap_inner">
		<a href="{shop_url('product/'.$model->getUrl())}" class="compare__img_link" >
			<img class="compare__img" src="{echo $model->firstVariant->getMediumPhoto()}" alt="{echo $model->getName()}" title="{echo $model->getName()}">
		</a>
	</div>
</div>
<div class="compare__col_title">
	<a class="compare__title_link" href="{shop_url('product/'.$model->getUrl())}">{echo $model->getName()}</a>
</div>
<div class="products__info">
	<div class="products__price">
    	<div class="pull-left">
        	{if $model->firstVariant->getDiscountStatic() > 0}
            	<div class="products__price_item products__price_old">
                	{echo emmet_money($model->firstVariant->getOriginPrice(), 'span.product-price__old-value', '', 'span.product-price__old-cur')}
                </div>
            {/if}
        </div>
        <div class="pull-right">
        	<div class="products__price_item products__price_new">
            	{echo emmet_money($model->firstVariant->getFinalPrice(), 'span.product-price__main-value', '', 'span.product-price__main-cur')}	
            </div>
            {$loc_additional_prices = emmet_money_additional($model->firstVariant->getFinalPrice(), 'span.product-price__addition-value', '', 'span.product-price__addition-cur')}
            {if count($loc_additional_prices) > 0}
            	{foreach $loc_additional_prices as $additional_price}
            		<div class="products__price_item products__price_eur">
                    	{$additional_price}
            		</div>
                {/foreach}
            {/if}
        </div>
    </div>
</div>
<form action="{site_url('/shop/cart/addProductByVariantId/'.$model->firstVariant->getId())}" method="get" data-product-button--form data-product-button--path="{site_url('/shop/cart/api/addProductByVariantId')}"
	data-product-button--variant="{echo $model->firstVariant->getId()}"
	data-product-button--modal-url="{shop_url('cart')}"
	data-product-button--modal-template="includes/cart/cart_modal" class="compare_buy">
        <!-- Add to cart button -->
		<a style="cursor:pointer" onclick="$(this).submit();" class="products__buy-btn {echo $in_cart > 0 ? 'hidden' : '' }" data-product-button--add data-product-button-item data-product-button--loader><div class="products__buy-content"><span class="products__buy-span">{tlang('Add to Cart')}</span></div></a>
    	<!-- Already in cart button -->
        <a class="products__buy-btn product-buy__btn--in-cart {echo $in_cart > 0 ? '' : 'hidden' }" href="{shop_url('cart')}" data-modal="includes/cart/cart_modal" data-product-button--view data-product-button-item><div class="products__buy-content"><span class="products__buy-span">{tlang('View in Cart')}</span></div></a>
		<input type="hidden" name="redirect" value="cart">
      	{form_csrf()}
</form>

