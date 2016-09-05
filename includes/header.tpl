<!-- Top Headline -->
<div class="header__top">
  <div class="container">
    <div class="left__collumn pull-left"> {load_menu('info_header')} </div>
    <div class="right__collumn pull-right"> {view('includes/header_rightblock.tpl')} </div>
  </div>
</div>

<!-- Main Header -->
<div class="header__bottom">
	<div class="container">
		<div class="header__bottom_content"> 
			<!-- Logo -->
			{if siteinfo('siteinfo_logo') != ""}
				<a href="{site_url('')}" class="logo">
					<div class="logo__img_wrap">
						<img src="{echo siteinfo('siteinfo_logo')}" alt="{echo $CI->core->settings['site_title']}" class="logo__img img-responsive">
					</div>
					<div class="logo__text"> 
						<h1>Винтерм </h1><span>Современные системы отопления</span>
					</div>
					<div class="logo__item_text">
						<h2 class="logo__description_text">{tlang('Engineering Center')}</h2>
					</div>
				</a>
			{/if}
      <!-- Search -->
     <div class="search">
        {view('shop/includes/search_and_brand/autocomplete.tpl')} 
	 </div><!--search-->
	 <div class="header__right_collumn">
		<div class="header__socials">
			<div class="socials__item_fb">
            	<a href="#" target="_blank" class="socials__link_fb">
					<div class="socials__icon_fb"></div>
                </a>
            </div>
		</div><!--header__socials-->
      	<!-- Phones and call-back -->
		<div class="contacts">
        	{view('includes/header_phone.tpl')}
		</div><!--contacts-->
        {view('includes/header_profile.tpl')}
	 </div><!--header__right_collumn-->
      <!-- Schedule -->
      <!--<div class="col-lg-2 col-lg-push-4 hidden-xs hidden-sm hidden-md"> {view('includes/header_schedule.tpl')} </div>-->
      <!-- Cart -->
    </div><!--header__bottom_content-->
  </div><!--container-->
  
   <!-- Main Navigation -->
	{view('includes/header_menu.tpl')}
</div><!--header__bottom-->
