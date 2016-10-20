<div class="main-content cabinet-page">
	<aside class="sidebar pull-left">
		<div class="personal__data">
			<div class="sidebar__title">WT-Prof</div>
			<div class="sidebar__content">
				<div class="personal__data_wrap">
					<div class="personal__data_text">Ваш <span class="personal__data_span-id">id</span>: (user_id)</div>
					<div class="personal__data_text">Баллы: <span class="personal__data_span">(user_points) </span></div>
				</div>
				<div class="personal__data_wrap">
					<div class="personal__info_text">До уровня <span class="personal__data_span">(user_poins_level)</span>осталось <span class="personal__data_span">(needed_user_poinst)</span>
					</div>
				</div>
			</div>
		</div>
		<div class="cabinet__menu"> 
			<div class="sidebar__title">Меню </div>
			<div class="sidebar__content">
				<ul id="sidebar-nav" class="sidebar-nav">
					<li data-class="tab_orders" class="active sidebar-nav__item sidebar-nav__item_orders">
                       	<a href="#" class="sidebar-nav__link sidebar-nav__tab-link"><span>Мои заказы</span></a>
                    </li>
					<li data-class="tab_data" class="sidebar-nav__item sidebar-nav__item_data">
                       	<a href="#" class="sidebar-nav__link sidebar-nav__tab-link"> <span>Персональные данные</span></a>
                    </li>
					<li data-class="tab_password" class="sidebar-nav__item sidebar-nav__item_password">
                      	<a href="#" class="sidebar-nav__link sidebar-nav__tab-link"><span>Изменить пароль</span></a>
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
			<div class="tab__pane pane__tab_orders active"> 
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
          <!-- Discount info 
          {$loc_discount = module('mod_discount/discount_api');}
          {if $loc_discount->discountsExists() > 0}
            <div class="content__row">
              <div class="frame-content">
                <div class="frame-content__header frame-content__header--sm">
                  <div class="frame-content__title frame-content__title--sm">{tlang('Discount information')}</div>
                </div>
                <div class="frame-content__inner">
                  <div class="frame-content__row">
                    {view('shop/includes/profile/discount_info.tpl', [
                    'discount' => $loc_discount
                    ])}
                  </div>
                </div>
              </div>
            </div>
          {/if}-->
</div><!-- /.content -->