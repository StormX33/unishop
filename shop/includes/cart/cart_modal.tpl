<div class="modal-wrapper">
	<div class="remodal remodal__cart remodal-is-initialized remodal-is-opened">
		<!-- Modal Header -->
		<header class="popup_header">
			<button class="popup-window-close" data-modal-close></button>
			<div class="popup__header_img-wrap">
				<img src="{$THEME}images/icons/popup/for_popup3.png" />
			</div>
			<div class="popup__header_title">
				<h3 class="popup__header_title-text">{tlang('Shopping cart')}</h3>
			</div>
		</header>
  		<div class="form__popup_content" data-cart-summary="modal"  data-cart-summary--tpl="includes/cart/cart_modal"   data-cart-summary--url="{shop_url('cart')}">
    		<div class="popup__cart_form">
    			<div class="table-responsive">
      				{if count($items) > 0}
        				{view('shop/includes/cart/cart_summary.tpl', [
        				'parent_type' => 'modal',
        				'parent_coupon' => false
        				])}
      				{else:}
        				<p class="typo" data-ajax-grab="cart-empty">{tlang('You have no items in your shopping cart')}</p>
      				{/if}
    			</div><!-- \.table-responsive -->
    			<!-- Modal Footer -->
    			{if count($items) > 0}    
    				<div class="popup_footer">
                    <div class="feedback__button pull-left">
                      <div class="writereview">
            					   <button class="feedback-submit" type="reset" data-modal-close>{tlang('Continue Shopping')}</button>
                      </div>
                    </div>
        				<div class="feedback__button  pull-right">
                    <div class="submit__btn_accent">
            					<a class="feedback-submit" href="{shop_url('cart')}" data-button-loader="button">
              					<span>{tlang('Proceed to checkout')}</span>
            					</a>
                    </div>
        				</div>
    				</div>
    			{/if}
            </div>
		</div><!-- \. data-cart container -->
  		<!-- Insert Header cart template via Ajax-->
  		<div class="hidden" data-ajax-grab="cart-header">
    		{view('shop/includes/cart/cart_header.tpl', ['model' => $cart])}
  		</div>
	</div><!-- \.modal -->
</div>