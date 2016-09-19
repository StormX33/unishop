<div class="main-content">
	<aside class="sidebar pull-right">
		{if count($gallery_category) > 1}
			<!-- Categories Navigation -->
			<div class="content__row content__row--sm">
				{view('gallery/includes/gallery_menu.tpl')}
			</div>
		{/if}
	</aside>	
	<div class="content pull-left content__sale">
		<div class="page__teaser_wrapper">
			{$loc_main_title = $current_category.id ? $current_category.name : tlang('Gallery')}
			<h1 class="content__title">{$loc_main_title}</h1>
			<!-- Categories List -->
			{if count($albums) > 0}
				{foreach $albums as $item}
					{if $item.count > 0}
						{$loc_cover_url = "uploads/gallery/" .$item.id ."/" .$item.cover_name ."_prev".$item.cover_ext}
                        <article class="page__teaser page__sale"> 
							<div class="page__teaser_image">
								{if $item['cover_name']}
									<a class="gallery-album__image" href="{site_url('gallery/album/'.$item['id'])}">
										<img class="img-responsive" src="{media_url($loc_cover_url)}" alt="{$item.name}">
									</a>
								{/if}
							</div>
                            <div class="page__teaser_content">
                            	<header>
                                	<h3 class="page__teaser_title">
                                    	<a class="gallery-album__title-link" href="{site_url('gallery/album/'.$item['id'])}">{$item.name}</a>
                                    </h3>
                                </header>
                                {if strip_tags(trim($item.description)) != ""}
                                	<div class="page__teaser_text">
                                		{$item.description}
                                	</div>
                                    <a class="page__teaser_link" href="{site_url('gallery/album/'.$item['id'])}">Подробнее</a>
                                {/if}
                            </div>
						</article>
					{/if}
				{/foreach}
					</div>
				{else:}
					<p class="message message--info">
						{tlang('There are no items to display. Please come back later!')}
					</p>
				{/if}
			</div>
		</div>
	</div><!-- ./pull-left content__sale -->
	<!-- Category Description -->
	{if trim($current_category.description) != ""}
		<div class="content__row">
			<div class="typo">{$current_category.description}</div>
		</div>
	{/if}
</div><!-- /.main-content -->