<section class="projects">
	<div class="container">
    	<div class="section__wrapper">
        	<h2 class="section__title_text">Наши проекты</h2>
            <div class="section__content">
            	<ul class="section__slick_projects">
    				{foreach $images as $image}
                    	<li class="slick__projects_item">
                        	<div class="slick__projects_content">
        						<a href="{$image.url}" class="projects_item_link">
                                	<img src="{$image.file_path}" title="{$image.description}" class="projects__item_image" />
                               	</a>
                                <div class="projects__item_title">
                                	<h4 class="item_title_text">{$image.title}</h4>
                                </div>
                                <div class="project__item_text">
                                	{$image.description}
                                </div>
                        	</div>
                        </li>
    				{/foreach}
				</ul>
				<div class="paginations">
					<ul class="pagination__list">
						<li class="pagination__item"><button class="pagination__button projects__button_prev"> </button></li>
						<li class="pagination__item"><button class="pagination__button projects__button_next"> </button></li>
					</ul>
				</div><a href="/gallery" class="submit__btn_main">Все проекты </a>
			</div>
		</div>
	</div>
</section>
