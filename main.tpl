<!DOCTYPE html><!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
  <head>

    <!-- Page meta params. Should always be placed before any others head info -->
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- Meta data -->
    <title>{$site_title}</title>
    <meta name="description" content="{$site_description}">
    <meta name="keywords" content="{$site_keywords}">
    <meta name="generator" content="ImageCMS">

    <!-- Final compiled and minified stylesheet -->
    <!--
    * !WARNING! Do not modify final.min.css file! It has been generated automatically
    * All changes will be lost when sources are regenerated!
    * Use Sass files _src/scss instead. Read more here http://docs.imagecms.net/rabota-s-shablonom-multishop/rabota-s-css-i-javasctipt-dlia-razrabotchikov
    -->
<!--   <link rel="stylesheet" href="{$THEME}_css/final.min.css">
-->	<!--theme styles -->
    
    <link rel="stylesheet" type="text/css" href="{$THEME}assets/css/bootstrap.min.css" media="screen, projection, print">
		<link rel="stylesheet" type="text/css" href="{$THEME}assets/css/bootstrap-theme.min.css" media="screen, projection, print">
		<link rel="stylesheet" type="text/css" href="{$THEME}assets/css/font-awesome.min.css" media="screen, projection, print">
		<link rel="stylesheet" type="text/css" href="{$THEME}assets/css/slick.css" media="screen, projection, print">
		<link rel="stylesheet" type="text/css" href="{$THEME}assets/css/slick-theme.css" media="screen, projection, print">
		<link rel="stylesheet" type="text/css" href="{$THEME}assets/css/select2.min.css" media="screen, projection, print">
		<link rel="stylesheet" href="{$THEME}assets/css/remodal.css">
		<link rel="stylesheet" href="{$THEME}assets/css/remodal-default-theme.css">
		<link rel="stylesheet" href="{$THEME}assets/css/jquery-ui.min.css">
		<link rel="stylesheet" type="text/css" href="{$THEME}assets/css/main.css" media="screen, projection, print">
            <!--<link rel="stylesheet" href="{$THEME}assets/css/spinner-circle.scss">-->
    <link rel="stylesheet" href="{$THEME}assets/css/custom.css">
    <script src="{$THEME}assets/js/jquery.min.js"></script>
		<script src="{$THEME}assets/js/bootstrap.min.js"></script>
    <!--
    * Uncomment this file if you want to put custom styles and do not want to use Sass and Gulp
    -->
    <!-- <link rel="stylesheet" href="{$THEME}_css/custom.css"> -->

    <!-- Shortcut icons -->
    <link rel="shortcut icon"
          href="{siteinfo('siteinfo_favicon_url')}"
          type="image/x-icon">
  </head>
  <body data-spy="scroll" data-target="#header" data-offset="1">
    <!-- Main content frame -->
    <div class="wrapper__main">
      <div class="maincontent">
          <!-- Header -->
        <section id="header" data-spy="affix" data-offset-top="1" class="header">
          {view('includes/header.tpl')}
        </section>
		{if $CI->core->core_data['data_type'] == 'main'}
            <section class="banner">
            </section>
          {/if}
        <!-- Bread Crumbs -->
        <div class="breadcrumbs">
        <div class="container">
        {widget('breadcrumbs')}
        </div>
        </div>
        {if $CI->core->core_data['data_type'] == 'main'}
        	{$content}
        {else:}
        	<article class="content-wrapper {echo $CI->core->core_data['data_type']}__page">
				<div class="container">
                {$content}
                </div>
            </article>
        {/if}
          	
          <div id="scrollup" class="scrollup" title="Наверх">
            <i class="fa fa-chevron-up" aria-hidden="true"></i>
          </div>
      </div><!-- .maincontent -->
           <!-- Footer -->
    </div><!-- .wrapper__main -->
    <footer id="footer" class="footer">
        <div class="container">
         <div class="row row-mob">
            {view('includes/footer.tpl')}
          </div>
        </div>
      </footer>

    <!-- Final compiled and minified JS -->
  <script type="text/javascript" src="{$THEME}assets/js/jquery-migrate.min.js"></script>
	<script type="text/javascript" src="{$THEME}assets/js/slick.js"></script>
	<script type="text/javascript" src="{$THEME}assets/js/jquery.bpopup.min.js"></script>
	<script type="text/javascript" src="{$THEME}assets/js/select2.min.js"></script>
	<script type="text/javascript" src="{$THEME}assets/js/jquery.easing.compatibility.js"></script>
	<script type="text/javascript" src="{$THEME}assets/js/jquery.easing.min.js"></script>
	<script type="text/javascript" src="{$THEME}assets/js/remodal.min.js"></script>
  <script src="{$THEME}assets/js/jquery.magnific-popup.min.js"></script>
  <script src="{$THEME}assets/js/mlsMedia.js"></script>
  <script src="{$THEME}assets/bower/jQuery-menu-aim/jquery.menu-aim.js"></script>
	<script src="{$THEME}assets/js/jquery-ui.min.js"> </script>
  <script src="{$THEME}assets/bower/webfontloader/webfontloader.js"></script>
	<script src="//yastatic.net/es5-shims/0.0.2/es5-shims.min.js"></script>
	<script src="//yastatic.net/share2/share.js"></script>
  <script src="{$THEME}assets/js/mlsAjax.js"></script>
	<script src="{$THEME}assets/js/modal.js"></script>
  <script src="{$THEME}assets/js/mlsCart.js"></script>
  <script src="{$THEME}assets/js/jquery.maskedinput.min.js"></script>
  <script src="{$THEME}assets/bower/jQuery.dotdotdot/src/jquery.dotdotdot.min.js"></script>
  <script type="text/javascript" src="{$THEME}assets/js/main.js"></script>
  <script src="{$THEME}assets/js/custom.js"> </script>

<!--    <script src="{$THEME}_js/vendor.min.js"></script>
    <script src="{$THEME}_js/final.min.js"></script>
-->   <!--
    * Uncomment this file if you want to put custom styles and do not want to use Gulp build
    -->
    <!-- <script src="{$THEME}_js/custom.js"></script> -->
  </body>
</html>