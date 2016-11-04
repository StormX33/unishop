<article class="content-wrapper">
	<div class="container">
    	<div class="main-title main-title_order">
			<h2>{tlang('Your order is confirmed')}</h2>
			<h2>{tlang('Our managers will contact you')}</h2>
		</div>
		<!-- Order form -->
		<div class="order__content">
			<div class="order__left_collumn">
	 			{view('shop/includes/cart/order_view_info.tpl')}
			</div>
			<!-- Order cart -->
			<div class="order__right_collumn">
				<div class="order__right_collumn-inner">
					{view('shop/includes/cart/order_view_summary.tpl', ['items' => $model->getOrderProducts()])}
	            </div>  
			</div>
		</div>
</div><!-- /.container -->
</article>