<article class="content-wrapper">
	<div class="container" data-cart-scope data-ajax-inject="cart-empty">
		<div class="main-title main-title_card">{tlang('One Step Checkout')}</div>
			{if count($items) > 0}
				<div class="cart__content">
                	<!-- Order cart -->
					<h3 class="cart__title">{tlang('Order summary')}</h3>
					<div class="cartForm" data-cart-summary="page" data-cart-summary--url="{shop_url('cart')}">
                          {view('shop/includes/cart/order_summary.tpl', [
                            'parent_type' => 'order',
                          'parent_coupon' => true
                          ])}
					</div>
                           	{view('shop/includes/cart/cart_checkout.tpl')}


				</div>
			{else:}
				<div data-ajax-grab="cart-empty" class="cart__content">
					<div class="content__row">
						<p class="typo">{tlang('You have no items in your shopping cart')}</p>
					</div>
					<a class="submit__btn_accent" href="{site_url('')}"><span class="btn__accent_span">{tlang('Continue Shopping')}</span></a>
                 </div>   
            {/if}

    <!--
        Insert Header cart template via Ajax
    -->
    <div class="hidden" data-ajax-grab="cart-header">
      {view('shop/includes/cart/cart_header.tpl', ['model' => $cart])}
    </div>

</div><!-- /.content -->
</article>