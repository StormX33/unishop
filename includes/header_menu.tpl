<nav role="navigation" class="navigation navbar yamm navbar-default">
	<div class="container">
    	<a href="#page-start" class="logo">
			<div class="logo__img_wrap"><img src="{$THEME}images/logos/logo_affix.png" alt="{echo $CI->core->settings['site_title']}" class="logo__img logo__affix img-responsive"></div>
        </a>
		<div class="navbar-header">
			<button type="button" data-toggle="collapse" data-target="#navbar-collapse-grid" class="navbar-toggle">
            	<span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
			</button>
            <b class="hidden-lg hidden-md hidden-sm">{tlang('Menu')}</b>
		</div>
		<div id="navbar-collapse-grid" class="navbar-collapse collapse">
			<ul class="nav__list nav navbar-nav">
				<li class="nav__item dropdown">
                	<a href="#" data-toggle="dropdown" class="nav__link dropdown-toggle">{tlang('Product Catalog')}<span class="nav__span_arrow"></span></a>
					<ul class="dropdown-menu">
						<li>
							<div class="yamm-content">
								<div class="inner__title"> 
									<div class="inner__title_text">
                                    	<span class="inner__title_text">{tlang('Recommended')}:</span>
                                    </div>
									<ul class="inner__title_list">
										<li class="inner__title_item"><a href="#" class="inner__title_link">Класические котлы</a></li>
										<li class="inner__title_item"><a href="#" class="inner__title_link">Электрические бойлеры</a></li>
										<li class="inner__title_item"><a href="#" class="inner__title_link">Электрические конвекторы</a></li>
									</ul>
								</div>
								<div class="row-fluid">
                                	{load_catalog_menu('navs/catalog_tree')}
								</div>
							</div>
						</li>
					</ul>
				</li>
				<li class="nav__item dropdown">
                	<a href="#" data-toggle="dropdown" class="nav__link dropdown-toggle">Услуги<span class="nav__span_arrow"></span></a>
					<ul class="dropdown-menu">
						<li>
							<div class="yamm-content">
								<div class="inner__title"> 
									<div class="inner__title_text"> <span class="inner__title_text">Рекомендованные:</span></div>
									<ul class="inner__title_list">
										<li class="inner__title_item"><a href="#" class="inner__title_link">Класические котлы</a></li>
										<li class="inner__title_item"><a href="#" class="inner__title_link">Электрические бойлеры</a></li>
										<li class="inner__title_item"><a href="#" class="inner__title_link">Электрические конвекторы</a></li>
									</ul>
								</div>
								<div class="row-fluid">
									<ul class="col-sm-3">
										<li class="collumn"><a href="catalog.html" class="item__title_link"><h4 class="item__title_text">Твердотоплевные котлы</h4></a>
                                        	<a href="product.html" class="collumn__item_link">Класические</a>
                                            <a href="product.html" class="collumn__item_link">Пиролизные</a>
                                            <a href="product.html" class="collumn__item_link">Длительного горения</a>
                                            <a href="product.html" class="collumn__item_link">Пеллетные</a>
										</li>
										<li class="collumn">
                                        	<a href="catalog.html" class="item__title_link"><h4 class="item__title_text"> Теплоаккумуляторы</h4></a>
                                            <a href="#" class="collumn__item_link">Класические</a>
                                            <a href="#" class="collumn__item_link">Пиролизные</a>
                                            <a href="#" class="collumn__item_link">Длительного горения</a>
                                            <a href="#" class="collumn__item_link">Пеллетные</a>
										</li>
										<li class="collumn">
                                        	<a href="catalog.html" class="item__title_link"><h4 class="item__title_text"> Теплоаккумуляторы</h4></a>
                                            <a href="#" class="collumn__item_link">Класические</a>
                                            <a href="#" class="collumn__item_link">Пиролизные</a>
                                            <a href="#" class="collumn__item_link">Длительного горения</a>
                                            <a href="#" class="collumn__item_link">Пеллетные</a>
										</li>
									</ul>
									<ul class="col-sm-3">
										<li class="collumn">
                                        	<a href="catalog.html" class="item__title_link"><h4 class="item__title_text">Газовые котлы</h4></a>
                                            <a href="#" class="collumn__item_link">Класические</a>
                                            <a href="#" class="collumn__item_link">Пиролизные</a>
                                            <a href="#" class="collumn__item_link">Длительного горения</a>
                                            <a href="#" class="collumn__item_link">Пеллетные</a>
										</li>
										<li class="collumn">
                                        	<a href="catalog.html" class="item__title_link"><h4 class="item__title_text">Радиаторы и внутрипольные конвекторы</h4></a>
                                            <a href="#" class="collumn__item_link">Класические</a>
                                            <a href="#" class="collumn__item_link">Пиролизные</a>
                                            <a href="#" class="collumn__item_link">Длительного горения</a>
                                            <a href="#" class="collumn__item_link">Пеллетные</a>
										</li>
										<li class="collumn">
                                        	<a href="catalog.html" class="item__title_link"><h4 class="item__title_text"> Электрические котлы</h4></a>
                                            <a href="#" class="collumn__item_link">Класические</a>
                                            <a href="#" class="collumn__item_link">Пиролизные</a>
                                            <a href="#" class="collumn__item_link">Длительного горения</a>
                                            <a href="#" class="collumn__item_link">Пеллетные</a>
										</li>
									</ul>
									<ul class="col-sm-3">
										<li class="collumn">
                                        	<a href="catalog.html" class="item__title_link"><h4 class="item__title_text">Электрические котлы</h4></a>
                                        	<a href="#" class="collumn__item_link">Класические</a>
                                            <a href="#" class="collumn__item_link">Пиролизные</a>
                                            <a href="#" class="collumn__item_link">Длительного горения</a>
                                            <a href="#" class="collumn__item_link">Пеллетные</a>
										</li>
										<li class="collumn">
                                        	<a href="catalog.html" class="item__title_link"><h4> Расширительные баки</h4></a>
                                            <a href="#" class="collumn__item_link">Класические</a>
                                            <a href="#" class="collumn__item_link">Пиролизные</a>
                                            <a href="#" class="collumn__item_link">Длительного горения</a>
                                            <a href="#" class="collumn__item_link">Пеллетные</a>
										</li>
										<li class="collumn">
                                        	<a href="catalog.html" class="item__title_link"><h4 class="item__title_text"> Расширительные баки</h4></a>
                                            <a href="#" class="collumn__item_link">Класические</a>
                                            <a href="#" class="collumn__item_link">Пиролизные</a>
                                            <a href="#" class="collumn__item_link">Длительного горения</a>
                                            <a href="#" class="collumn__item_link">Пеллетные</a>
										</li>
									</ul>
									<ul class="col-sm-3">
										<li class="collumn">
                                        	<a href="catalog.html" class="item__title_link"><h4 class="item__title_text">Циркуляционные насосы</h4></a>
                                            <a href="#" class="collumn__item_link">Класические</a>
                                            <a href="#" class="collumn__item_link">Пиролизные</a>
                                            <a href="#" class="collumn__item_link">Длительного горения</a>
                                            <a href="#" class="collumn__item_link">Пеллетные</a>
										</li>
										<li class="collumn">
                                        	<a href="catalog.html" class="item__title_link"><h4 class="item__title_text">Системы быстрого монтажа</h4></a>
                                            <a href="#" class="collumn__item_link">Класические</a>
                                            <a href="#" class="collumn__item_link">Пиролизные</a>
                                            <a href="#" class="collumn__item_link">Длительного горения</a>
                                            <a href="#" class="collumn__item_link">Пеллетные</a>
										</li>
										<li class="collumn">
                                        	<a href="catalog.html" class="item__title_link"><h4 class="item__title_text">Радиаторы и внутрипольные конвекторы</h4></a>
                                            <a href="#" class="collumn__item_link">Класические</a>
                                            <a href="#" class="collumn__item_link">Пиролизные</a>
                                            <a href="#" class="collumn__item_link">Длительного горения</a>
                                            <a href="#" class="collumn__item_link">Пеллетные</a>
										</li>
									</ul>
								</div>
							</div>
						</li>
					</ul>
				</li>
				<li class="nav__item nav__item-affix"><a href="#" class="nav__link">Проекты</a></li>
				<li class="nav__item"><a href="#" class="nav__link">Расчет обьекта</a></li>
				<li class="nav__item"><a href="#" class="nav__link">Прайс-листы</a></li>
				<li class="nav__item nav__item-affix"><a href="#" class="nav__link">Контакты</a></li>
			</ul>
		</div>
		<div class="contacts">
			{view('includes/header_phone.tpl')}
		</div>
		<div class="user__login">
			<div class="user__login_title">
            	<img src="{$THEME}images/logos/wt_prof.png" alt="WT-PROF">
            </div>
            <a href="{site_url('auth')}" class="user__login_link" data-modal="login_popup" rel="nofollow">
            	<span>{tlang('Sign in')}</span>
            </a>
		</div>
	</div>
</nav>