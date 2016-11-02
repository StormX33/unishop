{$scats = getCatParentQuery(0)}
<section class="menu__products">
	<div class="container">
		<div class="section__title">
			<h2 class="section__title_text">Каталог продукции</h2>
		</div>
		<div class="section__content">
        	<div class="recent__products">
				<div class="slick__arrows-center">
    				<ul class="category__catalog_list similar__products_list">  
						{foreach $scats as $scat}
            				<li class="category__catalog_item">
                				<div class="catalog__item_content">
                					{if $scat->getImage()} 
                        				<a href="{shop_url('category/' . $scat->getFullPath())}">
											<div class="catalog__item_img-wrap">
                    							<img src="{echo $scat->getImage()}" alt="{echo $scat->getName()}" class="catalog__item_img">
                    						</div>
                            			</a>
									{/if}	
                        			<h3 class="catalog__item_title">
                            			<a href="{shop_url('category/' . $scat->getFullPath())}" class="item__title_link">{echo $scat->getName()}</a>
                        			</h3>
                					{$sub_items = getCatParentQuery($scat->getId())}
                					{if count($sub_items) > 0}
                						<div class="item__right_collumn">
                    						<ul class="catalog__inner_list">
                								{foreach $sub_items as $sub_item}
                            						<li class="catalog__inner_item">
                                                    	<a href="{shop_url('category/' . $sub_item->getFullPath())}" class="catalog__inner_link">
                                                        	{echo $sub_item->getName()}
                                                    	</a>
                                                    </li>
                            					{/foreach}
                        					</ul>
                    					</div>
                					{/if}
                				</div>	
                			</li>
					    {/foreach}
        		    </ul>
            		<div class="paginations">
                    	<ul class="pagination__list">
                       		<li class="pagination__item">
                           		<button class="pagination__button button_prev similar__products_prev"></button>
                       		</li>
                       		<li class="pagination__item">
                           		<button class="pagination__button button_next similar__products_next"> </button>
                       		</li>
                    	</ul>
                    </div>
                </div>
			</div>
            <div class="section__content_title-link">
                <a href="{shop_url('categories')}" class="submit__btn_main">
                    <span class="btn__accent_span">Все категории</span>
                </a>
            </div>
		</div>
	</div>
</section>