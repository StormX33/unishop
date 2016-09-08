{$in_cart = getAmountInCart('SProducts', $model->firstVariant->getId())}
{$in_stock = $model->firstVariant->getStock()}
<div class="produt__funcs-buttons {echo $in_stock > 0 ? '' : 'hidden' }" data-product-available>
	<!-- Items in stock -->
    	<form action="{site_url('/shop/cart/addProductByVariantId/'.$model->firstVariant->getId())}" method="get"
          data-product-button--form
          data-product-button--path="{site_url('/shop/cart/api/addProductByVariantId')}"
          data-product-button--variant="{echo $model->firstVariant->getId()}"
          data-product-button--modal-url="{shop_url('cart')}"
          data-product-button--modal-template="includes/cart/cart_modal">
			<div class="produt__count">
		    	<!-- Add to cart button -->
        			<button class="products__buy-btn {echo $in_cart > 0 ? 'hidden' : '' }" type="submit" data-product-button--add data-product-button-item data-product-button--loader>
          				<span class="products__buy-span">{tlang('Add to Cart')}</span>
        			</button>
      		<!-- Input product quantity, you wish to buy -->
      			{if $parent_quantity}
                	{if $in_cart == 0}
          				{view('includes/forms/input-quantity.tpl', ['parent_name' => 'quantity','parent_value' => 1])}
                    {/if}
      			{/if}
                				<!-- Already in cart button -->
        			<a class="products__buy-btn product-buy__btn--in-cart {echo $in_cart > 0 ? '' : 'hidden' }" href="{shop_url('cart')}" data-modal="includes/cart/cart_modal" >
                    	<span class="products__buy-span">{tlang('View in Cart')}</span>
                    </a>

			    <input type="hidden" name="redirect" value="cart">
      			{form_csrf()}
      		</div>
		</form>
</div>
