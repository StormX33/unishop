						<div class="section__wrapper">
							<div class="section__title">
								<h2 class="section__title_text">Winterm -<span class="section__title_span">официальный диллер</span></h2>
							</div>
							<div class="section_content">
								<ul class="section__list_use">
                                {foreach $brands as $brand}
                                	{if $brand.img_fullpath}
									<li class="slick__use_item"><a href="{shop_url($brand.full_url)}" class="slick__image_link"><img src="{media_url($brand.img_fullpath)}" alt="{$brand.name}" class="img-responsive slick__image"></a></li>
                                    {/if}
                                {/foreach}
								</ul>
								<div class="paginations">
									<ul class="pagination__list">
										<li class="pagination_item">
											<button class="pagination__button use__button_prev"> <span aria-hidden="true" class="glyphicon glyphicon-menu-left"></span></button>
										</li>
										<li class="pagination_item">
											<button class="pagination__button use__button_next"> <span aria-hidden="true" class="glyphicon  glyphicon-menu-right">   </span></button>
										</li>
									</ul>
								</div>
							</div>
						</div>
