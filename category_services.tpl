<div class="main_container">
    <aside class="sidebar pull-right sidebar__blog">
        <ul class="main__sidebar__list">
		{view('includes/cat_list.tpl', ['cat_id' => 83, 'cat_title_class' => 'fa fa-tag'])}
        </ul>
                        
    </aside>
    <div class="content pull-left content__blog">
        <div class="page__teaser_wrapper">
            <h1>{$category.name}</h1>
            {if count($pages) > 0}
                {foreach $pages as $item}
                    <article class="page__teaser">
                        <header>
                            <h3 class="page__teaser_title">
                                <a href="{site_url($item.full_url)}">{$item.title}</a>
                            </h3>
                            <span class="page__teaser_span" datetime="{date('Y-m-d', $item.publish_date)}">{tpl_locale_date('d F Y', $item.publish_date)}</span>
                       </header>
                       {if trim($item.field_list_image) != ""}
                            <div class="page__teaser_image">
                                <a href="{site_url($item.full_url)}">
                                    <img src="{$item.field_list_image}" alt="{$item.title}" class="img-responsive">
                                </a>
                            </div>
                        {/if}
                        {if trim($item.prev_text) != ""}
                            <div class="page__teaser_text">
                                {$item.prev_text}
                            </div>
            
                        {/if}
                        <a class="page__teaser_link" href="{site_url($item.full_url)}">{tlang('Read more')}</a>
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