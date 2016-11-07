{$loc_href = $wish_list_id ? "/wishlist/moveItem/".$varId . "/" . $wish_list_id : "/wishlist/addItem/".$varId}

<div class="modal-wrapper">
	<div class="remodal remodal-is-initialized remodal-is-opened">
		<!-- Modal Header -->
		<header class="popup_header">
			<button class="popup-window-close" data-modal-close></button>
			<div class="popup__header_img-wrap">
            	<!--<img src="{$THEME}images/icons/popup/for_popup1.png" />-->
            </div>
			<div class="popup__header_title">
				<h3 class="popup__header_title-text">
					 {tlang('Add to your list')}
				</h3>
			</div>
		</header>
		<div class="form__popup_content">  
  			<form action="{site_url($loc_href)}" method="post" data-wishlist-ajax="{if $wish_list_id}move{else:}add{/if}" class="feedback_form popup__feedback_form">
				<div class="modal__content">
                    {if $errors}
                        <div class="modal__content-cell">
                            {foreach $errors as $error}
                                <div class="message message--error">{$error}</div>
                            {/foreach}
                        </div>
                    {/if}
					<div class="modal__content-cell">
        				{if !$success}
        					<div class="form">
          						<!-- Select from existing lists -->
                                {if count($wish_lists) > 0}
                                    {view('includes/forms/checkgroup.tpl', [
                                        'label' => tlang('Select a list'),
                                        'name' => 'wishlist',
                                        'type' => 'radio',  
                                        'data' => [$wish_lists, 'id', 'title'],
                                        'required' => false,
                                        'disabled' => $wish_list_id
                                    ])}
                                {/if}
								<!-- Create new list field -->
								<div class="form__field">
									<div class="form__label">{tlang('Create a new list')}</div>
									<div class="form__inner">
										<label class="form__checkbox" data-wishlist-new-scope>
											<span class="form__checkbox-field">
												<input type="radio" name="wishlist" value="" data-wishlist-new-radio>
											</span>
											<span class="form__checkbox-inner">
												<span class="form__checkbox-title">
													<input class="form-control" type="text" name="wishListName"  value="" data-wishlist-new-input>
												</span>
											</span>
										</label>              
									</div>
								</div>
							</div><!-- /.form -->
						{else:}
							<div class="typo">
								{tlang('Item successfuly added to your Wishlist!')}
							</div>
						{/if}
					</div><!-- /.modal__content-cell -->        
				</div><!-- /.modal__content -->
				<div class="feedback__button">
					<div class="submit__btn_accent">
						{if !$success}
							{if !$wish_list_id}
								<button class="feedback-submit" type="submit">{tlang('Add to list')}</button>
							{else:}
								<button class="feedback-submit" type="submit" data-wishlist-move-loader>
									<span>{tlang('Change list')}</span>
								</button>
							{/if}
						{else:}
							<a class="feedback-submit" href="{shop_url('profile')}#tab_wishlist" data-button-loader="button">
								<span>{tlang('Go to wishlist')}</span>
							</a>
						{/if}
						</div>
					</div>
				<div class="hidden" data-ajax-grab="wishlist-total">
					{view('wishlist/wishlist_total.tpl')}
				</div>
				{if $success}
					<div class="hidden" data-ajax-grab="wishlist-link-{$varId}">
						{module('wishlist')->renderWLButton($varId, ['type' => 'link'])}
					</div>
					<div class="hidden" data-ajax-grab="wishlist-btn-{$varId}">
						{module('wishlist')->renderWLButton($varId, ['type' => 'button'])}
					</div>
				{/if}
				{form_csrf()}
			</form>
		</div>
	</div>
</div>