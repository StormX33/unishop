<div class="main-content">
	<div class="page__full_article-wrapper">
    	<article class="page__full_article">
        	<header class="gallery__album_header">
            	<h1>{$album.name}</h1>
         	</header>
        	<div class="page__full_article-text">
            	{if trim($album.description) != ""}
                	{$album.description}
            	{/if}
             	{if count($album.images) > 0}
                 	<ul id="products__list" class="gallery__content gallery__list" data-gallery-image="default">
						{foreach $album.images as $item}
							{$item.loc_prev_url = $album_url .$item['file_name'] .'_prev' .$item['file_ext'];}
                        	{$item.loc_image_url = $album_url .$item['full_name'];}
							{$item.loc_thumb_url = $album_url ."_thumbs/" .$item['full_name'];}
							{$item.loc_filter_desc = strip_tags(trim($item.description));}
                    		<li class="page__teaser page__sale">
                             <!--    <div class="products__item-inner">
                                	<div class="project__title">
                                    	{echo strip_tags(trim($item.title));}
                                	</div>
                             	</div> -->
                                <div class="page__teaser_image">
                                	<a class="gallery-album__image" href="{media_url($item.loc_image_url)}" data-gallery-image-item data-gallery-image-title="{$item.loc_filter_desc}">
										<img class="img-responsive project__img" src="{media_url($item.loc_prev_url)}" alt="{$item.loc_filter_desc}">
                                	</a>
                                </div>
                                <div class="page__teaser_content">
                                    <header class="content__gallery_header">
                                        <div class="page__teaser_title content__gallery_title">
                                            {echo strip_tags(trim($item.title));}
                                        </div>
                                    </header>
                                    {if strip_tags(trim($item.description)) != ""}
                                        <div class="gallery__item_text">
                                            {$item.description}
                                        </div>
                                    {/if}
                                </div>
  					        </li>
						{/foreach}
					</ul>
				{else:}
					<p class="message message--info">
						{tlang('There are no items to display. Please come back later!')}
					</p>
				{/if}
			</div>
		</article>
	</div><!-- /.page__full_article-wrapper -->
</div><!-- /.main-content -->