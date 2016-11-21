// BannerSlider
$(window).on('load', function () {
    var $bannerSlide = $('.banner__content_slide');
    $bannerSlide.css('display', 'block');
});
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
        $mainPrevButton = $('.banner__products_prev'),
        $customContainer = $('.container__btn_prev');


    $customContainer.appendTo('.right__column_image', $mainSliderWrapper);
    $customContainer.css('z-index', 1001)

    // Enable tooltips
    var $customPrevButton =  $('.banner__btn_prev'),
        $customButtonTooltip = $('.btn__title');

    $customPrevButton.hover(
        //mouseenter
        function(){
            if (!$customButtonTooltip.hasClass('on')){
                $customButtonTooltip.addClass('on');
                $customButtonTooltip.fadeTo(300, 1);
            }
        },
        //mouseleave
        function(){
            if ($customButtonTooltip.hasClass('on')){
                $customButtonTooltip.removeClass('on');
                $customButtonTooltip.fadeOut(300);
            }
        }
    )

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

    $mainSlider.on('afterChange', function(slick, $currentSlide){
        var currentSlideIndex = $mainSlider.slick('slickCurrentSlide'),
            $mainDots = $('.right__column_image > .slick-dots-main', $mainSliderWrapper),
            $innerDots = $('.right__column_image > .slick-dots-inner', $mainSliderWrapper),
            $customPrevButtonAll = $('.banner__btn_prev', $mainSliderWrapper)
            $customPrevButtonWrap  = $(".btn__prev_wrap", $currentSlide);

        if(currentSlideIndex == 0){
            $mainPrevButton.addClass('disabled');
            $customPrevButtonAll.addClass('disabled');
        } else{
            $mainPrevButton.removeClass('disabled');
            $customPrevButtonAll.removeClass('disabled');
        }
        
        if(currentSlideIndex == 1){
            $customPrevButtonWrap.css({
                "left": "44%",
                "top": "62px"
            });
        }
        
        if(currentSlideIndex == 2){
            $customPrevButtonWrap.css({
                "left": "55%",
                "top": "145px"
            });
        }
        
        if(currentSlideIndex == 3){
            $customPrevButtonWrap.css({
                "left": "30%",
                "top": "-85px"
            });
        }
    });

    $mainPrevButton.on('click', function(event) {
        $mainSlider.slick("slickGoTo", 0, true);
    });
    $customPrevButton.on('click', function(event) {
        $mainSlider.slick("slickGoTo", 0, true);

        $customButtonTooltip.removeClass('on');
        $customButtonTooltip.fadeOut(100);
    });

    $innerSlider.slick(bannerSlideSlickOpts); 
    $secondInnerSlider.slick(bannerSecondSlideSlickOpts); 
    $thirdInnerSlider.slick(bannerThirdSlideSlickOpts); 
    $mainSlider.slick(bannerProductsSlickOpts);
});