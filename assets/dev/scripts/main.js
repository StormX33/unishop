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
            $(".filter__title ").on("click", function(e){
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
    if ($(".filter").length){
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
        $content.css('padding-top', '160px');
        $header.addClass('scroll').find($headerContent).hide();

    } else {
        $headerTop.slideDown();
        $content.css('padding-top', '220px');
        $header.removeClass('scroll').find($headerContent).show();
    }
    $(function () {
        var wid = $(window).width();
        if (wid < 768) {
            if ($(window).scrollTop() >= headerTopHeight) {
                $content.css('padding-top', '230px');
            } else {
                $content.css('padding-top', '250px');
            }
        }
    });
});
   

/*-----------select----------*/
// $(function () {
//     // if ($(".products__slideshow").length) {
//     //     slideShow.init();
//     // }

//     if ($(".sort__select-element").length) {
//         $(".sort__select-element").select2({
//             minimumResultsForSearch: Infinity
//         });
//     }
// });


/*-----------menu----------*/
$(function() {
    $('.cbp-hrmenu .nav__list').menuAim({
      triggerEvent:       'hover',
      activateCallback:   activate,
      deactivateCallback: deactivate,
      submenuDirection:   'below',
      openClassName:      'cbp-hropen',
      activationDelay:    200
    });

    function activate(row) {
      $(row).addClass('cbp-hropen');
    }

    function deactivate(row) {
      $(row).removeClass('cbp-hropen');
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
        categoryToggle = $('.category_sidebar_btn, #category__title, .category__toggle_arrow'),
        categoryContent = $('.content__sidebar-item'),
        filterToggle = $('.filter__toggle_btn, #filter__title, .filter__toggle_arrow'),
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
    categoryToggle.click(function () {
        $(this).toggleClass("on");
        categoryContent.slideToggle();
        return false;
    });
    filterToggle.click(function () {
        $(this).toggleClass("on");
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

$(document).ready(function(){
    $('.text-description-more').click(function(e){
        e.preventDefault();
        $('#short_text').removeClass('box-hide');
        $(this).css('display', 'none');
    })
});



