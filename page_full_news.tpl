<div class="container">
    <div class="main-content">
    <aside class="sidebar pull-left">
        <div class="blog_sidebar_wrap">
            {view('includes/cat_list.tpl', ['cat_id' => 69, 'cat_title_class' => 'fa fa-newspaper-o'])}
        </div>
        <div class="sales_sidebar_wrap">
            {view('includes/cat_list.tpl', ['cat_id' => 72, 'cat_title_class' => 'fa fa-tag'])}
        </div>
        </ul>
    </aside>
        <div class="content content__sale pull-right">
            <div class="page__full_article-wrapper">
                <article class="page__full_article">
                    <header><h2>{$page.title}</h2></header>
                    <div class="page__full_article-text">
                    <div class="introimage"><img src="{echo $page.field_list_image}" /></div>
                        {$page.full_text}
                    </div>
                    <!-- Comments -->
                    {if $page.comments_status == 1}
                        <div class="content__row">
                            <section class="frame-content">
                                <div class="frame-content__header">
                                    <h2 class="frame-content__title">{tlang('Comments')}</h2>
                                </div>
                                <div class="frame-content__inner" data-comments>
                                    {tpl_load_comments()}
                                </div>
                            </section>
                        </div>
                    {/if}
                </article>
            </div>
        </div>
    </div><!-- /.main-content -->
</div>