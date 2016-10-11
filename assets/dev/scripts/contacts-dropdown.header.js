// Header dropdown
$(function () {
    var $phoneHandler = $('.contacts__tel'),
       	$contactsList = $('.contacts__content_list');

    $phoneHandler.on('click', function () {
        $phoneHandler.toggleClass('opened');
        $contactsList.slideToggle("400");
    });
});

