<div class="modal-wrapper">
	<div class="remodal remodal-is-initialized remodal-is-opened">
    	<!-- Modal Header -->
		<header class="popup_header">
			<button class="popup-window-close" data-modal-close></button>
			<div class="popup__header_title">
				<h3 class="popup__header_title-text">
					{tlang('Edit your list')}
				</h3>
			</div>
		</header>
        <div class="form__popup_content"> 
			<form action="{site_url('wishlist/wishlistApi/updateWL')}" method="post" data-wishlist-edit="wishlist_update" data-ajax-request="wishlist_update"
data-ajax-loader="wishlist_update" data-ajax-response="wishlist_update"  class="feedback_form popup__feedback_form">
            <div class="modal__content-cell hidden" data-wishlist-edit--error>
            <div class="message message--error" data-wishlist-edit--error-message></div>
            </div>
            {foreach $wishlists as $wishlist}
                <div class="form__input_wrap">
                    {view('includes/forms/input-base.tpl', [
                        'label' => tlang('List name'),
                        'type' => 'test',
                        'name' => 'title',
                        'value' => $wishlist['0']['title'],
                        'required' => true
                    ])}
                </div>
                <input type="hidden" name="WLID" value="{echo $wishlist['0']['wish_list_id']}">
                <input type="hidden" name="access" value="shared">        
            {/foreach}
            <div class="feedback__button">
                <div class="submit__btn_accent">
                    <button class="feedback-submit" type="submit" data-wishlist-edit--button>
                		<span>{tlang('Edit list')}</span>
                	</button>
                </div>
            </div><!-- /.modal__footer -->
            </form>
		</div>
	</div>
</div><!-- /.modal -->