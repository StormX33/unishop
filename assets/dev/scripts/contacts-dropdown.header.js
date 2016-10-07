// Header dropdown
$(function () {
    var $phoneHandler = $('.contacts__tel'),
       	$contactsList = $('.contacts__content_list');

    $phoneHandler.on('click', function () {
        $phoneHandler.toggleClass('opened');
        $contactsList.slideToggle("400");
    });
});

// $(function () {
//     var $priceHandler = $('.sort__title_price'),
//     	$priceText = $('.sort__title_text');


//     $priceHandler.on('click', function () {
//         $priceText.toggleClass('active');
//     });
// });