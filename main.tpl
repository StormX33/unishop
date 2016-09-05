<!DOCTYPE html>
<html lang="{current_language()}">
  <head>

    <!-- Page meta params. Should always be placed before any others head info -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
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
		<link rel="stylesheet" type="text/css" href="{$THEME}assets/css/colorbox.css" media="screen, projection, print">
		<link rel="stylesheet" href="{$THEME}assets/css/remodal.css">
		<link rel="stylesheet" href="{$THEME}assets/css/remodal-default-theme.css">
		<link href="{$THEME}assets/css/yamm.css" rel="stylesheet">
		<link href="{$THEME}assets/css/superfish.css" rel="stylesheet" media="screen">
		<link href="{$THEME}assets/css/superfish-vertical.css" rel="stylesheet" media="screen">
		<link href="{$THEME}assets/css/superfish-navbar.css" rel="stylesheet" media="screen">
		<link rel="stylesheet" href="{$THEME}assets/css/jquery-ui.min.css">
		<link rel="stylesheet" type="text/css" href="{$THEME}assets/css/main.css" media="screen, projection, print">
        <link rel="stylesheet" href="{$THEME}assets/css/custom.css">
        <script src="{$THEME}assets/js/jquery.min.js"></script>
		<script type="text/javascript" src="{$THEME}assets/js/parallax.min.js"> </script>
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
    <div id="page-start" class="wrapper__main">
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
        
          {$content}

        <!-- Viewed products widget. Hidden on order page -->
        {if $CI->core->core_data['data_type'] != 'cart'}
          {widget('products_viewed')}
        {/if}
            <!-- Footer -->
      <footer class="footer">
      	<div class="container">
			<div class="row">
        		{view('includes/footer.tpl')}
        	</div>
        </div>
      </footer>
		</div><!-- .maincontent -->
    </div><!-- .wrapper__main -->

    <!-- Final compiled and minified JS -->
    <script type="text/javascript" src="{$THEME}assets/js/jquery-migrate.min.js"></script>
	<script type="text/javascript" src="{$THEME}assets/js/slick.js"></script>
	<script type="text/javascript" src="{$THEME}assets/js/jquery.colorbox-min.js"></script>
	<script type="text/javascript" src="{$THEME}assets/js/jquery.bpopup.min.js"></script>
	<script type="text/javascript" src="{$THEME}assets/js/select2.min.js"></script>
	<script type="text/javascript" src="{$THEME}assets/js/jquery.easing.compatibility.js"></script>
	<script type="text/javascript" src="{$THEME}assets/js/jquery.easing.min.js"></script>
	<script type="text/javascript" src="{$THEME}assets/js/remodal.min.js"></script>
	<script type="text/javascript" src="{$THEME}assets/js/jquery.mixitup.min.js"></script>
	<script type="text/javascript" src="{$THEME}assets/js/jquery.mixitup.js"></script>
	<script src="{$THEME}assets/js/jquery.magnific-popup.min.js"></script>
    <script src="{$THEME}assets/js/custom.js"> </script>
	<script src="{$THEME}assets/js/superfish.js"> </script>
	<script src="{$THEME}assets/js/jquery-ui.min.js"> </script>
	<script type="text/javascript" src="{$THEME}assets/js/main.js"></script>
	<script src="//yastatic.net/es5-shims/0.0.2/es5-shims.min.js"></script>
	<script src="//yastatic.net/share2/share.js"></script>
    
    <script src="{$THEME}assets/js/mlsAjax.js"></script>
	<script src="{$THEME}assets/js/modal.js"></script>
<!--    <script src="{$THEME}_js/vendor.min.js"></script>
    <script src="{$THEME}_js/final.min.js"></script>
-->   <!--
    * Uncomment this file if you want to put custom styles and do not want to use Gulp build
    -->
    <!-- <script src="{$THEME}_js/custom.js"></script> -->
  </body>
</html>