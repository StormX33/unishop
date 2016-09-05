<div class="lang__switch">
{widget('languages')}
</div>
<a href="{shop_url('cart')}" id="card__button" class="card__button" data-modal="includes/cart/cart_modal">
<div class="card__button_icon"><span aria-hidden="true" class="glyphicon glyphicon-shopping-cart"></span></div>
<div class="card__button_content" data-ajax-inject="cart-header"> {view('shop/includes/cart/cart_header.tpl', ['model' => \Cart\BaseCart::getInstance()])}</div></a>

 