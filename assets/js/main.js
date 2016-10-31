var accordeon = (function(){
    var _openSection = function($this){
        var container = $this.closest(".filter__item"),
            content = container.find(".filter__content"),
            otherContant = $this.closest(".filter").find(".filter__content");

        if (!container.hasClass("active")){
            // otherContant.slideUp().closest(".filter__item").removeClass("active");

            container.addClass("active");
            content.stop(true, true).slideDown();
        }else{
            container.removeClass("active");
            content.stop(true, true).slideUp();
        }
    }

    return {
        init: function(){
            $(".filter__title").on("click", function(e){
                e.preventDefault();
                _openSection($(this));
            });
        }
    }
}());
$(document).ready(function (){
	var container = $(".filter__item").addClass("active");
    if ($(".filter").length){
        accordeon.init();
    }

});



// Header dropdown
$(function () {
    var $phoneHandler = $('.contacts__tel'),
       	$contactsList = $('.contacts__content_list');

    $phoneHandler.on('click', function () {
        $phoneHandler.toggleClass('opened');
        $contactsList.slideToggle("400");
    });
});


// Footer bottom
function footerToBottom() {
	var browserHeight = $(window).height(),
	    footerOuterHeight = $('#footer').outerHeight(true),
	    mainHeightMarginPaddingBorder = $('.wrapper__main').outerHeight(true) - $('.wrapper__main').height();

	$('.wrapper__main').css({
	    'min-height': browserHeight - footerOuterHeight - mainHeightMarginPaddingBorder,
		});
	};
	footerToBottom();
	$(window).resize(function () {
		footerToBottom();
	}
);

var toggleActiveClassClick= (function () {

    var _changeActiveClass = function ($this) {
        $this.closest(".menu__item, .lang__switch_link, .page__pagination_item")
            .addClass("active")
            .siblings()
            .removeClass("active");
    };

    return {
        init: function () {
            $(".menu__item, .lang__switch_link, .page__pagination_item").on("click", function (e) {
                e.preventDefault();
                _changeActiveClass($(this));
            });
        }
    }
}());

var toggleActiveClassHover = (function () {

    var _changeActiveClass = function ($this) {
        $this.closest(".menu__item")
            .addClass("active")
            .siblings()
            .removeClass("active");
    };

    return {
        init: function () {
            $(".menu__item").on("hover", function (e) {
                e.preventDefault();
                _changeActiveClass($(this));
            });
        }
    }
}());

var sliderWidget = (function(){

    var $sliders = null;

    return {
        init: function($elems){
            // Store all initialized sliders
            $sliders = $elems;

            $sliders.each(function(){
                var $this = $(this),
                    min = parseInt($this.data("min")),
                    max = parseInt($this.data("max")),
                    container = $this.closest(".filter__slider"),
                    fromField = container.find(".filter__slider-input_from"),
                    toField = container.find(".filter__slider-input_to");

                fromField.on('change', function(){
                    $this.slider('values', 0, fromField.val())
                });

                toField.on('change', function(){
                    $this.slider('values', 1, toField.val())
                });

                $this.slider({
                    range: true,
                    min: min,
                    max: max,
                    values: [min, max],
                    slide: function(evt, ui) {
                        fromField.val(ui.values[0]);
                        toField.val(ui.values[1])
                    },
                    create: function() {
                        fromField.val(min);
                        toField.val(max)
                    }
                });
            })
        },

        reset: function(){
            $sliders.each(function(){
                var $this = $(this),
                    min = parseInt($this.data("min")),
                    max = parseInt($this.data("max")),
                    container = $this.closest(".filter__slider"),
                    fromField = container.find(".filter__slider-input_from"),
                    toField = container.find(".filter__slider-input_to");

                $this.slider({
                    values: [min, max]
                });

                fromField.val(min);
                toField.val(max);
            })
        }
    }
}());


var ratingWidget = (function(){

    var _letTheStarsShining = function(ratingAmount){
        var starsArray = [];

        for (var i = 0; i < 5; i++){
            var starClassName = (i < ratingAmount) ? "products__rating-stars-item products__rating-stars-item_filed" : "products__rating-stars-item";

            var star = $("<li>",{
                class: starClassName 
            });

            starsArray.push(star);
        }

        return starsArray;    
    }

    var _generateMarkup = function(ratingAmount, elementToAppend){
        var ul =  $("<ul>", {
            class: "products__rating-stars",
            html: _letTheStarsShining (ratingAmount)
        });
 
        elementToAppend.append(ul);
    }

    return {
        init: function(){
            $(".products__raiting").each(function (){
                var $this = $(this),
                    ratingAmount = parseInt($this.data("rating"));

                _generateMarkup(ratingAmount, $this);
            });
        }
    }
}());

var viewStateCange = (function(){

    var _previousClass = "";
    var _changeState = function($this){
        var item = $this.closest(".sort__view-item"),
            view =  item.data("view"),
            listOfItems = $("#products__list"),
            modificationPrefix = "products__list_",
            classOfViewState = modificationPrefix +  view;

        if ("_previousClass" == ""){
            _previousClass.list = listOfItems.attr("class");
        } 
        _changeActiveClass($this);
        listOfItems.attr("class",  _previousClass + " " + classOfViewState);

    }

    var _changeActiveClass = function($this){
        $this.closest(".sort__view-item").addClass("active")
            .siblings().removeClass("active");
    }

    return {
        init: function(){
            $(".sort__view-link").on("click", function(e){
                e.preventDefault();
                _changeState($(this));
            });
        }
    }
}());
var accordeon = (function(){
    var _openSection = function($this){
        var container = $this.closest(".filter__item, .cart__item, .product_info_block-item"),
            content = container.find(".filter__content, .cart__item_content, .product_info_block-content"),
            otherContant = $this.closest(".filter, .cart__list, .product_info_block-list").find(".filter__content, .cart__item_content, .product_info_block-content");

        if (!container.hasClass("active")){
            otherContant.slideUp().closest(".cart__item, .product_info_block-item").removeClass("active");

            container.addClass("active");
            content.stop(true, true).slideDown();
        }else{
            container.removeClass("active");
            content.stop(true, true).slideUp();
        }
    }

    return {
        init: function(){
            $(".filter__title, .cart__item_header, .product_info_block-title").on("click", function(e){
                e.preventDefault();
                _openSection($(this));
            });
        }
    }
}());
/*-----------product slide----------*/
var slideShow = (function () {

    var _changeSlide = function ($this) {
        var container = $this.closest(".products__slideshow"),
            path = $this.find("img").attr("src"),
            display = container.find(".products__slideshow-img");

        $this.closest(".products__slideshow-item").addClass("active")
            .siblings().removeClass("active");

        display.fadeOut(function () {
            $(this).attr("src", path).fadeIn();
        });
    }

    return {
        init: function () {
            $(".products__slideshow-link").on("click", function (e) {
                e.preventDefault();

                var $this = $(this);

                _changeSlide($this);
            });
        }
    }
}());

$(document).ready(function (){
    // if ($(".filter").length){
    //     accordeon.init();
    // }
    if ($(".cart__list").length){
        accordeon.init();
    }
    if ($(".product_info_block-list").length){
        accordeon.init();
    }
    /* Init Price Slider */
    var $sliders = $(".filter__slider-element"); 
    if ($sliders.length){
        sliderWidget.init($sliders);
    }

    if ($(".products__raiting").length){
        ratingWidget.init();
    }
    viewStateCange.init();
    toggleActiveClassClick.init();
    toggleActiveClassHover.init();

    $(".filter__reset").on("click", function(e){
        var $this = $(this),
            container = $this.closest(".filter").find(".filter__list"),
            checkboxes = container.find("input:checkbox");

        checkboxes.removeAttr("checked");
        sliderWidget.reset();

        return false;
    });
    
    if ($(".products__slideshow").length) {
        slideShow.init();
    }
    // select
    if ($(".sort__select-element").length) {
        $(".sort__select-element").select2({
            minimumResultsForSearch: Infinity
        });
    }
});

// Header animate
var $headerTop = $('.header__top'),
    $content = $('.maincontent'),
    $header = $('#header'),
    $headerContent = $('.header__bottom_content'),
    headerTopHeight = $headerTop.outerHeight(true);

$(window).on('scroll', function () {
    if ($(window).scrollTop() >= headerTopHeight) {
        $headerTop.slideUp();
        $content.css('padding-top', '150px');
        $header.addClass('scroll').find($headerContent).hide();

    } else {
        $headerTop.slideDown();
        $content.css('padding-top', '200px');
        $header.removeClass('scroll').find($headerContent).show();
    }
    $(function () {
        var wid = $(window).width();
        if (wid < 768) {
            if ($(window).scrollTop() >= headerTopHeight) {
                $content.css('padding-top', '230px');
            } else {
                $content.css('padding-top', '225px');
            }
        }
    });
});
   

/*-----------menu----------*/
$(function() {
    $('.cbp-hrmenu .nav__list').menuAim({
        triggerEvent:       'hover',
        activateCallback:   activate,
        deactivateCallback: deactivate,
        submenuDirection:   'below',
        openClassName:      'cbp-hropen',
        activationDelay:   200
    });
    function activate(row) {
      $(row).find('.cbp-hrsub').slideDown(400);
    }

    function deactivate(row) {
      $(row).find('.cbp-hrsub').slideUp(200);
    }
});

// COUNT PRODUCT 
$(function() {
    $('.produt__change-count').each(function() {
        var $this = $(this);
        
        $this.find('.icon__minus').click(function() {
            var data = $this.find('.amount').val();

            if(data > 1) {
                $this.find('.amount').val(parseInt(data) - 1);
            }
            return false
        });
        
        $this.find('.icon__plus').click(function() {
            var data = $this.find('.amount').val();

            $this.find('.amount').val(parseInt(data) + 1);
            return false
        });
        
    });
});


//SERVICES MAX HEIGHT

$(window).bind('resize', (function ($) {
    "use strict";
    return function() {
        if($(window).width() < 768){
            return;
        }
        var blockText = $(".services__description"),
            textOffset = blockText.offset();
     
        if (!blockText){
            return;
        }
        $(".item__image_wrap, .services__description_inner").css({
            "height": blockText.outerHeight() + "px" 
        });
    };
})($));

/*-----------tabs----------*/
$(document).ready(function(){

    $('#tabs__controls .tabs__controls_link').on('click', function(e){
        e.preventDefault();

        var item = $(this).closest('.tabs__controls_item'),
            contentItem = $('.tab__pane'),
            itemPosition = item.data('class');

        contentItem.filter('.pane__'+ itemPosition)
            .add(item)
            .addClass('active')
            .siblings()
            .removeClass('active');
    });

    $('#sidebar-nav .sidebar-nav__tab-link').on('click', function(e){
        e.preventDefault();

        var item = $(this).closest('.sidebar-nav__item'),
            contentItem = $('.tab__pane'),
            itemPosition = item.data('class');

        contentItem.filter('.pane__'+ itemPosition)
            .add(item)
            .addClass('active')
            .siblings()
            .removeClass('active');
    });
});

/*-----------scrollup----------*/
$(document).ready(function() {
    $('#scrollup').mouseover( function(){
        $(this).animate({opacity: 0.8},100);
    }).mouseout( function(){
        $(this).animate({opacity: 1},100);
    }).click( function(){
        window.scroll(0 ,0); 
        return false;
    });

    $(window).scroll(function(){
        if ($(document).scrollTop() > 0 ) {
            $('#scrollup').fadeIn('fast');
        } else {
            $('#scrollup').fadeOut('fast');
        }
    });
});

/*---------Header hamburger menu-------*/
$(function () {
    var touch = $('.top__menu_icon'),
        menu = $('.top__header_nav'),
        toggleButton = $('.toggle-mnu, .menu-hidden'),
        navMenu = $('.nav__list'),
        categoryToggle = $('#category__title'),
        categoryContent = $('.content__sidebar-item'),
        filterToggle = $('#filter__title'),
        filterContent = $('#filter-content');

    touch.click(function () {
        $(this).toggleClass("on");
        menu.slideToggle();
        return false;
    });
    toggleButton.click(function () {
        $(this).toggleClass("on");
        navMenu.slideToggle();
        return false;
    });
    categoryToggle.click(function(){
        if( $(window).width() > 768 && !$(this).hasClass('on')){
           return false;
        }
        $(this).toggleClass('on');
        categoryContent.slideToggle();
     
       return false;
    });
    filterToggle.click(function(){
        if( $(window).width() > 768 && !$(this).hasClass('on')){
            return false;
        }
        $(this).toggleClass('on');
            filterContent.slideToggle();

        return false;
    });
    $(window).resize(function () {
        var wid = $(window).width();
        if (wid > 768 && filterContent.is(':hidden')) {
            filterContent.removeAttr('style');
        }
        if (wid > 768 && categoryContent.is(':hidden')) {
            categoryContent.removeAttr('style');
        }
        if (wid > 1023 && navMenu.is(':hidden')) {
            navMenu.removeAttr('style');
        }
        if (wid > 760 && menu.is(':hidden')) {
            menu.removeAttr('style');
        }
    });
});
/*-----------short-text----------*/
$(document).ready(function(){
    $('.text-description-more').click(function(e){
        var text = $('.short_text');
        e.preventDefault();
        $(this).prev(text).removeClass('box-hide');
        $(this).css('display', 'none');
    })
});

/*-----------map----------*/
$(function() {
    var overlay = $('#overlay__div');

    overlay.on("click", function () {
        $(this).attr('style', '');
    });
    $(window).scroll(function(){ 
        overlay.attr('style', 'width:100%; height:600px; position:absolute; z-index:20;');
    });
});

/*-----------fonts----------*/
WebFont.load({
    custom: {
      families: ['PTSansRegular', 'PTSansBold', 'PTSansItalic', 'HeliosCondRegular']
    }
});
// /*-----------gallery text----------*/
$(function(){
    $(".gallery__item_text").dotdotdot();

});
/*-----------header menu----------*/
(function(jQuery, window, document, undefined){
        function setMainNavigationItemsWidth($navigation){
        var navWidth = $navigation.width(),
            $menuItems = $navigation.find(' > li'),
            itemsWidth = 0;


        $menuItems.each(function() {
            var $this = $(this);
            itemsWidth += ($this[0].getBoundingClientRect().width);
        });


        $navigation.width('100%');

        $menuItems.each(function(){
            var $this = $(this),

            itemWidth = ($this[0].getBoundingClientRect().width);
            fluidWidth = (itemWidth/itemsWidth)*100;
            
            $this.width(fluidWidth + '%');
        });
    }

    function unsetMainNavigationItemsWidth($navigation){
        var navWidth = $navigation.width(),
            $menuItems = $navigation.find(' > li');

        $navigation.removeAttr('style');
        $menuItems.removeAttr('style');
    }

    $(function(){
        var $navigation = $('.nav__list'),
            $header = $('#header');

        setMainNavigationItemsWidth($navigation);
        $header.data('setMainNavigationItemsWidth', true);

        $(window).on('scroll orientationChange resize', function(){
            var windowWidth = $(this).width();
            if(windowWidth < 1024 ){
                unsetMainNavigationItemsWidth($navigation);    
                return;
            } 

            if($header.hasClass('scroll')){
                unsetMainNavigationItemsWidth($navigation);
                return;
            }

            unsetMainNavigationItemsWidth($navigation);   
            setMainNavigationItemsWidth($navigation);
        });
    });

})(jQuery, window, document)


// Projects
$(function () {
    var advantagesSlickOpts = {
        dots: false,
        infinite: false,
        speed: 300,
        slidesToShow: 3,
        slidesToScroll: 1,
        arrows: true,
        prevArrow: $('.advantages__button_prev'),
        nextArrow: $('.advantages__button_next'),
        responsive: [
            {
                breakpoint: 1023,
                settings: {
                    unslick: true
                }
            },
            {
                breakpoint: 993,
                settings: {
                    slidesToShow: 2,
                    slidesToScroll: 1,
                    dots: false,
                    arrows: true
                }
            },
            {
                breakpoint: 650,
                settings: {
                    slidesToShow: 1,
                    slidesToScroll: 1,
                    dots: true,
                }
            },
            {
                breakpoint: 481,
                settings: {
                    slidesToShow: 1,
                    slidesToScroll: 1,
                    dots: true,
                    arrows: true
                }
            }
        ]

    };
    $('.advantages__list').slick(advantagesSlickOpts);
});

// Clients
$(function () {
    var useSlickOpts = {
        dots: false,
        infinite: true,
        speed: 300,
        slidesToShow: 6,
        slidesToScroll: 6,
        arrows: true,
        prevArrow: $('.use__button_prev'),
        nextArrow: $('.use__button_next'),
        responsive: [
            {
                breakpoint: 1023,
                settings: {
                    unslick: true,
                }
            },
            {
                breakpoint: 992,
                settings: {
                    slidesToShow: 5,
                    slidesToScroll: 1,
                    dots: false,
                }
            },
            {
                breakpoint: 769,
                settings: {
                    slidesToShow: 3,
                    slidesToScroll: 1,
                    dots: false,
                }
            },
            {
                breakpoint: 600,
                settings: {
                    slidesToShow: 2,
                    slidesToScroll: 1,
                    dots: false,
                }
            },
            {
                breakpoint: 481,
                settings: {
                    slidesToShow: 1,
                    slidesToScroll: 1,
                    dots: false,
                }
            }
        ]
    };
    $('.section__list_use').slick(useSlickOpts);
});
// orders
$(function () {
    var ordersSlickOpts = {
        dots: false,
        infinite: true,
        speed: 300,
        slidesToShow: 6,
        slidesToScroll: 6,
        arrows: true,
        prevArrow: $('.orders__button_prev'),
        nextArrow: $('.orders__button_next'),
        responsive: [
            {
                breakpoint: 1023,
                settings: {
                    unslick: true,
                }
            },
            {
                breakpoint: 992,
                settings: {
                    slidesToShow: 5,
                    slidesToScroll: 1,
                    dots: false,
                }
            },
            {
                breakpoint: 769,
                settings: {
                    slidesToShow: 3,
                    slidesToScroll: 1,
                    dots: false,
                }
            },
            {
                breakpoint: 600,
                settings: {
                    slidesToShow: 2,
                    slidesToScroll: 1,
                    dots: false,
                }
            },
            {
                breakpoint: 481,
                settings: {
                    slidesToShow: 1,
                    slidesToScroll: 1,
                    dots: false,
                }
            }
        ]
    };
    $('.section__list_orders').slick(ordersSlickOpts);
});

// Projects
$(function () {
    var projectsSlickOpts = {
        slidesToShow: 4,
        slidesToScroll: 1,
        dots: false,
        arrows: true,
        prevArrow: $('.projects__button_prev'),
        nextArrow: $('.projects__button_next'),
        responsive: [
            {
                breakpoint: 1023,
                settings: {
                    unslick: true
                }
            },
            {
                breakpoint: 992,
                settings: {
                    slidesToShow: 3,
                    slidesToScroll: 1,
                    dots: false,
                }
            },
            {
                breakpoint: 769,
                settings: {
                    slidesToShow: 2,
                    slidesToScroll: 1,
                    dots: false,
                }
            },
            {
                breakpoint: 650,
                settings: {
                    slidesToShow: 1,
                    slidesToScroll: 1,
                    dots: false,
                }
            },
            {
                breakpoint: 481,
                settings: {
                    slidesToShow: 1,
                    slidesToScroll: 1,
                    dots: false
                }
            }
        ]
    };
    $('.section__slick_projects').slick(projectsSlickOpts);
});
//CatalogSlider
$(function () {
    var catalogSlickOpts = {
        slidesToShow: 1,
        slidesToScroll: 1,
        dots: true,
        arrows: false,
        responsive: [
            {
                breakpoint: 1023,
                settings: {
                    unslick: true
                }
            },
            {
                breakpoint: 481,
                settings: {
                    slidesToShow: 1,
                    slidesToScroll: 1,
                    dots: false,
                    arrows: false
                }
            }
        ]
    };
    $('.catalog__slider').slick(catalogSlickOpts);
});
// RelatedProducts
$(function () {
    var relatedProductsSlickOpts = {
        slidesToShow: 1,
        slidesToScroll: 1,
        dots: false,
        arrows: true,
        prevArrow: $('.related__products_prev'),
        nextArrow: $('.related__products_next'),
        responsive: [
            {
                breakpoint: 1023,
                settings: {
                    unslick: true
                }
            },
            {
                breakpoint: 481,
                settings: {
                    slidesToShow: 1,
                    slidesToScroll: 1,
                    dots: false,
                    arrows: false
                }
            }
        ]
    };
    $('.related__products').slick(relatedProductsSlickOpts);
});
// RecentProducts
$(function () {
    var recentProductsSlickOpts = {
        slidesToShow: 4,
        slidesToScroll: 1,
        dots: false,
        arrows: true,
        prevArrow: $('.recent__products_prev'),
        nextArrow: $('.recent__products_next'),
        responsive: [
            {
                breakpoint: 1200,
                settings: {
                    unslick: true
                }
            },
            {
                breakpoint: 1199,
                settings: {
                    slidesToShow: 3,
                    slidesToScroll: 1,
                    dots: false,
                    arrows: false
                }
            },
            {
                breakpoint: 992,
                settings: {
                    slidesToShow: 2,
                    slidesToScroll: 1,
                    dots: false,
                    arrows: false
                }
            },
            {
                breakpoint: 481,
                settings: {
                    slidesToShow: 1,
                    slidesToScroll: 1,
                    dots: false,
                    arrows: false
                }
            }
        ]
    };
    $('.recent__products_list').slick(recentProductsSlickOpts);
});
// SimilarProducts
$(function () {
    var similarProductsSlickOpts = {
        slidesToShow: 4,
        slidesToScroll: 1,
        dots: false,
        arrows: true,
        prevArrow: $('.similar__products_prev'),
        nextArrow: $('.similar__products_next'),
        responsive: [
            {
                breakpoint: 1200,
                settings: {
                    unslick: true
                }
            },
               {
                breakpoint: 1199,
                settings: {
                    slidesToShow: 3,
                    slidesToScroll: 1,
                    dots: false,
                    arrows: false
                }
            },
            {
                breakpoint: 992,
                settings: {
                    slidesToShow: 2,
                    slidesToScroll: 1,
                    dots: false,
                    arrows: false
                }
            },
            {
                breakpoint: 481,
                settings: {
                    slidesToShow: 1,
                    slidesToScroll: 1,
                    dots: false,
                    arrows: false
                }
            }
        ]
    };
    $('.similar__products_list').slick(similarProductsSlickOpts);
});
// BannerSlider
$(function () {
    var $mainSliderWrapper = $('.banner__main_slide');
    var $mainSliderWrapper = $('.banner__content_inner');
    var $secondRoomWrapper = $('.banner__second_room');
    var $thirdRoomWrapper = $('.banner__third_room');

    var bannerProductsSlickOpts = {
        slidesToShow: 1,
        slidesToScroll: 1,
        dots: true,
        arrows: true,
        fade: true,
        speed: 300,
        cssEase: 'linear',
        appendDots: $('.right__column_image', $mainSliderWrapper),
        dotsClass: 'slick-dots slick-dots-main'
    };
    var bannerSlideSlickOpts = {
        slidesToShow: 1,
        slidesToScroll: 1,
        dots: true,
        arrows: false,
        fade: true,
        speed: 300,
        cssEase: 'linear',
        dotsClass: 'slick-dots slick-dots-inner',
        appendDots: $('.right__column_image', $mainSliderWrapper)
    };
    var bannerSecondSlideSlickOpts = {
        slidesToShow: 1,
        slidesToScroll: 1,
        dots: true,
        arrows: false,
        fade: true,
        speed: 300,
        cssEase: 'linear',
        dotsClass: 'slick-dots slick-dots-second-room',
        appendDots: $('.right__column_image', $secondRoomWrapper)
    };
    var bannerThirdSlideSlickOpts = {
        slidesToShow: 1,
        slidesToScroll: 1,
        dots: true,
        arrows: false,
        fade: true,
        speed: 300,
        cssEase: 'linear',
        dotsClass: 'slick-dots slick-dots-third-room',
        appendDots: $('.right__column_image',  $thirdRoomWrapper)
    };

    var $mainSlider = $('.banner__content'),
        $innerSlider = $('.banner__first-slide_list'),
        $secondInnerSlider = $('.banner__second-slide_list'),
        $thirdInnerSlider = $('.banner__third-slide_list'),
        $mainPrevButton = $('.banner__products_prev');

    
    // $mainSlider.on('init', function(){
    //     var $dots = $('.right__column_image > .slick-dots', $mainSliderWrapper);
    //     $dots.find('li').wrapAll('<div class="dots-wrap">');
    // });

    $innerSlider.on('init', function(){
        var $dots = $('> .slick-dots', $innerSlider);
        $dots.find('li').wrapAll('<div class="dots-wrap">');
    });
        
    $mainSlider.on('beforeChange', function(event, slick, currentSlide, nextSlide){
        var $mainDots = $('.right__column_image > .slick-dots-main', $mainSliderWrapper),
            $innerDots = $('.right__column_image > .slick-dots-inner', $mainSliderWrapper),
            $secondSlideDots = $('.right__column_image > .slick-dots-second-room', $secondRoomWrapper),
            $thirdSlideDots = $('.right__column_image > .slick-dots-third-room', $thirdRoomWrapper);

        if(nextSlide == 0){
            $mainDots.show();
            $innerDots.hide();
            $secondSlideDots.hide();
            $thirdSlideDots.hide();
        } else {
            $mainDots.hide();
            $innerDots.show();
            $secondSlideDots.show();
            $thirdSlideDots.show();
        }
    });

    $mainSlider.on('afterChange', function(slick, currentSlide){
        var currentSlide = $mainSlider.slick('slickCurrentSlide'),
            $mainDots = $('.right__column_image > .slick-dots-main', $mainSliderWrapper),
            $innerDots = $('.right__column_image > .slick-dots-inner', $mainSliderWrapper);

        if(currentSlide == 0){
            $mainPrevButton.addClass('disabled');
        }
        else{
            $mainPrevButton.removeClass('disabled');
        }
    });
    $mainPrevButton.on('click', function(event) {
        $mainSlider.slick("slickGoTo", 0, true);
    });

    $innerSlider.slick(bannerSlideSlickOpts); 
    $secondInnerSlider.slick(bannerSecondSlideSlickOpts); 
    $thirdInnerSlider.slick(bannerThirdSlideSlickOpts); 
    $mainSlider.slick(bannerProductsSlickOpts);
});