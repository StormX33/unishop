<div class="modal-wrapper">
	<div class="remodal remodal-is-initialized remodal-is-opened">
		<!-- Modal Header -->
		<header class="popup_header">
			<button class="popup-window-close" data-modal-close></button>
			<div class="popup__header_title">
				<h3 class="popup__header_title-text">
					Поиск
				</h3>
			</div>
		</header>
		<div class="form__popup_content">  
			    <form action="{shop_url('search')}" method="GET" class="feedback_form popup__feedback_form">
        <input class="search__form-input" data-autocomplete-input type="text" name="text" autocomplete="off" placeholder="{tlang('Search by item name or number')}" value="{echo tpl_encode($CI->input->get('text'))}" required>
				<div class="feedback__button">
					<div class="submit__btn_accent">
							<input class="feedback-submit" type="submit" value="Искать">
					</div>
				</div>
    </form>

		</div><!-- /.modal -->
	</div>
</div>