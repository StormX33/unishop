<div class="main_container">
    <div class="main-title">
        <h1>{$category.name}</h1>
    </div>
	<aside class="sidebar pull-right">
    {view ('callbacks/callback.tpl', [titletext => 'Получите бесплатную <br> косультацию и выезд <br> на ваш объект'])}
    {view('includes/cat_list.tpl', ['cat_id' => 72, 'cat_title_class' => 'fa fa-tag'])}
    </aside>

    <div class="content pull-left">
        <div class="page__teaser_wrapper">
            {if count($pages) > 0}
                {foreach $pages as $item}
                    <article class="page__teaser page__sale">
                       {if trim($item.field_list_image) != ""}
                            <div class="page__teaser_image">
                                <a href="{site_url($item.full_url)}">
                                    <img src="{$item.field_list_image}" alt="{$item.title}" class="img-responsive">
                                </a>
                            </div>
                        {/if}
                        {if trim($item.prev_text) != ""}
                            <div class="page__teaser_content" {if trim($item.field_list_image) == ""}style="margin-left:0;"{/if}>
                            	<header>
                            		<h3 class="page__teaser_title" >
                                		<a href="{site_url($item.full_url)}">{$item.title}</a>
                            		</h3>
                       			</header>

                                {$item.prev_text}
                            </div>
            
                        {/if}
                        
                    </article>
                {/foreach}
            {else:}
                <article class="page__teaser">{tlang('There are no items to display. Please come back later!')}</article>
            {/if}
        </div>
        <!-- Category pagination BEGIN -->
        {if $pagination}
            <div class="page__pagination">
                {$pagination}
            </div>
        {/if}
        <!-- Category description -->
        {if trim($category.short_desc)}
            <div class="content__row">
                <div class="typo">{$category.short_desc}</div>
            </div>
        {/if}
    </div>
</div><!-- /.content__container -->