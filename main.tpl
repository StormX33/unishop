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
    <link rel="stylesheet" type="text/css" href="{$THEME}assets/css/bootstrap.min.css" media="screen, projection, print">
    <link rel="stylesheet" type="text/css" href="{$THEME}assets/css/bootstrap-theme.min.css" media="screen, projection, print">
    <link rel="stylesheet" type="text/css" href="{$THEME}assets/css/font-awesome.min.css" media="screen, projection, print">
    <link rel="stylesheet" type="text/css" href="{$THEME}assets/css/slick.css" media="screen, projection, print">
    <link rel="stylesheet" type="text/css" href="{$THEME}assets/css/slick-theme.css" media="screen, projection, print">
    <link rel="stylesheet" type="text/css" href="{$THEME}assets/css/select2.min.css" media="screen, projection, print">
    <link rel="stylesheet" href="{$THEME}assets/css/remodal.css">
    <link rel="stylesheet" href="{$THEME}assets/css/remodal-default-theme.css">
    <link rel="stylesheet" href="{$THEME}assets/css/jquery-ui.min.css">
    <link rel="stylesheet" href="{$THEME}assets/css/svg/svg-icon.css">
    <link rel="stylesheet" href="{$THEME}assets/css/likes.css">
    <link rel="stylesheet" href="{$THEME}assets/css/comments.css">
    <link rel="stylesheet" href="{$THEME}assets/css/shares.css">
    <link rel="stylesheet" href="{$THEME}assets/css/star-rating.css">
    <link rel="stylesheet" href="{$THEME}assets/css/star-voting.css">
    <link rel="stylesheet" href="{$THEME}assets/css/tooltip.css">
    <link rel="stylesheet" href="{$THEME}assets/css/autocomplete.css">
    <link rel="stylesheet" type="text/css" href="{$THEME}assets/css/main.css" media="screen, projection, print">
    <link rel="stylesheet" href="{$THEME}assets/css/spinner-circle.css">
    <link rel="stylesheet" href="{$THEME}assets/css/compare.css">
    <link rel="stylesheet" href="{$THEME}assets/css/custom.css">
    <script src="{$THEME}assets/js/jquery.min.js"></script>
    <script src="{$THEME}assets/js/bootstrap.min.js"></script>
    <script src="http://maps.google.com/maps/api/js?sensor=false&key=AIzaSyCZXiULGxmzw0X7Q1Bn6TrnhAJL9q8Y5Xo"> </script>

    <!-- Shortcut icons -->
    <link rel="shortcut icon" href="{siteinfo('siteinfo_favicon_url')}" type="image/x-icon">
</head>
<body data-spy="scroll" data-target="#header" data-offset="1">
	{view('includes/svg/sprite.tpl')}
	<!-- Main content frame -->
	<div class="wrapper__main">
		<div class="maincontent">
			<!-- Header -->
			<section id="header" data-spy="affix" data-offset-top="1" class="header">
				{view('includes/header.tpl')}
			</section>
			{if $CI->core->core_data['data_type'] == 'main'}
  				<section class="banner">
  					{view('includes/header_banners.tpl')}
  				</section>
                <section class="infoblock">
                    <div class="container">
                        <ul class="infoblock__list">
                            <li class="infoblock__item">
                                <div class="infoblock__item_content">
                                    <div class="infoblock__img_wrap">
                                        <img src="{$THEME}/images/infoblock/for_infoblock1.png" alt="for_infoblock1" class="infoblock__img">
                                    </div>
                                    <div class="infoblock__text">
                                        <span class="infoblock__span">4000</span>
                                        <p>Довольных клиентов</p>
                                    </div>
                                </div>
                            </li>
                            <li class="infoblock__item">
                                <div class="infoblock__item_content">
                                    <div class="infoblock__img_wrap">
                                        <img src="{$THEME}/images/infoblock/for_infoblock2.png" alt="for_infoblock2" class="infoblock__img">
                                    </div>
                                    <div class="infoblock__text">до<span class="infoblock__span">20 лет</span>
                                        <p>Гарантии</p>
                                    </div>
                                </div>
                            </li>
                            <li class="infoblock__item">
                                <div class="infoblock__item_content">
                                    <div class="infoblock__img_wrap">
                                        <img src="{$THEME}/images/infoblock/for_infoblock3.png" alt="for_infoblock3" class="infoblock__img">
                                    </div>
                                    <div class="infoblock__text"><span class="infoblock__span">1 000 000 м²</span>
                                        <p>Обогретых помещений</p>
                                    </div>
                                </div>
                            </li>
                            <li class="infoblock__item">
                                <div class="infoblock__item_content">
                                    <div class="infoblock__img_wrap">
                                        <img src="{$THEME}/images/infoblock/for_infoblock4.png" alt="for_infoblock4" class="infoblock__img">
                                    </div>
                                    <div class="infoblock__text"><span class="infoblock__span">10 лет</span>
                                        <p>На рынке</p>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
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
					{if $CI->core->core_data['data_type'] != 'page'}
						<div class="container">
							{$content}
						</div>
					{else:}
						{$content}
					{/if}
				</article>
			{/if}
			<div id="scrollup" class="scrollup" title="Наверх">
				<i class="fa fa-chevron-up" aria-hidden="true"></i>
			</div>
		</div><!-- .maincontent -->
	</div><!-- .wrapper__main -->
    <!-- Footer -->
	<footer id="footer" class="footer">
		<div class="container">
			<div class="row row-mob">
				{view('includes/footer.tpl')}
			</div>
		</div>
	</footer>
    <!-- Final compiled and minified JS -->
    <script type="text/javascript" src="{$THEME}assets/js/jquery-migrate.min.js"></script>
    <script type="text/javascript" src="{$THEME}assets/js/jquery.autocolumnlist.min.js"></script>
    <script type="text/javascript" src="{$THEME}assets/js/slick.js"></script>
    <script type="text/javascript" src="{$THEME}assets/js/jquery.bpopup.min.js"></script>
    <script type="text/javascript" src="{$THEME}assets/js/select2.min.js"></script>
    <script type="text/javascript" src="{$THEME}assets/js/jquery.easing.compatibility.js"></script>
    <script type="text/javascript" src="{$THEME}assets/js/jquery.easing.min.js"></script>
    <script type="text/javascript" src="{$THEME}assets/js/remodal.min.js"></script>
    <script src="{$THEME}assets/js/jquery.magnific-popup.min.js"></script>
    <script src="{$THEME}assets/js/mlsMedia.js"></script>
    <script src="{$THEME}assets/js/jquery-ui.min.js"> </script>
    <script src="{$THEME}assets/bower/webfontloader/webfontloader.js"></script>
    <script src="//yastatic.net/es5-shims/0.0.2/es5-shims.min.js"></script>
    <script src="//yastatic.net/share2/share.js"></script>
    <script src="{$THEME}assets/js/mlsAjax.js"></script>
    <script src="{$THEME}assets/js/modal.js"></script>
    <script src="{$THEME}assets/js/mlsCart.js"></script>
    <script src="{$THEME}assets/js/mlsWishList.js"></script>
    <script src="{$THEME}assets/js/jquery.maskedinput.min.js"></script>
    <script src="{$THEME}assets/bower/jQuery.dotdotdot/src/jquery.dotdotdot.min.js"></script>
    <script src="{$THEME}assets/js/jquery.menu-aim.ext.js"></script>
    <script type="text/javascript" src="{$THEME}assets/js/main.js"></script>
    <script src="{$THEME}assets/js/custom.js"> </script>
</body>
</html>