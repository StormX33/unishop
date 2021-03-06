<div class="main_container">
    <div class="main-title">
        <h1>{$category.name}</h1>
    </div>
    <aside class="sidebar pull-left">
        <div class="blog_sidebar_wrap">
            {view('includes/cat_list.tpl', ['cat_id' => 69, 'cat_title_class' => 'fa fa-newspaper-o'])}
        </div>
        <div class="sales_sidebar_wrap">
            {view('includes/cat_list.tpl', ['cat_id' => 72, 'cat_title_class' => 'fa fa-tag'])}
        </div>
        </ul>
    </aside>
    <div class="content content__sale">
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
                                    <h3 class="page__teaser_title">
                                        <a href="{site_url($item.full_url)}">{$item.title}</a>
                                    </h3>
                                     <span><a href="{echo get_category_uri($item[category])}" style="text-transform: uppercase; color: #ce1d2e;"> {echo get_category_name($item[category])}</a> - </span><span class="page__teaser_span" datetime="{date('Y-m-d', $item.publish_date)}">{tpl_locale_date('d F Y', $item.publish_date)}</span>
                                </header>
                                <div class="page__teaser_text">
                                    {$item.prev_text}
                                </div>
                                <a class="page__teaser_link" href="{site_url($item.full_url)}">{tlang('Read more')}</a>
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