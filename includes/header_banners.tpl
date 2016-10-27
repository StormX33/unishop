<div class="container paginations__container">
	<div class="pagination__item pagination__item_prev">
		<button class="pagination__button banner__products_prev disabled"></button>
	</div>
</div>
<div class="banner__content">
	<div class="banner__content_inner banner__main_slide">
       	<img src="{$THEME}images/banner/banner_img.jpg" alt="Баннер | Главная" class="img-responsive banner__img">
		<div class="container">
			<div class="banner__inner_content">
				<div class="banner__offer">
					<div class="inner__text_header"><span class="text__header_span">Современные</span>системы отопления </div>
					<div class="offer__text">
						<div class="offer__header"> Просчет за 1 день!</div>
					</div>
					<div class="offer__inner_buttons">
                       	<a href="{site_url('callbacks')}?subj=5" data-modal="callbacks_modal" rel="nofollow" class="banner__btn banner__btn_order">Заказать просчет</a>
                        <a href="{shop_url('categories')}" class="banner__btn banner__btn_catalog">В каталог</a>
                    </div>
				</div>
				<div class="right__column_image"><img src="{$THEME}images/banner/for_banner1.png" alt="Современные системы отопления"></div>
			</div>
		</div>
	</div>
	<div class="banner__content_inner banner__content_slide banner__first_room">
       	<img src="{$THEME}images/banner/banner_img.jpg" alt="Баннер | Главная" class="img-responsive banner__img">
		<div class="container">
			<div class="banner__inner_content">
				<div class="banner__offer">
					<ul class="banner__first-slide_list banner__inner_list">
						<li class="banner__slide_item">
							<div class="banner__offer_content"> 
								<div class="inner__text_header">
                                   	<span class="text__header_span">Газовые котлы </span>
                                </div>
								<div class="offer__inner_buttons">
                                  	<a href="{site_url('callbacks')}?subj=5" data-modal="callbacks_modal" rel="nofollow" class="banner__btn banner__btn_order">Заказать просчет</a>
                                    <a href="{shop_url('category/gazovye-kotly')}" class="banner__btn banner__btn_catalog">В каталог</a>
                               </div>
							</div>
							<div class="banner__slide_item-content">
								<div class="slide__item__inner">
                                   	{$banprod = getProduct(58022)}
                                   	<div class="slide__item_img-wrap">
                                       	<img src="{media_url($banprod->firstVariant->getMediumPhoto())}" alt="{echo $banprod->getName()}">
                                    </div>
                                    <div class="slide__item_content">
                                      	<a href="{shop_url('product/'.$banprod->getUrl())}" class="slide__item_title">{echo $banprod->getName()}</a>
                                        <div class="slide__item_price">
                                           	Цена: {echo emmet_money($banprod->firstVariant->getOriginPrice())}
                                        </div>
                                        <a href="{shop_url('product/'.$banprod->getUrl())}" class="slide__item_link">Подробнее </a>
                                    </div>
								</div>
							</div>
						</li>
						<li class="banner__slide_item">
							<div class="banner__offer_content"> 
								<div class="inner__text_header"><span class="text__header_span">Автономная канализация</span></div>
								<div class="offer__inner_buttons">
                                   	<a href="{site_url('callbacks')}?subj=5" data-modal="callbacks_modal" rel="nofollow" class="banner__btn banner__btn_order">Заказать просчет</a>
                                    <a href="{shop_url('categories')}" class="banner__btn banner__btn_catalog">В каталог</a>
                                </div>
							</div>
							<div class="banner__slide_item-content">
								<div class="slide__item__inner">
									<div class="slide__item_img-wrap">
                                       	<img src="{$THEME}images/banner/for_banner_item2.png" alt="Дренажный тоннель Graf">
                                    </div>
									<div class="slide__item_content"><a href="#" class="slide__item_title">Дренажный тоннель Graf </a>
										<div class="slide__item_price">Цена: 25 569 грн </div><a href="#" class="slide__item_link">Подробнее </a>
									</div>
								</div>
							</div>
						</li>
						<li class="banner__slide_item">
							<div class="banner__offer_content"> 
								<div class="inner__text_header"><span class="text__header_span">Автономная канализация</span></div>
								<div class="offer__inner_buttons">
                                   	<a href="{site_url('callbacks')}?subj=5" data-modal="callbacks_modal" rel="nofollow" class="banner__btn banner__btn_order">Заказать просчет</a>
                                   	<a href="{shop_url('categories')}" class="banner__btn banner__btn_catalog">В каталог</a>
                                </div>
							</div>
							<div class="banner__slide_item-content">
                           		<div class="slide__item__inner">
                           			<div class="slide__item_img-wrap">
                               			<img src="{$THEME}images/banner/for_banner_item3.png" alt="Станция биологической очистки ТОПАС 5">
                               		</div>
                           			<div class="slide__item_content"><a href="#" class="slide__item_title">Станция биологической очистки ТОПАС 5 </a>
                           				<div class="slide__item_price">Цена: 38 682 грн </div><a href="#" class="slide__item_link">Подробнее </a>
                           			</div>
                           		</div>
                           	</div>
						</li>
                        <li class="banner__slide_item">
                            <div class="banner__offer_content"> 
                            	<div class="inner__text_header"><span class="text__header_span">Пеллетные котлы</span></div>
                            	<div class="offer__inner_buttons">
                                	<a href="{site_url('callbacks')}?subj=5" data-modal="callbacks_modal" rel="nofollow" class="banner__btn banner__btn_order">Заказать просчет</a>
                                    <a href="{shop_url('category/tverdotoplivnye-kotly/pelletnye-kotly')}" class="banner__btn banner__btn_catalog">В каталог</a>
                                </div>
                            </div>
                            <div class="banner__slide_item-content">
                            	<div class="slide__item__inner">
                                  	{$banprod = getProduct(65132)}
                                   	<div class="slide__item_img-wrap">
                                       	<img src="{media_url($banprod->firstVariant->getMediumPhoto())}" alt="{echo $banprod->getName()}">
                                    </div>
                                    <div class="slide__item_content">
                                       	<a href="{shop_url('product/'.$banprod->getUrl())}" class="slide__item_title">{echo $banprod->getName()}</a>
                                        <div class="slide__item_price">
                                           	Цена: {echo emmet_money($banprod->firstVariant->getOriginPrice())}
                                        </div>
                                        <a href="{shop_url('product/'.$banprod->getUrl())}" class="slide__item_link">Подробнее </a>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li class="banner__slide_item">
                        	<div class="banner__offer_content"> 
                            	<div class="inner__text_header">
                                	<span class="text__header_span">Расширительные баки</span>
                                </div>
                                <div class="offer__inner_buttons">
                                  	<a href="{site_url('callbacks')}?subj=5" data-modal="callbacks_modal" rel="nofollow" class="banner__btn banner__btn_order">Заказать просчет</a>
                                    <a href="{shop_url('category/rasshiritelnye-baki')}" class="banner__btn banner__btn_catalog">В каталог</a>
                                </div>
							</div>
                            <div class="banner__slide_item-content">
                               	<div class="slide__item__inner">
                                   	{$banprod = getProduct(28203)}
                                   	<div class="slide__item_img-wrap">
                                      	<img src="{media_url($banprod->firstVariant->getMediumPhoto())}" alt="{echo $banprod->getName()}">
                                    </div>
                                    <div class="slide__item_content">
                                       	<a href="{shop_url('product/'.$banprod->getUrl())}" class="slide__item_title">{echo $banprod->getName()}</a>
                                        <div class="slide__item_price">
                                          	Цена: {echo emmet_money($banprod->firstVariant->getOriginPrice())}
                                        </div>
                                        <a href="{shop_url('product/'.$banprod->getUrl())}" class="slide__item_link">Подробнее </a>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li class="banner__slide_item">
                            <div class="banner__offer_content"> 
                            	<div class="inner__text_header"><span class="text__header_span">Бойлеры косвенного нагрева </span></div>
                            	<div class="offer__inner_buttons">
                                	<a href="{site_url('callbacks')}?subj=5" data-modal="callbacks_modal" rel="nofollow" class="banner__btn banner__btn_order">Заказать просчет</a>
                                    <a href="{shop_url('category/elektricheskie-vodonagrevateli/boilery-kosvennogo-nagreva')}" class="banner__btn banner__btn_catalog">В каталог</a>
                                </div>
                            </div>
                            <div class="banner__slide_item-content">
                            	<div class="slide__item__inner">
                                   	{$banprod = getProduct(60579)}
                                   	<div class="slide__item_img-wrap">
                                      	<img src="{media_url($banprod->firstVariant->getMediumPhoto())}" alt="{echo $banprod->getName()}">
                                    </div>
                                    <div class="slide__item_content">
                                       	<a href="{shop_url('product/'.$banprod->getUrl())}" class="slide__item_title">{echo $banprod->getName()}</a>
                                        <div class="slide__item_price">
                                          	Цена: {echo emmet_money($banprod->firstVariant->getOriginPrice())}
                                        </div>
                                        <a href="{shop_url('product/'.$banprod->getUrl())}" class="slide__item_link">Подробнее </a>
                                    </div>
                            	</div>
                            </div>
                        </li>
                        <li class="banner__slide_item">
                        	<div class="banner__offer_content"> 
                            	<div class="inner__text_header"><span class="text__header_span">Системы быстрого монтажа </span></div>
                            	<div class="offer__inner_buttons">
                                	<a href="{site_url('callbacks')}?subj=5" data-modal="callbacks_modal" rel="nofollow" class="banner__btn banner__btn_order">Заказать просчет</a>
                               		<a href="{shop_url('category/sistemy-bystorogo-montazha')}" class="banner__btn banner__btn_catalog">В каталог</a>
                                </div>
                            </div>
                            <div class="banner__slide_item-content">
                            	<div class="slide__item__inner">
                                   	{$banprod = getProduct(48115)}
                                   	<div class="slide__item_img-wrap">
                                      	<img src="{media_url($banprod->firstVariant->getMediumPhoto())}" alt="{echo $banprod->getName()}">
                                    </div>
                                    <div class="slide__item_content">
                                       	<a href="{shop_url('product/'.$banprod->getUrl())}" class="slide__item_title">{echo $banprod->getName()}</a>
                                        <div class="slide__item_price">
                                          	Цена: {echo emmet_money($banprod->firstVariant->getOriginPrice())}
                                        </div>
                                        <a href="{shop_url('product/'.$banprod->getUrl())}" class="slide__item_link">Подробнее </a>
                                    </div>
                            	</div>
                            </div>
                        </li>
                        <li class="banner__slide_item">
                            <div class="banner__offer_content"> 
                            	<div class="inner__text_header"><span class="text__header_span">Электрические котлы</span></div>
                            	<div class="offer__inner_buttons">
                                	<a href="{site_url('callbacks')}?subj=5" data-modal="callbacks_modal" rel="nofollow" class="banner__btn banner__btn_order">Заказать просчет</a>
                                	<a href="{shop_url('category/elektricheskie-kotly')}" class="banner__btn banner__btn_catalog">В каталог</a>
                                </div>
                            </div>
                            <div class="banner__slide_item-content">
                            	<div class="slide__item__inner">
                                   	{$banprod = getProduct(59595)}
                                   	<div class="slide__item_img-wrap">
                                      	<img src="{media_url($banprod->firstVariant->getMediumPhoto())}" alt="{echo $banprod->getName()}">
                                    </div>
                                    <div class="slide__item_content">
                                       	<a href="{shop_url('product/'.$banprod->getUrl())}" class="slide__item_title">{echo $banprod->getName()}</a>
                                        <div class="slide__item_price">
                                          	Цена: {echo emmet_money($banprod->firstVariant->getOriginPrice())}
                                        </div>
                                        <a href="{shop_url('product/'.$banprod->getUrl())}" class="slide__item_link">Подробнее </a>
                                    </div>
                            	</div>
                            </div>
                        </li>
						<li class="banner__slide_item">
							<div class="banner__offer_content"> 
								<div class="inner__text_header">
                                   	<span class="text__header_span">Газовые котлы </span>
                                </div>
								<div class="offer__inner_buttons">
                                  	<a href="" data-modal="callbacks_modal" rel="nofollow" class="banner__btn banner__btn_order">Заказать просчет</a>
                                    <a href="{shop_url('category/gazovye-kotly')}" class="banner__btn banner__btn_catalog">В каталог</a>
                               </div>
							</div>
							<div class="banner__slide_item-content">
								<div class="slide__item__inner">
                                   	{$banprod = getProduct(58022)}
                                   	<div class="slide__item_img-wrap">
                                       	<img src="{media_url($banprod->firstVariant->getMediumPhoto())}" alt="{echo $banprod->getName()}">
                                    </div>
                                    <div class="slide__item_content">
                                      	<a href="{shop_url('product/'.$banprod->getUrl())}" class="slide__item_title">{echo $banprod->getName()}</a>
                                        <div class="slide__item_price">
                                           	Цена: {echo emmet_money($banprod->firstVariant->getOriginPrice())}
                                        </div>
                                        <a href="{shop_url('product/'.$banprod->getUrl())}" class="slide__item_link">Подробнее </a>
                                    </div>
								</div>
							</div>
						</li>
					</ul>
				</div>
				<div class="right__column_image"><img src="{$THEME}images/banner/for_banner2.png" alt="Газовые котлы"></div>
			</div>
		</div>
	</div>
	<div class="banner__content_inner banner__content_slide">
       	<img src="{$THEME}images/banner/banner_img.jpg" alt="Баннер | Главная" class="img-responsive banner__img">
		<div class="container">
			<div class="banner__inner_content">
				<div class="banner__offer">
					<ul class="banner__slide_list">
                    	<li class="banner__slide_item">
                        	<div class="banner__offer_content"> 
                            	<div class="inner__text_header">
                                	<span class="text__header_span">Газовые котлы</span>
                                </div>
                            	<div class="offer__inner_buttons">
                                	<a href="{site_url('callbacks')}?subj=5" data-modal="callbacks_modal" rel="nofollow" class="banner__btn banner__btn_order">Заказать просчет</a>
                                    <a href="#" class="banner__btn banner__btn_catalog">В каталог</a>
                            	</div>
                            </div>
                            <div class="slide__item__inner">
                            	<div class="slide__item_img-wrap">
                                	<img src="{$THEME}images/banner/for_banner_item1.png" alt="Viessman VITODENS 100-W WB1C258 35 кВт одноконтурный)">
                                </div>
                            	<div class="slide__item_content">
                                	<a href="#" class="slide__item_title">Viessman VITODENS 100-W WB1C258 35 кВт (одноконтурный)</a>
                            		<div class="slide__item_price">Цена: 35 487 грн </div><a href="#" class="slide__item_link">Подробнее </a>
                            	</div>
                           </div>
						</li>
					</ul>
				</div>
				<div class="right__column_image"><img src="{$THEME}images/banner/for_banner2.png" alt="Газовые котлы"></div>
			</div>
		</div>
	</div>
	<div class="banner__content_inner banner__content_slide">
       	<img src="{$THEME}images/banner/banner_img.jpg" alt="Баннер | Главная" class="img-responsive banner__img">
		<div class="container">
			<div class="banner__inner_content">
				<div class="banner__offer">
					<div class="banner__offer_content"> 
						<div class="inner__text_header"><span class="text__header_span">Газовые котлы</span></div>
						<div class="offer__inner_buttons">
                       		<a href="{site_url('callbacks')}?subj=5" data-modal="callbacks_modal" rel="nofollow" class="banner__btn banner__btn_order">Заказать просчет</a>
                           	<a href="#" class="banner__btn banner__btn_catalog">В каталог</a>
                       	</div>
					</div>
                    <ul class="banner__slide_list">
                       <li class="banner__slide_item">
                           <div class="slide__item__inner">
                               	<div class="slide__item_img-wrap">
                                   	<img src="{$THEME}images/banner/for_banner_item1.png" alt="Viessman VITODENS 100-W WB1C258 35 кВт одноконтурный)">
                                </div>
                               	<div class="slide__item_content">
                                   	<a href="#" class="slide__item_title">Viessman VITODENS 100-W WB1C258 35 кВт (одноконтурный)</a>
                               		<div class="slide__item_price">Цена: 35 487 грн </div><a href="#" class="slide__item_link">Подробнее </a>
                               	</div>
                           </div>
						</li>
					</ul>
				</div>
				<div class="right__column_image"><img src="{$THEME}images/banner/for_banner2.png" alt="Газовые котлы"></div>
			</div>
		</div>
	</div>
</div>
