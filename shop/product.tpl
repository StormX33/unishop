<article class="product__page">
	<div class="container">
    	<div class="main-title">{echo $model->getName()}</div>
        <div class="main-content">
        	<div class="detail__main_col">
            	<div class="product__left_collumn">
                	<ul class="anchors__controls_list">
                    </ul>
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
                                </div>
                        	</div>
                            {if $model->getShortDescription()}
                        	<div class="product__description">
								<div class="product__description_content">
                                	<div class="description_text">
                                		{echo $model->getShortDescription()}
                                    </div>
                                </div>
                        	</div>
                            {/if}
                        </div>
                    </div>
                </div>
                <div class="product__right__collumn">
                	<div class="product__right_inner">
                        {view('shop/includes/product/product_cart.tpl')}
                    </div>
                    <div class="buy__click">
						<form class="buy__click_form">
							<input name="" type="tel" placeholder="+38(000) 000-00-00" class="buy__click_form-input">
							<input name="" type="submit" value="Заказ в 1 клик" class="buy__click_form-submit">
						</form>
					</div>
                    <div class="product_info_block">
						<div class="product_info_content"> 
							<h4 class="info__block_title">Действует программа лояльности! </h4>
							<p class="info__block_text">Государство компенсирует 20%</p>
						</div><a href="#" class="calculate_btn"> <span class="calculate_btn_span">Рассчитать кредит</span></a>
					</div>
                    <ul class="detail__tools">
						<li class="detail__tools_item">
                        	{module('wishlist')->renderWLButton($model->firstVariant->getId(), ['type' => 'link']);}
                        </li>
						<li class="detail__tools_item">
                        	{view('shop/includes/compare/compare_button.tpl', [
          'model' => $model,
          'type' => 'link'
          ])}
                        </li>
					</ul>
                </div>
            </div>
            <!-- Product Kits -->
        	{if count($model->getShopKits()) > 0}
          		<!-- If product is not archived -->
          		{if !tpl_is_product_archived($model)}
            		<div class="detail__related_products slick__arrows-center">
              		{view('shop/includes/product/product_kit.tpl')}
            		</div>
          		{/if}
        	{/if}
            <div class="description__product_block">
            	<div class="row">
                	<div class="col-md-9">
                         <div class="description_main_col-left">
                         	<ul id="tabs__controls" class="tabs__controls_list">
								<li data-class="tab_about" class="tabs__controls_item active"><a href="#" class="tabs__controls_link">Все о товаре</a></li>
								<li data-class="tab_characteristics" class="tabs__controls_item"><a href="#" class="tabs__controls_link">Характеристики</a></li>
                                {if trim(strip_tags($model->getFullDescription())) != ""}
								<li data-class="tab_description" class="tabs__controls_item"><a href="#" class="tabs__controls_link">Описание</a></li>
                                {/if}
								<li data-class="tab_reviews" class="tabs__controls_item"><a href="#" class="tabs__controls_link">Отзывы</a></li>
							</ul>
                            <ul id="description__list" class="description_list">
								<li class="tab__pane pane__tab_about active">
									<div class="row">
                                    	{if trim(strip_tags($model->getFullDescription())) != ""}
											<div class="col-md-7">
												<div class="product__description"><a name="description" id="description" class="anchor"></a>
                                            		<h3 class="product__description_title">{tlang('Details')} {echo $model->getName()}</h3>
													<div class="product__description_content">
														<div class="description_text">{echo $model->getFullDescription()}</div>
                                                    </div>
                                                </div>
                                            </div>
                                		{/if}
                                		<div class="col-md-5">
                                			<div class="product__description product_characteristics">
                                    			<a name="characteristics" id="characteristics" class="anchor"></a>
                                        		{$loc_params = ShopCore::app()->SPropertiesRenderer->renderPropertiesArray($model)}
												{if count($loc_params) > 0}
                                        			<h3 class="product__description_title">{tlang('All specifications')}</h3>
                                                	<div class="product__description_content">
												   		{view('shop/includes/product/product_properties.tpl', ['items' => $loc_params])}
                                                	</div>
                                            	{/if}
                                   		 	</div>
                                		</div>
                                    </div>
                            		<!-- Product commetns -->
                            		{if $model->enable_comments == 0}
                            			<div class="product__reviews">
    										<div id="comments-list"></div>
    										<div class="product-fullinfo__item">
      											<div class="product-fullinfo__header">
        											<div class="product-fullinfo__title">{tlang('Customer Reviews')}</div>
      											</div>
      											<div class="product-fullinfo__inner" data-comments>
        											{tpl_load_comments()}
												</div>
											</div>
                            			</div>
                            		{/if}
                                </li>
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
                                 </li>
                                 {if trim(strip_tags($model->getFullDescription())) != ""}
                                 	<li class="tab__pane pane__tab_description">
										<div class="product__description">
                                            <h3 class="product__description_title">{tlang('Details')} {echo $model->getName()}</h3>
											<div class="product__description_content">
												<div class="description_text">{echo $model->getFullDescription()}</div>
                                            </div>
                                        </div>
                                 	</li>
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
                                   	</li>
                            	{/if}
                            </ul>
                       </div>
                    </div>
                    <div class="col-md-3">
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
    								</div>
  								{/if}
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            {widget('products_similar_sidebar')}
		</div><!-- /.main-content -->
	</div><!-- /.container -->
</article><!-- /.product__page -->
