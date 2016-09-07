<article class="content-wrapper content__page-wrapper">
	<div class="container">
		<div class="main-content">
        	<aside class="sidebar pull-right">
        	</aside>
           	<div class="content pull-left">
            	<div class="page__full_article-wrapper">
                	<article class="page__full_article">
                    	<header><h2>{$page.title}</h2></header>
                        <div class="page__full_article-text">
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
    	</div><!-- /.content__container -->
	</div>
</article>