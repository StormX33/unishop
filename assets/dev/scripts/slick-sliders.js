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
        nextArrow: $('.advantages__button_next')
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
                    slidesToShow: 4,
                    slidesToScroll: 1,
                    dots: false,
                }
            },
            {
                breakpoint: 481,
                settings: {
                    slidesToShow: 2,
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
                    slidesToShow: 4,
                    slidesToScroll: 1,
                    dots: false,
                }
            },
            {
                breakpoint: 481,
                settings: {
                    slidesToShow: 2,
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
    $('.similar__products_list').slick(similarProductsSlickOpts);
});