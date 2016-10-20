<div class="main-content main-gallery-content">
	
		<div class="page__teaser_wrapper">
			{$loc_main_title = $current_category.id ? $current_category.name : tlang('Projects')}
			<h1 class="content__title content__sale_title">{$loc_main_title}</h1>
			<aside class="top-sidebar">
				{if count($gallery_category) > 1}
					<!-- Categories Navigation -->
					<div class="content__row content__row--sm">
						{view('gallery/includes/gallery_menu.tpl')}
					</div>
				{/if}
			</aside>
			<!-- Categories List -->
			<div class="gallery__content">
				{if count($albums) > 0}
					{foreach $albums as $item}
						{if $item.count > 0}
							{$loc_cover_url = "uploads/gallery/" .$item.id ."/" .$item.cover_name ."_prev".$item.cover_ext}
	                        <article class="page__teaser page__teaser_gallery">
                            <a href="{site_url('gallery/album/'.$item['id'])}"> 
								<div class="page__teaser_image">
									{if $item['cover_name']}
											<img class="img-responsive" src="{media_url($loc_cover_url)}" alt="{$item.name}">
									{/if}
								</div>
	                            <div class="page__teaser_content">
	                            	<header>
	                                	<h3 class="page__teaser_title">
	                                    	<span class="gallery-album__title-link" href="{site_url('gallery/album/'.$item['id'])}">{$item.name}</span>
	                                    </h3>
	                                </header>
	                                {if strip_tags(trim($item.description)) != ""}
	                                	<div class="page__teaser_text gallery__item_text">
	                                		{$item.description}
	                                	</div>
	                                    <span class="page__teaser_link" href="{site_url('gallery/album/'.$item['id'])}">Подробнее</span>
	                                {/if}
	                            </div>
                                </a>
							</article>
						{/if}
					{/foreach}
					</div>
						</div>
					{else:}
						<p class="message message--info">
							{tlang('There are no items to display. Please come back later!')}
						</p>
					{/if}
			</div>
		</div>
	<!-- ./pull-left content__sale -->
	<!-- Category Description -->
	{if trim($current_category.description) != ""}
		<div class="content__row">
			<div class="typo">{$current_category.description}</div>
		</div>
	{/if}
</div><!-- /.main-content -->