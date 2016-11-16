<div class="main-title">{echo $model->getName()}</div>
<div class="main-content">
	<div class="detail__main_col">
    	<div class="product__left_collumn">
        	<div class="row">
        		<div class="col-xs-4 col-mob">
            		{view('shop/includes/product/product_photo.tpl', ['model' => $model])}
        		</div>
          		<div class="col-xs-8 col-mob">
            		<div class="price__wrap">
              			<div class="product__right_inner">
                			{view('shop/includes/product/product_cart.tpl')}
              			</div>
                </div><!-- ./price__wrap -->
                <div class="product__raiting_block">
                  <ul class="detail__tools">
                    <li class="detail__tools_item">
                      {view('shop/includes/product/product_rating.tpl', ['model' => $model])}
                    </li>
                    <li class="detail__tools_item">
                      {module('wishlist')->renderWLButton($model->firstVariant->getId(), ['type' => 'link']);}
                    </li>
                    <li class="detail__tools_item">
                      {view('shop/includes/compare/compare_button.tpl', ['model' => $model, 'type' => 'link'])}
                    </li>
                  </ul>
                </div><!-- ./product__raiting_block-->
					<div class="sort hidden">
      					<div class="sort__select-wrapper">
      						<div class="sort__title">Модификации</div>
      						<div class="sort__select">
      							<select class="sort__select-element">
      								<option value="">Пиролизный котел Atmos D15</option>
      								<option value="">Пиролизный котел Atmos D20</option>
      								<option value="">Пиролизный котел Atmos D30</option>
      							</select>
      						</div>
      					</div><!-- ./ sort__select-wrapper -->
            		</div><!-- ./ sort -->
                </div><!-- ./col-xs-8 col-mob -->
            </div><!-- ./ row -->
  		</div><!-- ./ product__left_collumn -->
        <div class="product__right__collumn"> 
            <ul class="product_info_block-list">
                <li class="product_info_block-item">
                    <div class="product_info_block-title"> 
                        <div class="info__block_title-text">Нашли дешевле? Снизим цену!</div>
                    </div>
                    <div class="product_info_block-content">Даже если у вас есть очень выгодная смета от другого подрядчика, мы наверняка сделаем вам более интересное предложение. Просто позвоните, озвучьте стоимость и убедитесь: сотрудничать с нами – выгоднее!</div>
                </li>
                <li class="product_info_block-item">
                    <div class="product_info_block-title"> 
                        <div class="info__block_title-text">Обрацез в шоуруме</div>
                    </div>
                    <div class="product_info_block-content">Окончательный выбор должен делаться вживую – и мы предоставляем такую возможность. Приходите в наш шоу-рум и выберите самые интересные изделия. Будьте уверены: они будут бесподобны в вашем интерьере!</div>
                </li>
                <li class="product_info_block-item">
                    <div class="product_info_block-title"> 
                        <div class="info__block_title-text">Хранение на нашем складе</div>
                    </div>
                    <div class="product_info_block-content">Вы можете приобрести все необходимые материалы прямо сейчас и оставить часть из них храниться на нашем складе до того момента, когда до них дойдет очередь. Не затягивайте ремонт и строительство – покупайте все нужное сразу!</div>
                </li>
                <li class="product_info_block-item">
                    <div class="product_info_block-title"> 
                        <div class="info__block_title-text">Оплата заказа</div>
                    </div>
                    <div class="product_info_block-content">Оплачивайте ваш заказ любым удобным способом: при получении товара; в пункте выдачи; наложенным платежем; Privat24; наличный/безналичный расчет.</div>
                </li>
                <li class="product_info_block-item">
                    <div class="product_info_block-title"> 
                        <div class="info__block_title-text">Доставка</div>
                    </div>
                    <div class="product_info_block-content">Помните, как дорого вам обходилась перевозка материалов, когда вы работали не с нами? Отныне все будет иначе. Мы доставим купленные вами материалы на объект на самых выгодных условиях. Строительство еще никогда не было таким экономным!</div>
                </li>
            </ul>
        </div><!-- ./ product__right__collumn -->
    </div><!-- ./detail__main_col-->
    <!-- Product Kits -->
    {if count($model->getShopKits()) > 0}
     	<!-- If product is not archived -->
      	{if !tpl_is_product_archived($model)}
        	<div class="detail__related_products slick__arrows-center">
        		{view('shop/includes/product/product_kit.tpl')}
        	</div>
      	{/if}
    {/if}
    <div class="description_main_col-left">
    	<ul id="tabs__controls" class="tabs__controls_list">
      		<li data-class="tab_characteristics" class="tabs__controls_item active"><a href="#" class="tabs__controls_link">Характеристики</a></li>
            {if trim(strip_tags($model->getFullDescription())) != ""}
      			 <li data-class="tab_description" class="tabs__controls_item"><a href="#" class="tabs__controls_link">Описание</a></li>
            {/if}
            {if tpl_product_comments_votes($model) > 0 }
      		<li data-class="tab_reviews" class="tabs__controls_item"><a href="#" class="tabs__controls_link">Отзывы</a></li>
           {/if}
      	</ul><!-- ./tabs__controls -->
          
        <ul id="description__list" class="description_list">
            <li class="tab__pane pane__tab_characteristics active">
            	<div class="product__description product_characteristics tab__content">
     				{$loc_params = ShopCore::app()->SPropertiesRenderer->renderPropertiesArray($model)}
      				{if count($loc_params) > 0}
                    <div class="product_characteristics_content col-left">
                 			<h3 class="product__description_title">{tlang('All specifications')}</h3>
                  			<div class="product__description_content short_text box-hide">
      							     {view('shop/includes/product/product_properties.tpl', ['items' => $loc_params])}
                   			</div>
                        <div class="text-description-more">
                          <a href="#" class="text-description-more-link short_text_show_link">
                            <span class="arrow-link-inner">Читать полностью</span>&nbsp;→
                          </a>
                      </div>
                    </div>
                	{/if}
                  <div class="product__reviews col-right">
                    <div class="product__reviews_form">
                      {if tpl_product_comments_votes($model) > 0}
                      <a href="#tab_reviews" class="writereview">Написать отзыв</a>
                  		{tpl_load_comments()}
                  	  {else:}
                      	{view('comments/product_form.tpl')}
                      {/if}
                    </div>
                  </div>
            	</div>
            </li><!-- ./tab__pane pane__tab_characteristics -->
            {if trim(strip_tags($model->getFullDescription())) != ""}
				    <li class="tab__pane pane__tab_description">
              <div class="tab__content">
    					 <div class="product__description col-left">
                  <h3 class="product__description_title">{tlang('Details')} {echo $model->getName()}</h3>
          				<div class="product__description_content short_text box-hide">
          					<div class="description_text">{echo $model->getFullDescription()}</div>
                  </div>
                  <div class="text-description-more">
                    <a href="#" class="text-description-more-link short_text_show_link">
                      <span class="arrow-link-inner">Читать полностью</span>&nbsp;→
                     </a>
                  </div>
                </div>
                <div class="product__reviews col-right">
                  <div class="product__reviews_form">
                  {if tpl_product_comments_votes($model) > 0}
                  	<span class="writereview">Написать отзыв</span>
                    {tpl_load_comments()}
                  {else:}
                      {view('comments/product_form.tpl')}
                      {/if}
                  </div>
                </div>
              </div>
            </li><!-- ./tab__pane pane__tab_description -->
            {/if}
            {if $model->enable_comments == 1}
      			<li class="tab__pane pane__tab_reviews"> 
              <div class="tab__content">
         					<div class="product__reviews col-left">
             					{tpl_load_comments()}
                  </div>
                  <div class="product__reviews col-right">
                    <div class="product__reviews_form">
                        {view('comments/product_form.tpl')}
                    </div>
                  </div>
              </div>
            </li><!-- ./tab__pane pane__tab_reviews -->
            {/if}
		</ul><!-- ./description_list -->

    </div><!-- ./description_main_col-left -->
  	<div class="product__buy">
      <div class="table-responsive">
        <table  cellpadding="0" cellspacing="0">
          <tr>
            <td class="product__buy_header">
              <h3 class="product__buy_title">Купить {echo $model->getName()}</h3>
            </td>
            <td class="produt__offer price__buy_content">
              <table cellpadding="0" cellspacing="0">
                <tr>
                  <td>
                      <span class="produt__label_price">{tlang('Price')}</span>
                  </td>
                  <td>
                      <span class="current__price">
                          {echo emmet_money($model->firstVariant->getFinalPrice(), 'span.product-price__item-value[data-product-price--main]', 'span.product-price__item-coins[data-product-price--coins]' ,'span.product-price__item-cur')}
                       </span>
                  </td>
                  <td>
                     <span class="old__price">
                      {echo emmet_money($model->firstVariant->getOriginPrice(), 'span.product-price__item-value[data-product-price--origin]', '', 'span.product-price__item-cur')}
                    </span>
                    {$loc_additional_prices = emmet_money_additional($model->firstVariant->getFinalPrice(), 'span.product-price__item-value', '', 'span.product-price__item-cur')}
                      {if count($loc_additional_prices) > 0}
                        {foreach $loc_additional_prices as $additional_price}
                          <span class="current__price_eur">{$additional_price}</span>
                        {/foreach}
                    {/if}
                  </td>
                </tr>
              </table>
           </td>
          <td class="produt__offer produt__funcs-buttons">
            {view('shop/includes/product/product/add_to_cart.tpl', ['parent_quantity' => true])}
          </td>
        </tr>
      </table>
      </div>
  	</div>

  	{widget('products_similar_sidebar')}
      {widget('products_viewed')}
</div><!-- /.main-content -->
