<div class="lang__switch">
{widget('languages')}
</div>
<a href="{shop_url('cart')}" id="card__button" class="card__button" data-modal="includes/cart/cart_modal">
	<i class="top__cart_icon"></i>
	<div class="card__button_content" data-ajax-inject="cart-header"> {view('shop/includes/cart/cart_header.tpl', ['model' => \Cart\BaseCart::getInstance()])}</div>
</a>

 