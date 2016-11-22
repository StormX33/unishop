					<div class="container paginations__container">
						<div class="pagination__item pagination__item_prev">
							<button class="pagination__button banner__products_prev disabled"></button>
						</div>
					</div>
          <div class="container__btn_prev">
            <div class="btn__prev_wrap">
              <div class="btn__title">На главную</div>
              <button class="banner__btn_prev disabled"></button>
            </div>
          </div>
					<div class="banner__content">
	<div class="banner__content_inner banner__main_slide">
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
                        <div class="slide__item_description">
                        {echo $banprod->getShortDescription()}
                        </div>
                      <div class="slide__item_price">
                         {echo emmet_money($banprod->firstVariant->getOriginPrice())}
                      </div>
                      <a href="{shop_url('product/'.$banprod->getUrl())}" class="slide__item_link products__buy-btn">
                      <span class="products__buy-span">Подробнее</span>
                      </a>
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
										<div class="slide__item_price">25 569 грн </div><a href="#" class="slide__item_link products__buy-btn">
                      <span class="products__buy-span">Подробнее</span></a>
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
                           				<div class="slide__item_price">38 682 грн </div><a href="#" class="slide__item_link products__buy-btn">  <span class="products__buy-span">Подробнее</span></a>
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
                            <div class="slide__item_description">
                             {echo $banprod->getShortDescription()}
                            </div>
                            <div class="slide__item_price">
                               	 {echo emmet_money($banprod->firstVariant->getOriginPrice())}
                            </div>
                            <a href="{shop_url('product/'.$banprod->getUrl())}" class="slide__item_link products__buy-btn">  
                            <span class="products__buy-span">Подробнее</span></a>
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
                            <div class="slide__item_description">
                             {echo $banprod->getShortDescription()}
                            </div>
                            <div class="slide__item_price">
                               {echo emmet_money($banprod->firstVariant->getOriginPrice())}
                            </div>
                            <a href="{shop_url('product/'.$banprod->getUrl())}" class="slide__item_link products__buy-btn">
                              <span class="products__buy-span">Подробнее</span></a>
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
                            <div class="slide__item_description">
                             {echo $banprod->getShortDescription()}
                            </div>
                            <div class="slide__item_price">
                               {echo emmet_money($banprod->firstVariant->getOriginPrice())}
                            </div>
                            <a href="{shop_url('product/'.$banprod->getUrl())}" class="slide__item_link products__buy-btn">  
                            <span class="products__buy-span">Подробнее</span></a>
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
                            <div class="slide__item_description">
                             {echo $banprod->getShortDescription()}
                            </div>
                            <div class="slide__item_price">
                               {echo emmet_money($banprod->firstVariant->getOriginPrice())}
                            </div>
                            <a href="{shop_url('product/'.$banprod->getUrl())}" class="slide__item_link products__buy-btn">
                              <span class="products__buy-span">Подробнее</span></a>
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
                            <div class="slide__item_description">
                             {echo $banprod->getShortDescription()}
                            </div>
                            <div class="slide__item_price">
                               {echo emmet_money($banprod->firstVariant->getOriginPrice())}
                            </div>
                            <a href="{shop_url('product/'.$banprod->getUrl())}" class="slide__item_link products__buy-btn">
                            <span class="products__buy-span">Подробнее</span></a>
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
                                        <div class="slide__item_description">
                                         {echo $banprod->getShortDescription()}
                                        </div>
                                        <div class="slide__item_price">
                                           {echo emmet_money($banprod->firstVariant->getOriginPrice())}
                                        </div>
                                        <a href="{shop_url('product/'.$banprod->getUrl())}" class="slide__item_link products__buy-btn">
                                          <span class="products__buy-span">Подробнее</span></a>
                                    </div>
								</div>
							</div>
						</li>
					</ul>
				</div>
				<div class="right__column_image">
          <img src="{$THEME}images/banner/for_banner2.png" alt="Газовые котлы">
          
        </div>
			</div>
		</div>
	</div>
    <div class="banner__content_inner banner__content_slide banner__second_room">
        <div class="container">
            <div class="banner__inner_content">
                <div class="banner__offer">
                    <ul class="banner__slide_list banner__second-slide_list">
                        <li class="banner__slide_item">
                            <div class="banner__offer_content"> 
                                <div class="inner__text_header">
                                	<span class="text__header_span">Инсталяции</span>
                                </div>
                                <div class="offer__inner_buttons">
                                	<a href="{site_url('callbacks')}?subj=5" data-modal="callbacks_modal" rel="nofollow" class="banner__btn banner__btn_order">Заказать просчет</a>
                                	<a href="#" class="banner__btn banner__btn_catalog">В каталог</a>
                                </div>
                            </div>
                            <div class="banner__slide_item-content">
                                <div class="slide__item__inner">
                                    <div class="slide__item_img-wrap">
                                    	<img src="{$THEME}images/banner/for_banner_item15.png" alt="Инсталляция TECEbase">
                                    </div>
                                    <div class="slide__item_content">
                                    	<a href="#" class="slide__item_title">Инсталляция TECEbase</a>
                                        <div class="slide__item_price"> 35 487 грн </div>
                                        <a href="#" class="slide__item_link products__buy-btn">
                                          <span class="products__buy-span">Подробнее</span></a>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li class="banner__slide_item">
                            <div class="banner__offer_content"> 
                                <div class="inner__text_header">
                                	<span class="text__header_span">Радиаторы отопления</span>
                                </div>
                                <div class="offer__inner_buttons">
                                	<a href="{site_url('callbacks')}?subj=5" data-modal="callbacks_modal" rel="nofollow" class="banner__btn banner__btn_order">Заказать просчет</a>
                                	<a href="{shop_url('category/radiatory-i-vnutripolnye-konvektory/stalnye-radiatory')}" class="banner__btn banner__btn_catalog">В каталог</a>
                                </div>
                            </div>
                            <div class="banner__slide_item-content">
                            {$banprod = getProduct(58532)}
                                <div class="slide__item__inner">
                                    <div class="slide__item_img-wrap">
                                    	<img src="{media_url($banprod->firstVariant->getMediumPhoto())}" alt="{echo $banprod->getName()}">
                                    </div>
                                    <div class="slide__item_content">
                                    	<a href="{shop_url('product/'.$banprod->getUrl())}" class="slide__item_title">{echo $banprod->getName()}</a>
                                        <div class="slide__item_description">
                                         {echo $banprod->getShortDescription()}
                                        </div>
                                        <div class="slide__item_price">{echo emmet_money($banprod->firstVariant->getOriginPrice())}</div>
                                        <a href="{shop_url('product/'.$banprod->getUrl())}" class="slide__item_link products__buy-btn">
                                          <span class="products__buy-span">Подробнее</span></a>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li class="banner__slide_item">
                            <div class="banner__offer_content"> 
                                <div class="inner__text_header">
                                	<span class="text__header_span">Радиаторная арматура </span>
                                </div>
                                <div class="offer__inner_buttons">
                                	<a href="{site_url('callbacks')}?subj=5" data-modal="callbacks_modal" rel="nofollow" class="banner__btn banner__btn_order">Заказать просчет</a>
                                	<a href="{shop_url('category/zaporno-reguliruiushchaia-armatura/termogolovki')}" class="banner__btn banner__btn_catalog">В каталог</a>
                                </div>
                            </div>
                            <div class="banner__slide_item-content">
                            {$banprod = getProduct(52238)}
                                <div class="slide__item__inner">
                                    <div class="slide__item_img-wrap">
                                    	<img src="{media_url($banprod->firstVariant->getMediumPhoto())}" alt="{echo $banprod->getName()}">
                                    </div>
                                    <div class="slide__item_content">
                                    	<a href="{shop_url('product/'.$banprod->getUrl())}" class="slide__item_title">{echo $banprod->getName()}</a>
                                        <div class="slide__item_description">
                                         {echo $banprod->getShortDescription()}
                                        </div>
                                        <div class="slide__item_price"> {echo emmet_money($banprod->firstVariant->getOriginPrice())}</div>
                                        <a href="{shop_url('product/'.$banprod->getUrl())}" class="slide__item_link products__buy-btn">  
                                        <span class="products__buy-span">Подробнее</span></a>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li class="banner__slide_item">
                            <div class="banner__offer_content"> 
                                <div class="inner__text_header">
                                	<span class="text__header_span">Солнечные коллекторы</span>
                                </div>
                                <div class="offer__inner_buttons">
                                	<a href="{site_url('callbacks')}?subj=5" data-modal="callbacks_modal" rel="nofollow" class="banner__btn banner__btn_order">Заказать просчет</a>
                                	<a href="#" class="banner__btn banner__btn_catalog">В каталог</a>
                                </div>
                            </div>
                            <div class="banner__slide_item-content">
                                <div class="slide__item__inner">
                                    <div class="slide__item_img-wrap">
                                    	<img src="{$THEME}images/banner/for_banner_item12.png" alt="Плоский солнечный коллектор Heliomax arfa 2.0-Mm-K">
                                    </div>
                                    <div class="slide__item_content">
                                    	<a href="#" class="slide__item_title">Плоский солнечный коллектор Heliomax arfa 2.0-Mm-K </a>
                                        <div class="slide__item_price"> 10 567 грн </div>
                                        <a href="#" class="slide__item_link products__buy-btn">
                                          <span class="products__buy-span">Подробнее</span></a>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li class="banner__slide_item">
                            <div class="banner__offer_content"> 
                                <div class="inner__text_header">
                                	<span class="text__header_span">Солнечные коллекторы</span>
                                </div>
                                <div class="offer__inner_buttons">
                                	<a href="{site_url('callbacks')}?subj=5" data-modal="callbacks_modal" rel="nofollow" class="banner__btn banner__btn_order">Заказать просчет</a>
                                	<a href="#" class="banner__btn banner__btn_catalog">В каталог</a>
                                </div>
                            </div>
                            <div class="banner__slide_item-content">
                                <div class="slide__item__inner">
                                    <div class="slide__item_img-wrap">
                                    	<img src="{$THEME}images/banner/for_banner_item13.png" alt="Гофротруба helioflex с термоизоляцией">
                                    </div>
                                    <div class="slide__item_content">
                                    	<a href="#" class="slide__item_title">Гофротруба helioflex с термоизоляцией</a>
                                        <div class="slide__item_price"> 10 567 грн </div>
                                        <a href="#" class="slide__item_link products__buy-btn">
                                          <span class="products__buy-span">Подробнее</span></a>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li class="banner__slide_item">
                            <div class="banner__offer_content"> 
                                <div class="inner__text_header">
                                	<span class="text__header_span">Инсталяции</span>
                                </div>
                                <div class="offer__inner_buttons">
                                	<a href="{site_url('callbacks')}?subj=5" data-modal="callbacks_modal" rel="nofollow" class="banner__btn banner__btn_order">Заказать просчет</a>
                                	<a href="#" class="banner__btn banner__btn_catalog">В каталог</a>
                                </div>
                            </div>
                            <div class="banner__slide_item-content">
                                <div class="slide__item__inner">
                                    <div class="slide__item_img-wrap">
                                    	<img src="{$THEME}images/banner/for_banner_item15.png" alt="Инсталляция TECEbase">
                                    </div>
                                    <div class="slide__item_content">
                                    	<a href="#" class="slide__item_title">Инсталляция TECEbase</a>
                                        <div class="slide__item_price"> 35 487 грн </div>
                                        <a href="#" class="slide__item_link products__buy-btn">
                                          <span class="products__buy-span">Подробнее</span></a>
                                    </div>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
                <div class="right__column_image">
                	<img src="{$THEME}images/banner/for_banner3.png" alt="Инсталяции">
                </div>
            </div>
        </div>
    </div>
    <div class="banner__content_inner banner__content_slide banner__third_room">
        <div class="container">
            <div class="banner__inner_content">
                <div class="banner__offer">
                    <ul class="banner__third-slide_list banner__inner_list">
                        <li class="banner__slide_item">
                            <div class="banner__offer_content"> 
                                <div class="inner__text_header">
                                	<span class="text__header_span">Tермостаты и программаторы </span>
                                </div>
                                <div class="offer__inner_buttons">
                                	<a href="{site_url('callbacks')}?subj=5" data-modal="callbacks_modal" rel="nofollow" class="banner__btn banner__btn_order">Заказать просчет</a>
                                	<a href="#" class="banner__btn banner__btn_catalog">В каталог</a>
                                </div>
                            </div>
                            <div class="banner__slide_item-content">
                                <div class="slide__item__inner">
                                    <div class="slide__item_img-wrap">
                                    	<img src="{$THEME}images/banner/for_banner_item14.png" alt="Комнатный термостат TECH EU-280">
                                    </div>
                                    <div class="slide__item_content">
                                    	<a href="#" class="slide__item_title">Комнатный термостат TECH EU-280 </a>
                                        <div class="slide__item_price"> 35 487 грн </div>
                                        <a href="#" class="slide__item_link products__buy-btn">
                                          <span class="products__buy-span">Подробнее</span></a>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li class="banner__slide_item">
                            <div class="banner__offer_content"> 
                                <div class="inner__text_header">
                                	<span class="text__header_span">Внутрипольные конвекторы</span>
                                </div>
                                <div class="offer__inner_buttons">
                                	<a href="{site_url('callbacks')}?subj=5" data-modal="callbacks_modal" rel="nofollow" class="banner__btn banner__btn_order">Заказать просчет</a>
                                	<a href="{shop_url('category/radiatory-i-vnutripolnye-konvektory/vnutripolnye-konvektory')}" class="banner__btn banner__btn_catalog">В каталог</a>
                                </div>
                            </div>
                            <div class="banner__slide_item-content">
                            {$banprod = getProduct(50635)}
                                <div class="slide__item__inner">
                                    <div class="slide__item_img-wrap">
                                    	<img src="{media_url($banprod->firstVariant->getMediumPhoto())}" alt="{echo $banprod->getName()}">
                                    </div>
                                    <div class="slide__item_content">
                                    	<a href="{shop_url('product/'.$banprod->getUrl())}" class="slide__item_title">{echo $banprod->getName()}</a>
                                        <div class="slide__item_description">
                                         {echo $banprod->getShortDescription()}
                                        </div>
                                        <div class="slide__item_price"> {echo emmet_money($banprod->firstVariant->getOriginPrice())}</div>
                                        <a href="{shop_url('product/'.$banprod->getUrl())}" class="slide__item_link products__buy-btn">
                                          <span class="products__buy-span">Подробнее</span></a>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li class="banner__slide_item">
                            <div class="banner__offer_content"> 
                                <div class="inner__text_header">
                                	<span class="text__header_span">Распределительные коллекторы</span>
                                </div>
                                <div class="offer__inner_buttons">
                                	<a href="{site_url('callbacks')}?subj=5" data-modal="callbacks_modal" rel="nofollow" class="banner__btn banner__btn_order">Заказать просчет</a>
                                	<a href="{shop_url('category/raspredelitelnye-kollektory')}" class="banner__btn banner__btn_catalog">В каталог</a>
                                </div>
                            </div>
                            <div class="banner__slide_item-content">
                            {$banprod = getProduct(28146)}
                                <div class="slide__item__inner">
                                    <div class="slide__item_img-wrap">
                                    	<img src="{media_url($banprod->firstVariant->getMediumPhoto())}" alt="{echo $banprod->getName()}">
                                    </div>
                                    <div class="slide__item_content">
                                    	<a href="{shop_url('product/'.$banprod->getUrl())}" class="slide__item_title">{echo $banprod->getName()}</a>
                                        <div class="slide__item_description">
                                         {echo $banprod->getShortDescription()}
                                        </div>
                                        <div class="slide__item_price">{echo emmet_money($banprod->firstVariant->getOriginPrice())}</div>
                                        <a href="{shop_url('product/'.$banprod->getUrl())}" class="slide__item_link products__buy-btn">
                                          <span class="products__buy-span">Подробнее</span></a>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li class="banner__slide_item">
                            <div class="banner__offer_content"> 
                                <div class="inner__text_header">
                                	<span class="text__header_span">Трубы для отопления</span>
                                </div>
                                <div class="offer__inner_buttons">
                                	<a href="{site_url('callbacks')}?subj=5" data-modal="callbacks_modal" rel="nofollow" class="banner__btn banner__btn_order">Заказать просчет</a>
                                	<a href="{shop_url('category/truby')}" class="banner__btn banner__btn_catalog">В каталог</a>
                                </div>
                            </div>
                            <div class="banner__slide_item-content">
                            {$banprod = getProduct(27913)}
                                <div class="slide__item__inner">
                                    <div class="slide__item_img-wrap">
                                    	<img src="{media_url($banprod->firstVariant->getMediumPhoto())}" alt="{echo $banprod->getName()}">
                                    </div>
                                    <div class="slide__item_content">
                                    	<a href="{shop_url('product/'.$banprod->getUrl())}" class="slide__item_title">{echo $banprod->getName()}</a>
                                        <div class="slide__item_description">
                                         {echo $banprod->getShortDescription()}
                                        </div>
                                        <div class="slide__item_price"> {echo emmet_money($banprod->firstVariant->getOriginPrice())}</div>
                                        <a href="{shop_url('product/'.$banprod->getUrl())}" class="slide__item_link products__buy-btn">
                                          <span class="products__buy-span">Подробнее</span></a>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li class="banner__slide_item">
                            <div class="banner__offer_content"> 
                                <div class="inner__text_header">
                                	<span class="text__header_span">Tермостаты и программаторы </span>
                                </div>
                                <div class="offer__inner_buttons">
                                	<a href="{site_url('callbacks')}?subj=5" data-modal="callbacks_modal" rel="nofollow" class="banner__btn banner__btn_order">Заказать просчет</a>
                                	<a href="#" class="banner__btn banner__btn_catalog">В каталог</a>
                                </div>
                            </div>
                            <div class="banner__slide_item-content">
                                <div class="slide__item__inner">
                                    <div class="slide__item_img-wrap">
                                    	<img src="{$THEME}images/banner/for_banner_item14.png" alt="Комнатный термостат TECH EU-280">
                                    </div>
                                    <div class="slide__item_content">
                                    	<a href="#" class="slide__item_title">Комнатный термостат TECH EU-280 </a>
                                        <div class="slide__item_price">35 487 грн </div>
                                        <a href="#" class="slide__item_link products__buy-btn">
                                          <span class="products__buy-span">Подробнее</span></a>
                                    </div>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
                <div class="right__column_image">
                	<img src="{$THEME}images/banner/for_banner4.png" alt="Tермостаты и программаторы">
                </div>
            </div>
        </div>
    </div>
</div>