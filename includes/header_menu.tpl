<nav class="navigation cbp-hrmenu" role="navigation">
	<div class="container">
    	<a href="{site_url('')}" class="logo">
			<div class="logo__img_wrap"><img src="{$THEME}images/logos/logo_affix.png" alt="{echo $CI->core->settings['site_title']}" class="logo__img logo__affix img-responsive"></div>
        </a>
		<div class="navbar-header">
			<button type="button" data-toggle="collapse" data-target="#navbar-collapse-grid" class="toggle-mnu"></button>
            <b class="hidden-lg menu-hidden">Товары и услуги</b>
            <a href="{site_url('poisk')}" type="button" data-toggle="collapse" data-target="#navbar-collapse-grid" class="toggle-search" data-modal="search_popup"></a>
		</div>

			<ul class="nav__list">
				<li class="nav__item nav__item_dropdown">
                	<a href="/shop/categories" class="nav__link sf-with-ul">{tlang('Product Catalog')}<span class="nav__span_arrow"></span></a>
					<div class="cbp-hrsub category__hrsub">
						<div class="cbp-hrsub-inner">
							<div class="sub__menu_content">
								<!-- <div class="inner__title"> 
									<div class="inner__title_text">
                                    	<span class="inner__title_text">{tlang('Recommended')}:</span>
                                    </div>
									<ul class="inner__title_list">
										<li class="inner__title_item"><a href="#" class="inner__title_link">Класические котлы</a></li>
										<li class="inner__title_item"><a href="#" class="inner__title_link">Электрические бойлеры</a></li>
										<li class="inner__title_item"><a href="#" class="inner__title_link">Электрические конвекторы</a></li>
									</ul>
								</div> -->
								<div class="cbp-hrsub-content">
                                	{load_catalog_menu('navs/catalog_tree')}
								</div>
							</div>
						</div>
					</div>
				</li>
				{load_menu('sticked')}
			</ul>
	
		<div class="contacts">
			{view('includes/header_phone.tpl')}
		</div>
		<div class="user__login_wrap">
			<div class="user__login">
            {if !$CI->dx_auth->is_logged_in()}
            	<a href="{site_url('auth')}" data-modal="login_popup" rel="nofollow">
				<div class="user__login_title">
	            	<img src="{$THEME}images/logos/wt_prof.png" alt="WT-PROF">
	            </div>
	            <span href="{site_url('auth')}" class="user__login_link" data-modal="login_popup" rel="nofollow">
	            	<span>Для партнеров</span>
	            </span>
                </a>
             {else:}
             	<div class="user__login_title">
                	<a href="{shop_url('profile')}" rel="nofollow">
	            		<img src="{$THEME}images/logos/wt_prof.png" alt="WT-PROF - {tlang('Your Account')}">
                	</a>
	            </div>
	            <a href="{site_url('auth/logout')}" class="user__login_link" rel="nofollow">
	            	<span>{tlang('Sign out')}</span>
	            </a>

             {/if}
			</div>
		</div>
	</div>
</nav>