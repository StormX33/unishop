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
				<div data-ajax-grab="cart-empty">
					<div class="content__header">
						<h1 class="content__title">
							{tlang('Cart is currently empty')}
						</h1>
					</div>
					<div class="content__row">
						<p class="typo">{tlang('You have no items in your shopping cart')}</p>
					</div>
					<div class="content__row">
						<a class="btn btn-primary" href="{site_url('')}">{tlang('Continue Shopping')}</a>
					</div>
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