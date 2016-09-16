<div class="main-title">{echo $model->getName()}</div>
<div class="main-content">
	<div class="detail__main_col">
    	<div class="product__left_collumn">
        	<div class="row">
            	<div class="col-md-4">
                	{view('shop/includes/product/product_photo.tpl', ['model' => $model])}
            	</div>
            	<div class="col-md-8">
                	<div class="product__description">
                    	<div class="product__description_content">
                        	<!-- Product main properties list -->
  							{$loc_main_params = ShopCore::app()->SPropertiesRenderer->renderPropertiesArray($model, true)}
  							{if count($loc_main_params) > 0}
      							<ul class="description_list">
        							{foreach $loc_main_params as $item}
            							<li class="description_item">
                                        	<div>{$item.Name}</div>
            								<div>{$item.Value}</div>
                                    	</li>
									{/foreach}
								</ul>
  							{/if}
                       </div> <!-- ./ product__description_content -->
                    </div> <!-- ./ product__description -->
                    {if $model->getShortDescription()}
                       	<div class="product__description">
							<div class="product__description_content">
                               	<div class="description_text">
                               		{echo $model->getShortDescription()}
                            	</div>
                       		</div><!-- ./ product__description_content -->
                    	</div><!-- ./ product__description -->
                    {/if}
                    <div class="sort">
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
				</div><!-- ./ col-md-8 -->
			</div><!-- ./ row -->
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
					<li data-class="tab_about" class="tabs__controls_item active"><a href="#" class="tabs__controls_link">Все о товаре</a></li>
					<li data-class="tab_characteristics" class="tabs__controls_item"><a href="#" class="tabs__controls_link">Характеристики</a></li>
                    {if trim(strip_tags($model->getFullDescription())) != ""}
						<li data-class="tab_description" class="tabs__controls_item"><a href="#" class="tabs__controls_link">Описание</a></li>
                    {/if}
					<li data-class="tab_reviews" class="tabs__controls_item"><a href="#" class="tabs__controls_link">Отзывы</a></li>
				</ul><!-- ./tabs__controls -->
                <ul id="description__list" class="description_list">
					<li class="tab__pane pane__tab_about active">
						<div class="row">
                        	{if trim(strip_tags($model->getFullDescription())) != ""}
								<div class="col-md-7">
									<div class="product__description"><a name="description" id="description" class="anchor"></a>
                                    	<h3 class="product__description_title">{tlang('Details')} {echo $model->getName()}</h3>
										<div id="short_text" class="product__description_content box-hide">
											<div class="description_text">{echo $model->getFullDescription()}</div>
                                        </div>
                                    </div>
                                </div><!-- ./col-md-7 -->
                            {/if}
                            <div class="col-md-5">
                            	<div class="product__description product_characteristics"><a name="characteristics" id="characteristics" class="anchor"></a>
                                	{$loc_params = ShopCore::app()->SPropertiesRenderer->renderPropertiesArray($model)}
									{if count($loc_params) > 0}
                                    	<h3 class="product__description_title">{tlang('All specifications')}</h3>
                                    	<div class="product__description_content">
											{view('shop/includes/product/product_properties.tpl', ['items' => $loc_params])}
                                     	</div>
                                	{/if}
                            	</div>
                            </div><!-- ./col-md-5 -->
                       </div><!-- ./row -->
                      <div class="text-description-more">
                        <a href="#" id='short_text_show_link' class="text-description-more-link">
                          <span class="arrow-link-inner">Читать полностью</span>&nbsp;→
                        </a>
                      </div>
                   </li><!-- ./tab__pane pane__tab_about -->
                   <li class="tab__pane pane__tab_characteristics">
                       	<div class="product__description product_characteristics">
							{$loc_params = ShopCore::app()->SPropertiesRenderer->renderPropertiesArray($model)}
							{if count($loc_params) > 0}
                               	<h3 class="product__description_title">{tlang('All specifications')}</h3>
                                <div class="product__description_content">
									{view('shop/includes/product/product_properties.tpl', ['items' => $loc_params])}
                                </div>
                            {/if}
                   		</div>
                    </li><!-- ./tab__pane pane__tab_characteristics -->
                    {if trim(strip_tags($model->getFullDescription())) != ""}
                    	<li class="tab__pane pane__tab_description">
							<div class="product__description">
                            	<h3 class="product__description_title">{tlang('Details')} {echo $model->getName()}</h3>
								<div class="product__description_content">
									<div class="description_text">{echo $model->getFullDescription()}</div>
                            	</div>
                            </div>
                     	</li><!-- ./tab__pane pane__tab_description -->
                 	{/if}
                    {if $model->enable_comments == 1}
						<li class="tab__pane pane__tab_reviews"> 
							<div class="product__reviews">
								<div class="product__reviews_title">
        							<h3 class="product__reviews_title-text">{tlang('Customer Reviews')}</h3>
      							</div>
      							<div class="product-fullinfo__inner" data-comments>
        							{tpl_load_comments()}
								</div>
                       		</div>
                    	</li><!-- ./tab__pane pane__tab_reviews -->
                 	{/if}
				</ul><!-- ./description_list -->
			</div><!-- ./description_main_col-left -->
		</div><!-- ./product__left_collumn --> 
        <div class="product__right__collumn">
        	<div class="product__right_inner">
            	{view('shop/includes/product/product_cart.tpl')}
        	</div>
            <div class="buy__click">
             {echo $CI->load->module('one_click_buy')->getBuyForm ()}
			</div><!-- ./buy__click -->
            <div class="product_info_block">
				<div class="product_info_content"> 
					<h4 class="info__block_title">Действует программа лояльности! </h4>
					<p class="info__block_text">Государство компенсирует 20%</p>
				</div><a href="#" class="calculate_btn"> <span class="calculate_btn_span">Рассчитать кредит</span></a>
			</div><!-- ./product_info_block -->
            <ul class="detail__tools">
				<li class="detail__tools_item">
                   	{module('wishlist')->renderWLButton($model->firstVariant->getId(), ['type' => 'link']);}
                </li>
				<li class="detail__tools_item">
                   	{view('shop/includes/compare/compare_button.tpl', ['model' => $model, 'type' => 'link'])}
                </li>
			</ul><!-- ./detail__tools -->
            <div class="description_main_col-right">
            	<div class="product__delivery">
                	{view('shop/includes/product/product_shipping.tpl')}
            	</div>
             	<div class="socials">
                	<!-- Product like and share buttons -->
  					{$active_likes = array_intersect(['facebook_like', 'gg_like', 'twitter_like', 'vk_like'], array_keys(module('share')->settings))}
  					{$active_shares = array_intersect(['yaru', 'vkcom', 'facebook', 'twitter', 'odnoclass', 'myworld', 'lj', 'ff', 'mc', 'gg'], array_keys(module('share')->settings))}
  					{if $active_likes || $active_shares}
    					<div class="product-intro__social">
      						{if $active_likes}
        						<div class="product-intro__social-row">
          							<div class="product-intro__social-title">{tlang('Like')}</div>
          							<div class="product-intro__social-inner">
            							{view('includes/like_buttons.tpl')}
          							</div>
        						</div>
      						{/if}
      						{if $active_shares}
        						<div class="product-intro__social-row">
          							<div class="product-intro__social-title">{tlang('Share')}</div>
          							<div class="product-intro__social-inner">
            							{module('share')->_make_share_form()}
          							</div>
        						</div>
      						{/if}
    					</div><!-- ./product-intro__social -->
  					{/if}
                </div><!-- ./socials -->
			</div><!-- ./description_main_col-right -->
		</div><!-- ./product__right__collumn -->
	</div><!-- ./detail__main_col -->

	<div id ="product__buy" class="product__buy table-responsive">
    <table  cellpadding="0" cellspacing="0">
      <tr>
        <td class="product__buy_header">
          <h3 class="product__buy_title">Купить {echo $model->getName()}</h3>
        </td>
        <td class="produt__offer price__buy_content">
            <div class="produt__price">
              <span class="produt__label_price">{tlang('Price')}</span>
                <span class="current__price">
                    {echo emmet_money($model->firstVariant->getFinalPrice(), 'span.product-price__item-value[data-product-price--main]', 'span.product-price__item-coins[data-product-price--coins]' ,'span.product-price__item-cur')}
                 </span>
            </div>
            <div class="produt__price">
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
        <td class="produt__offer produt__funcs-buttons">
          {view('shop/includes/product/product/add_to_cart.tpl', ['parent_quantity' => true])}
        </td>
      </tr>
  		</div>
    </table>
	</div>

	{widget('products_similar_sidebar')}
    {widget('products_viewed')}
</div><!-- /.main-content -->
