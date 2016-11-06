<section class="services">
    <div class="section__content">
        <!--PRODUCT PAGE-->
        <div class="services__item individuals">
            <div class="item__image_wrap"></div>
            <div class="services__description">
                <h3 class="item__title"> <span class="item__title_span">Услуги для частных лиц </span>Личный подход  </h3>
                <div class="item__content_text">
                    Давно выяснено, что при оценке дизайна и композиции читаемый текст мешает сосредоточиться. Lorem Ipsum используют потому. Давно выяснено, что при оценке дизайна и композиции читаемый текст мешает сосредоточиться.
                </div>
                <a href="/uslugi" class="item__content_link">Подробнее об услуге  </a>
                <a href="{site_url('callbacks')}?subj=3" data-modal="callbacks_modal" rel="nofollow" class="submit__btn_accent"> 
                    <span class="btn__accent_span">Заказать бесплатный замер </span>
                </a>
            </div>
            <div class="services__description_wrap">
                <div class="services__description_inner"> 
                    <ul class="services__description_list">
                        <li class="services__description_item">
                        <a href="{site_url('uslugi/proektirovanie-i-podbor-oborudovaniia')}">
                            <div class="description__image_wrap"><img src="{$THEME}images/services/personIcon1.png" alt="personIcon1" class="description__image description__image_main"><img src="{$THEME}images/services/personIconHover1.png" alt="personIconHover1" class="description__image"></div>
                            <div class="description__item_title">Проектирование и утверждение</div>
                            </a>
                        </li>
                        <li class="services__description_item">
                         <a href="{site_url('uslugi/komplektatsiia-obektov-pod-kliuch')}">
                            <div class="description__image_wrap"><img src="{$THEME}images/services/personIcon2.png" alt="personIcon2" class="description__image description__image_main"><img src="{$THEME}images/services/personIconHover2.png" alt="personIconHover2" class="description__image"></div>
                            <div class="description__item_title">Подбор и комплектация</div>
                            </a>
                        </li>
                        <li class="services__description_item">
                        <a href="{site_url('uslugi/montazh-oborudovaniia')}">
                            <div class="description__image_wrap"><img src="{$THEME}images/services/personIcon3.png" alt="personIcon3" class="description__image description__image_main"><img src="{$THEME}images/services/personIconHover3.png" alt="personIconHover3" class="description__image"></div>
                            <div class="description__item_title">Шеф-монтаж            </div>
                            </a>
                        </li>
                        <li class="services__description_item">
                        <a href="{site_url('uslugi/servisnoe-obsluzhivanie')}">
                            <div class="description__image_wrap"><img src="{$THEME}images/services/personIcon4.png" alt="personIcon4" class="description__image description__image_main"><img src="{$THEME}images/services/personIconHover4.png" alt="personIconHover4" class="description__image"></div>
                            <div class="description__item_title">Сервисное обслуживание   </div>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="services__item professionals">
            <div class="services__description_wrap">
                <div class="services__description_inner"> 
                    <ul class="services__description_list">
                        <li class="services__description_item">
                        <a href="{site_url('uslugi/komplektatsiia-obektov-pod-kliuch')}">
                            <div class="description__image_wrap"><img src="{$THEME}images/services/professionalsIcon1.png" alt="professionalsIcon1" class="description__image description__image_main"><img src="{$THEME}images/services/professionalsIconHover1.png" alt="professionalsIconHover1" class="description__image"></div>
                            <div class="description__item_title">Полная комплектация объекта</div>
                            </a>
                        </li>
                        <li class="services__description_item">
                        <a href="{site_url('sotrudnichestvo')}">
                            <div class="description__image_wrap"><img src="{$THEME}images/services/professionalsIcon2.png" alt="professionalsIcon2" class="description__image description__image_main"><img src="{$THEME}images/services/professionalsIconHover2.png" alt="professionalsIconHover2" class="description__image"></div>
                            <div class="description__item_title">Индивидуальные цены</div>
                            </a>
                        </li>
                        <li class="services__description_item">
                        <a href="{site_url('callbacks')}?subj=2" data-modal="callbacks_modal"s>
                            <div class="description__image_wrap"><img src="{$THEME}images/services/professionalsIcon3.png" alt="professionalsIcon3" class="description__image description__image_main"><img src="{$THEME}images/services/professionalsIconHover3.png" alt="professionalsIconHover3" class="description__image"></div>
                            <div class="description__item_title">Информационная и техническая поддержка</div>
                            </a>
                        </li>
                        <li class="services__description_item">
                        <a href="{shop_url('categories')}">
                            <div class="description__image_wrap"><img src="{$THEME}images/services/professionalsIcon4.png" alt="professionalsIcon4" class="description__image description__image_main"><img src="{$THEME}images/services/professionalsIconHover4.png" alt="professionalsIconHover4" class="description__image"></div>
                            <div class="description__item_title">Широкий ассортимент </div>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="services__description">
                <h3 class="item__title"> <span class="item__title_span">Для профессионалов </span>Говорим на одном языке </h3>
                <div class="item__content_text">Давно выяснено, что при оценке дизайна и композиции читаемый текст мешает сосредоточиться. Lorem Ipsum используют потому. Давно выяснено, что при оценке дизайна и композиции читаемый текст мешает сосредоточиться.</div>
                <a href="#" class="item__content_link">Подробнее об услуге </a>
                {if !$CI->dx_auth->is_logged_in()}
                <a href="{site_url('callbacks')}?subj=6" class="submit__btn_accent" data-modal="callbacks_modal" rel="nofollow">
                    <span class="btn__accent_span">Начать сотрудничество</span>
                </a>
                {else:}
                <a href="{shop_url('profile')}" class="submit__btn_accent">
                    <span class="btn__accent_span">WT-PROF</span>
                </a>
                {/if}
            </div>
            <div class="item__image_wrap"></div>
        </div>
        <div class="services__item dealers">
            <div class="item__image_wrap"></div>
            <div class="services__description">
                <h3 class="item__title"> <span class="item__title_span"> Для дилеров </span>С нами выгодно  </h3>
                <div class="item__content_text">Давно выяснено, что при оценке дизайна и композиции читаемый текст мешает сосредоточиться. Lorem Ipsum используют потому. Давно выяснено, что при оценке дизайна и композиции читаемый текст мешает сосредоточиться.</div>
                <a href="#" class="item__content_link">Подробнее об услуге  </a>
                <a href="{site_url('callbacks')}?subj=4" data-modal="callbacks_modal" rel="nofollow" class="submit__btn_accent">
                    <span class="btn__accent_span">Узнать свою скидку</span> 
                </a>
            </div>
            <div class="services__description_wrap">
                <div class="services__description_inner"> 
                    <ul class="services__description_list">
                        <li class="services__description_item">
                        	 <a href="{site_url('callbacks')}?subj=6" data-modal="callbacks_modal" rel="nofollow">
                            <div class="description__image_wrap"><img src="{$THEME}images/services/dealersIcon1.png" alt="dealersIcon1" class="description__image description__image_main"><img src="{$THEME}images/services/dealersIconHover1.png" alt="dealersIconHover1" class="description__image"></div>
                            <div class="description__item_title">Cтабильный и высокодоходный бизнес</div>
                            </a>
                        </li>
                        <li class="services__description_item">
                        <a href="{site_url('sotrudnichestvo')}">
                            <div class="description__image_wrap"><img src="{$THEME}images/services/dealersIcon2.png" alt="dealersIcon2" class="description__image description__image_main"><img src="{$THEME}images/services/dealersIconHover2.png" alt="dealersIconHover2" class="description__image"></div>
                            <div class="description__item_title">Гибкие условия сотрудничества</div>
                            </a>
                        </li>
                        <li class="services__description_item">
                        <a href="{site_url('oplata-i-dostavka')}">
                            <div class="description__image_wrap"><img src="{$THEME}images/services/dealersIcon3.png" alt="dealersIcon3" class="description__image description__image_main"><img src="{$THEME}images/services/dealersIconHover3.png" alt="dealersIconHover3" class="description__image"></div>
                            <div class="description__item_title">Быстрая доставка</div>
                            </a>
                        </li>
                        <li class="services__description_item">
                         <a href="{site_url('callbacks')}?subj=4" data-modal="callbacks_modal" rel="nofollow">
                            <div class="description__image_wrap"><img src="{$THEME}images/services/dealersIcon4.png" alt="dealersIcon4" class="description__image description__image_main"><img src="{$THEME}images/services/dealersIconHover4.png" alt="dealersIconHover4" class="description__image"></div>
                            <div class="description__item_title">Система скидок</div>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</section>
