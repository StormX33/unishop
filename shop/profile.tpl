<div class="main-content cabinet-page">
	<aside class="sidebar pull-left">
		<div class="personal__data">
			<div class="sidebar__title">WT-Prof</div>
			<div class="sidebar__content">
				<div class="personal__data_wrap">
					<div class="personal__data_text">Ваш <span class="personal__data_span-id">id</span>: {echo $profile->getIdUser()}</div>
					<div class="personal__data_text">Баллы: <span class="personal__data_span">{echo $profile->getUserPoints()} </span></div>
				</div>
				<div class="personal__data_wrap">
				</div>
			</div>
		</div>
		<div class="cabinet__menu"> 
			<div class="sidebar__title">Меню</div>
			<div class="sidebar__content">
				<ul id="sidebar-nav" class="sidebar-nav">
					<li data-class="tab_orders" class="active sidebar-nav__item sidebar-nav__item_orders">
                       	<a href="#tab_orders" class="sidebar-nav__link sidebar-nav__tab-link"><span>Мои заказы</span></a>
                    </li>
					<li data-class="tab_data" class="sidebar-nav__item sidebar-nav__item_data">
                       	<a href="#tab_data" class="sidebar-nav__link sidebar-nav__tab-link"> <span>Персональные данные</span></a>
                    </li>
                	<li data-class="tab_wishlist" class="sidebar-nav__item sidebar-nav__item_data">
                       	<a href="#tab_wishlist" class="sidebar-nav__link sidebar-nav__tab-link"><span>Избранное</span></a>
                    </li>

					<li class="sidebar-nav__item sidebar-nav__item_exit">
                       	<a href="{site_url('auth/logout')}" class="sidebar-nav__link"><span>Выйти</span></a>
                    </li>
				</ul>
			</div>
		</div>
	</aside>
    <div class="content pull-right content__sale">
		<div id="cart__content" class="cart__content">
			<div class="tab__pane pane__tab_orders active}"> 
				<div class="pane__tab_orders_inner">
					<div class="cart__title">Мои заказы </div>
               		{if count($orders) > 0}
                  		{view('shop/includes/profile/order_history.tpl')}
                	{else:}
                  		<p class="typo">{tlang("You haven't made any orders yet")}</p>
                	{/if}
				</div>
            </div>
            <div class="tab__pane pane__tab_data">
				<div class="contacts__form_widget">
					<div class="check__content_title">
						<div class="cart__title">Персональные данные</div>
					</div>
                    {view('shop/includes/profile/user_data.tpl')}
				</div>
			</div>
            <div class="tab__pane pane__tab_wishlist">
            	<div class="pane__tab_orders_inner">
					{getWishList()}
            	</div>
            </div>
		</div>
	</div>
</div>