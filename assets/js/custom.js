$("input[type=tel]").mask("+38(999) 999-99-99");
(function($){
	$('.writereview').on('click', function(e){
		$('#tabs__controls .tabs__controls_link').click();
		});
 $('ul#product-cat').autocolumnlist({
                columns: 3,
                classname: 'col-md-4',
                min: 9
            });

  /* Remove ajax loader */
$(document).on('ajaxStop', function(){
    $.mlsAjax.preloaderHide();
  });
})(jQuery);

/* Component functions */		
(function($){

	$.mshButtons = {
		addLoader: function(button){		
			button.attr('disabled', 'disabled').find('[data-button-loader="loader"]').removeClass('hidden');
		},
		removeLoader: function(button){		
			button.removeAttr('disabled').find('[data-button-loader="loader"]').addClass('hidden');
		}
	}

})(jQuery);
	var hash = window.location.hash;
	hash = hash.slice(1);
	if (hash){
		$(document).ready(function(e){
	        var item = $('.sidebar-nav__item_data[data-class="'+hash+'"]'),
            contentItem = $('.tab__pane'),
            itemPosition = item.data('class');

        contentItem.filter('.pane__'+ itemPosition)
            .add(item)
            .addClass('active')
            .siblings()
            .removeClass('active');
    });
	}


/*$(document).ready(function(){
var loc = window.location.hash.replace("#","");
if (loc != "") {
//var destination = $("#"+loc).offset().top - 150;
var destination = $("#"+loc).offset().top ;
$("html").animate({ scrollTop: destination}, 1000 );
}
});*/

/* Event listeners */

/* Button icon loader */
$(document).on('click', '[data-button-loader="button"]', function(){
	$.mshButtons.addLoader($(this));
});

/************************************************CART**********************************/
/**
 * Change cart product quantity
 */
$(document).on('submit', '[data-cart-summary--quantity]', function (e) {
  e.preventDefault();

  $.mlsCart.loadSummaryJson($(this), {
    loadFrame: true,
    transferData: true,
    toggleAddToCartButton: false,
    toggleKitButton: false
  });

});

$(document).on('change', '[data-cart-summary--quantity-field]', function () {
  var quantityForm = $(this).closest('[data-cart-summary--quantity]');
  quantityForm.trigger('submit');
});


/**
 * Delete item from cart
 */
$(document).on('click', '[data-cart-summary--delete]', function (e) {
  e.preventDefault();

  var variantId = $(this).attr('data-cart-summary--item-id')
  var kitList = $('[data-product-kit--id="' + variantId + '"]')

  $.mlsCart.loadSummaryJson($(this), {
    loadFrame: true,
    transferData: true,
    toggleAddToCartButton: true,
    toggleKitButton: true,
    variantId: variantId,
    kitList: kitList
  });

});


/**
 * Ajax gift coupon
 */
$(document).on('submit', '[data-cart-summary--coupon]', function (e) {
  e.preventDefault();

  var target = $(this);
  var responseFrame = $('[data-cart-summary]');

  $.ajax({
    url: target.attr('action'),
    type: target.attr('method') ? target.attr('method') : 'get',
    data: target.serialize(),
    beforeSend: function () {
      /* Frame loader */
      $.mlsAjax.preloaderShow({
        type: 'frame',
        frame: responseFrame
      });
    },
    success: function (data) {
      /* Insert response into document */
      $.mlsAjax.loadResponseFrame(data, responseFrame);
      // Grab extra data from response frame and insert it into remote places
      $.mlsAjax.transferData(data);
    }
  })

});


/**
 * Delivery methods change
 */
$(document).on('change', '[data-cart-delivery--input]', function (e) {
  e.preventDefault();

  var target = $(this);
  var targetUrl = target.attr('data-cart-delivery--href');
  var responseFrame = $('[data-cart-summary]');

  $.ajax({
    url: targetUrl,
    type: 'POST',
    data: target.serialize(),
    beforeSend: function () {
      /* Frame preloader on cart */
      $.mlsAjax.preloaderShow({
        type: 'frame',
        frame: responseFrame
      });
      /* Frame preloader on delivery list */
      $.mlsAjax.preloaderShow({
        type: 'frame',
        frame: target.closest($('[data-cart-delivery]'))
      });
    },
    success: function (data) {

      // Insert response into document
      $.mlsAjax.loadResponseFrame(data, responseFrame);

      // Grab extra data from response frame and insert it into remote places
      $.mlsAjax.transferData(data);

      // Toggle payment methods visibility
      $('[data-cart-delivery--payment]').addClass('hidden');
      target.closest('[data-cart-delivery--item]').find('[data-cart-delivery--payment]').removeClass('hidden');

    }
  });

});


/**
 * Order Checkout form sublit
 */
$(document).on('submit', '[data-cart-checkout-form]', function () {
  $(this).find('[data-cart-checkout-form-button]').prop('disabled', true);
});
/********************************** END CART **********************************************/
/********************************** CATALOG **********************************************/
/*
 * Change Catalog View
 */
$(document).on('click', '[data-catalog-view-item]', function (e) {
    var cookieValue = $(this).attr('data-catalog-view-item');

    e.preventDefault();
    document.cookie = 'catalog_view=' + cookieValue + ';path=/';
    window.location.reload();
});


/*
 * Order form onchange
 */
$(document).on('change', '[data-catalog-order-select]', function(){
    $('#catalog-form').submit();
    $('[form="catalog-form"]').attr('disabled', true);
});

/*
 * Per page form onchange
 */
$(document).on('change', '[data-catalog-perpage-select]', function(){
    $('#catalog-form').submit();
    $('[form="catalog-form"]').attr('disabled', true);
});
/********************************** END CATALOG **********************************************/

/********************************** CATALOG FILTERS **********************************************/
$(document).ready(function () {
	$('.products__slideshow-thumbs').slick({
  slidesToShow: 3,
  slidesToScroll: 1,
  asNavFor: '.products__slideshow-img',
  dots: true,
  centerMode: true,
  focusOnSelect: true
});

    /*
     * Toggle filter visibility on mobile devices
     */
    $(document).on('click', '[data-filter-toggle--btn]', function (e) {
        e.preventDefault();
        $('[data-filter-toggle--filter]').toggleClass('hidden-xs');
        $(this).find('[data-filter-toggle--btn-text]').toggleClass('hidden');
    });


    /*
     * Toggle property valuse visibility if dropDown option in filter setting is true
     */
    $(document).on('click', '[data-filter-drop-handle]', function (e) {
        e.preventDefault();
        $(this).closest('[data-filter-drop-scope]').find('[data-filter-drop-inner]').slideToggle(300);
        $(this).closest('[data-filter-drop-scope]').find('[data-filter-drop-ico]').toggleClass('hidden', 300);
    });


    /*
     * Positioning scroll into the middle of checked value
     * Working only if scroll option in filter setting is true
     */
    $('[data-filter-scroll]').each(function () {
        var frame = $(this);
        var fieldActive = frame.find('[data-filter-control]:checked').first();

        if (fieldActive.size() > 0) {
            var fieldActivePos = fieldActive.offset().top - frame.offset().top;
            frame.scrollTop(fieldActivePos - (frame.height() / 2 - fieldActive.height()));
        }
    });


    /*
     * Submit Form on Change event
     */
    $(document).on('change', '[data-filter-control]', function () {
        $('#catalog-form').submit();
        $('[form="catalog-form"]').attr('disabled', true);
    });

    $(document).on('submit', '#catalog-form', function () {
        var filter = $('[data-filter]');
        var defaultFields = $('[data-catalog-default]');
        var form = $(this);
        var minPrice = filter.find('[data-filter-price-min]');
        var maxPrice = filter.find('[data-filter-price-max]');

        defaultFields.attr('disabled', true);

        if(minPrice.attr('data-filter-price-min') == minPrice.val()){
            minPrice.attr('disabled', true);
        }

        if(maxPrice.attr('data-filter-price-max') == maxPrice.val()){
            maxPrice.attr('disabled', true);
        }

        /* Make Seo-friendly url for catalog filter when SEO-expert module is used */
        if ($.imcSeoUrl) {
            $.imcSeoUrl.add({
                fields: filter.find('[data-filter-control]:checked'),
                catUrl: filter.attr('data-filter-category'),
                form: form
            });
        }

        /* If url doesn't contain query string use direct url instead of form submit
         * The reason is to prevent question mark output in the end of url
         */
        if(form.serialize() == ''){
            location.assign(form.attr('action'));
            return false;
        }

    });


    /*
     * Remove checked filters
     */
    $(document).on('click', '[data-filter-result]', function (e) {
        e.preventDefault();

        var removeBtn = $(this);
        var filter = $('[data-filter]');
        var fields = '[data-filter-control="brand-' + removeBtn.attr('data-filter-result-value') + '"], [data-filter-control="property-' + removeBtn.attr('data-filter-result-value') + '"]';
        var minPrice, maxPrice;

        //Remove Checkbox Brand and Properties filters
        if (removeBtn.attr('data-filter-result') == 'checkbox') {
            //Trigger submit form on filter via unchecking target element
            filter.find(fields).prop('checked', false).trigger('change');
        }

        //Remove Price filter
        if (removeBtn.attr('data-filter-result') == 'price') {
            minPrice = filter.find('[data-filter-price-min]').attr('data-filter-price-min');
            maxPrice = filter.find('[data-filter-price-max]').attr('data-filter-price-max');
            filter.find('[data-filter-price-min]').val(minPrice).end().find('[data-filter-price-max]').val(maxPrice);
            $('#catalog-form').submit();
        }

    });

});
/********************************** END CATALOG FILTERS **********************************************/

/********************************** PRODUCT **********************************************/
(function($){
  /**
   *
   * @type {{loadCartButton: jQuery.mshProduct.loadCartButton, editCartButtons: jQuery.mshProduct.editCartButtons}}
   */
  $.mshProduct = {
    loadCartButton: function(variant){
      var product = variant.closest('[data-product-scope]');
      var variantId = variant.attr('data-product-variant--id');
      var buttonsForm = product.find('[data-product-button--form]');
      var isVariantInCart = Number(variant.attr('data-product-variant--in-cart'));
      var addToCartButton = product.find('[data-product-button--add]');
      var quantityField = product.find('[data-product-button--quantity]');
      var viewOrderButton = product.find('[data-product-button--view]');

      //Change variant_id for "Add to cart" button
      buttonsForm.attr('data-product-button--variant', variantId);

      //"Add to cart" and "Oder view" buttons toggle
      if(isVariantInCart){
          addToCartButton.add(quantityField).addClass('hidden');
          viewOrderButton.removeClass('hidden');
      }else{
          addToCartButton.add(quantityField).removeClass('hidden');
          viewOrderButton.addClass('hidden');
      }
    },
    editCartButtons: function(variantId, mod){
      var productVariant = $('[data-product-variant--id="'+variantId+'"]');
      var buttonVariantId = $('[data-product-button--variant="'+variantId+'"]').attr('data-product-button--variant');

      if(productVariant.size() > 0){
        // Product has variants
        productVariant.each(function(){
          var productVariantId = $(this).attr('data-product-variant--id');
          //change state in cart for variant
          $(this).attr('data-product-variant--in-cart', mod);
          //change "Add to car" button in all same products on page with same active variant
          if($(this).is(':checked') && (productVariantId === buttonVariantId)){
            $.mshProduct.loadCartButton($(this));
            //$('[data-product-button--variant='+productVariantId+']').each(function(){
            //  $(this).find('[data-product-button-item]').toggleClass('hidden');
            //});
          }
        });
      }else{
        // Product has no variants
        $('[data-product-button--variant='+variantId+']').find('[data-product-button-item]').toggleClass('hidden');
      }

    },
    getVariant: function(selector){
      var variant;
      
      //Linking to product variant depending on element type
      switch(selector.attr('data-product-variant')){
        case 'select' : variant = selector.find('option:checked'); break;
        default : variant = selector;
      }

      return variant;
    }
  }
})(jQuery);


//Add product to cart via Ajax
$(document).on('submit', '[data-product-button--form]', function(e){
  e.preventDefault();

  var addToCartForm = $(this);
  var loaderButton = addToCartForm.find('[data-product-button--loader]');
  var variantId = addToCartForm.attr('data-product-button--variant');
  var requestUrl = addToCartForm.attr('data-product-button--path')+'/'+variantId;
  var modalUrl = addToCartForm.attr('data-product-button--modal-url');
  var modalTpl = addToCartForm.attr('data-product-button--modal-template');

  $.ajax({
    url: requestUrl,
    data: addToCartForm.serialize(),
    type: addToCartForm.attr('method'),
    dataType: 'json',
    beforeSend: function(){
      $.mshButtons.addLoader(loaderButton);
    },
    complete: function(){
      $.mshButtons.removeLoader(loaderButton);
    },
    success: function(){
      $.mlsModal({
        src: modalUrl,
        data: {
          template: modalTpl
        },
        transferData: true
      });

      //Change "Add to cart" button to "Oder view" button inside product
      $.mshProduct.editCartButtons(variantId, 1);
    }
  });
});


//Add kit to cart via Ajax
$(document).on('click', '[data-product-kit]', function(e){
  e.preventDefault();

  var addToCartButton = $(this);
  var kitList = $('[data-product-kit--id="'+addToCartButton.attr('data-product-kit')+'"]');
  var requestUrl = addToCartButton.attr('href');
  var modalUrl = addToCartButton.attr('data-product-kit--modal-url');
  var modalTpl = addToCartButton.attr('data-product-kit--modal-template');

  $.ajax({
    url: requestUrl,
    data: addToCartButton.serialize(),
    type: 'get',
    beforeSend: function(){
       $.mshButtons.addLoader(addToCartButton);
    },
    complete: function(){
       $.mshButtons.removeLoader(addToCartButton);
    },
    success: function(){

      // open cart in modal window
      $.mlsModal({
          src: modalUrl,
          data: {
            template: modalTpl
          },
          transferData: true
      });

      // change "Add to Cart" button
      kitList.toggleClass('hidden');
    }
  });
});

//Change product variants
$(document).on('change', '[data-product-variant]', function(e){
  e.preventDefault();

  var variant = $.mshProduct.getVariant($(this));
  var product = variant.closest('[data-product-scope]');
  var variantId = variant.attr('data-product-variant--id');
  var mainThumb =  product.find('[data-product-photo-main-thumb]').closest('[data-product-photo-thumb]');
  var allThumbs = mainThumb.closest('[data-product-photo-scope]').find('[data-product-photo-thumb]');
  var originPrice = variant.attr("data-product-variant--origin-price");
  //Change "Add to cart" button
  $.mshProduct.loadCartButton(variant);

  //Change variant main photo
  product.find('[data-product-photo]').attr('src', variant.attr('data-product-variant--photo'));
  //Change variant thumb photo
  product.find('[data-product-photo-main-thumb]').attr('src', variant.attr('data-product-variant--thumb'));
  mainThumb.attr('href', variant.attr('data-product-variant--photo-link'));
  allThumbs.removeAttr('data-product-photo-thumb-active');
  mainThumb.attr('data-product-photo-thumb-active', '');
  $.mlsMedia.magnificGalley();
  //add link to large photo
  product.find('[data-product-photo-link]').attr('href', variant.attr('data-product-variant--photo-link'));
  //reinit zoom image plugin
  product.find('[data-zoom-image]').attr('data-zoom-image', variant.attr('data-product-variant--photo-link'));
  $.mlsMedia.zoomImage();

  //Change variant number
  product.find('[data-product-number]').html(variant.attr('data-product-variant--number'));

  //Check variant stock availability, and change button if necessary
  if(variant.attr('data-product-variant--stock') > 0){
    product.find('[data-product-available]').removeClass('hidden');
    product.find('[data-product-unavailable]').addClass('hidden');
  }else{
    product.find('[data-product-available]').addClass('hidden');
    product.find('[data-product-unavailable]').removeClass('hidden');
    //Add variant id to "notify when avaliable" button
    product.find('[data-product-notify]').attr('data-product-notify-variant', variantId);
  }

  //Change variant price
  product.find('[data-product-price--main]').html(variant.attr('data-product-variant--price'));
  product.find('[data-product-price--coins]').html(variant.attr('data-product-variant--coins'));
  if(originPrice > 0) product.find('[data-product-price--origin]').html(originPrice);   
});


/* Open modal window for in stock reminder page */
$(document).on('click', '[data-product-notify]', function(e){
  e.preventDefault();
  
  var notifyLink = $(this);

  $.mlsModal({
    src: $(this).attr('href'),
    data: {
      ProductId: notifyLink.attr('data-product-notify'),
      VariantId: notifyLink.attr('data-product-notify-variant')
    }
  });
});
/********************************** END PRODUCT **********************************************/
/********************************** PRODUCT PHOTO **********************************************/
$(document).on('ready', function () {
    $.mlsMedia.magnificGalley();
});


/* JS linking to product page instead of <a> element by SEO demand */
$(document).on('click', '[data-product-photo-href]', function () {
    var href = $(this).attr('data-product-photo-href');
	location.assign(href);
});


/* Changing main photo after clicking on thumb image */
$(document).on('click', '[data-product-photo-thumb]', function (e) {
    e.preventDefault();

    var currThumb = $(this);
    var context = currThumb.closest('[data-product-photo-scope]');
	
    var allThumbs = '[data-product-photo-thumb]';
    var activeThumb = '[data-product-photo-thumb-active]';
    var activeThumbPosition;
    var currGallery = currThumb.closest('[data-magnific-galley]');

    var largePhotoUrl = currThumb.attr('href');
    var targetLink = context.find('[data-product-photo-link]');
    var targetImg = context.find('[data-product-photo]');
    var zoomedImageLink = context.find('[data-zoom-image]');

    /* Toggle thumbs activity */
    context.find(allThumbs).removeAttr('data-product-photo-thumb-active');
    currThumb.closest(".products__slideshow-item").addClass("active")
            .siblings().removeClass("active");
	currThumb.attr('data-product-photo-thumb-active', '');

    /* Setting link to large photo in the main photo */
    targetLink.attr('href', largePhotoUrl);
    targetImg.attr('src', largePhotoUrl);
    zoomedImageLink.attr('data-zoom-image', largePhotoUrl);

    /* Calculate index of active thumb among all thumbs */
    activeThumbPosition = context.find(allThumbs).index(context.find(activeThumb));

    /* Call magnific gallery and set active image */
    $.mlsMedia.magnificGalley(activeThumbPosition, currGallery);

});
/********************************** END PRODUCT PHOTO **********************************************/
/********************************** END SLIDER RANGE **********************************************/
$(document).on('ready', function () {

    //Selectors init
    var form = $('#catalog-form');
    var fieldScope = $('[data-filter]');
    var fieldMin = 'data-filter-price-min';
    var fieldMax = 'data-filter-price-max';
    var sliderScope = 'data-range-slider';

    //Default valued at start
    var initialMinVal = parseFloat(fieldScope.find('[' + fieldMin + ']').attr(fieldMin));
    var initialMaxVal = parseFloat(fieldScope.find('[' + fieldMax + ']').attr(fieldMax));

    //Values after applying filter
    var curMinVal = parseFloat(fieldScope.find('[' + fieldMin + ']').attr('value'));
    var curMaxVal = parseFloat(fieldScope.find('[' + fieldMax + ']').attr('value'));


    //Setting value into form inputs when slider is moving
    $('[' + sliderScope + ']').slider({
        min: initialMinVal,
        max: initialMaxVal,
        values: [curMinVal, curMaxVal],
        range: true,
        slide: function (event, elem) {
            var instantMinVal = elem.values[0];
            var instantMaxVal = elem.values[1];

            fieldScope.find('[' + fieldMin + ']').val(instantMinVal);
            fieldScope.find('[' + fieldMax + ']').val(instantMaxVal);

        },
        change: function () {
            form.trigger('submit');
            fieldScope.find('[' + fieldMin + '], [' + fieldMax + ']').attr('readOnly', true);
        }
    });


    //Setting value slider ranges when form inputs are changing
    fieldScope.find('[' + fieldMin + '], [' + fieldMax + ']').on('change', function () {
        $('[' + sliderScope + ']').slider('values', [
            fieldScope.find('[' + fieldMin + ']').val(),
            fieldScope.find('[' + fieldMax + ']').val()
        ]);
    });

});
/********************************** END SLIDER RANGE **********************************************/
/********************************** FORM **********************************************/
/* Ajax form submit */
$(document).on('submit', '[data-form-ajax]' , function(e){
	e.preventDefault();

	var target = $(this);

	//frames in which response data will be inputted
	var responseFrame = $('[data-form-ajax="'+$(this).attr('data-form-ajax')+'"]');
	
	$.ajax({
		url: target.attr('action'),
		type: target.attr('method') ? target.attr('method') : 'get',
		data: target.serialize(),
		beforeSend: function(){
			/* Loader visible before ajax response */
			$.mlsAjax.preloaderShow({
				type: 'frame',
				frame: target
			});
		},
		success: function(data){	
			/* Insert response into document */
			$.mlsAjax.loadResponseFrame(data, responseFrame);

			/* Grab extra data from response frame and insert it into remote places */
			$.mlsAjax.transferData(data);
		}
	});

});


/* Quantity change */
$(document).on('click', '[data-form-quantity-control]', function(e){
	e.preventDefault();

	var scope = $(this).closest('[data-form-quantity]');
	//text field element and value
	var textField = scope.find('[data-form-quantity-field]');
	var currentValue = Number(textField.val().replace(',', '.'));
	// "+" and "-" controls
	var currentControl = $(this).attr('data-form-quantity-control');
	//amount on which value should increase or decrease
	var step = scope.find('[data-form-quantity-step]').attr('data-form-quantity-step');
	var stepValue = (Boolean(step) !== false) ? Number(step.replace(',', '.')) : 1;
	//submit form after click. Used in cart to recount total price
	var recountPrice = scope.attr('data-form-quantity-submit');

	//Calculating result value depending on "+" or "-" button was clicked
	if(currentControl == 'minus'){
		currentValue = (currentValue > stepValue) ? currentValue - stepValue : stepValue;
	}
	if(currentControl == 'plus'){
		currentValue = currentValue >= stepValue ? currentValue + stepValue : stepValue;
	}

	//insert result value into DOM
	textField.val(currentValue);

	//recount price in cart by submitting form
	if(typeof recountPrice != 'undefined'){
		$(this).trigger('submit');
	}


});
/********************************** END FORM **********************************************/
/********************************** GALLERY POPUP **********************************************/
$('[data-gallery-image]').magnificPopup({
    delegate: "[data-gallery-image-item]",
    type: "image",
    mainClass: 'gallery-default',
    gallery:{
        enabled: true,
        tCounter: '%curr% of %total%'
    },
    overflowY: "hidden",
    image: {
        titleSrc: 'data-gallery-image-title',
		verticalFit: true
    }
});
/********************************** END GALLERY POPUP **********************************************/
/********************************** COMMENTS **********************************************/
/*
 * Adding new comment
 */
$(document).on('submit', '[data-comments-form]', function (e) {
    e.preventDefault();

    var form = $(this);
    var context = $('[data-comments]');
	var preloadframe = $('.product__reviews_form');
    var formType = form.attr('data-comments-form');
    var currentForm = '[data-comments-form="' + formType + '"]';
    var successMessage = currentForm + ' [data-comments-success]';
    var errorMessageFrame = currentForm + ' [data-comments-error-frame]';
    var errorMessageList = currentForm + ' [data-comments-error-list]';

    /* Request to submit form */
    $.ajax({
        url: form.attr('data-comments-form-url'),
        type: 'post',
        data: form.serialize(),
        dataType: 'json',
        beforeSend: function () {
            /* Show loader before ajax response */
            $.mlsAjax.preloaderShow({
                type: 'frame',
                frame: preloadframe
            });
        },
        success: function (data) {
            if (data.answer == 'error') {
                /* Error Message */
                preloadframe.find(successMessage).addClass('hidden');
                preloadframe.find(errorMessageList).html(data.validation_errors);
                preloadframe.find(errorMessageFrame).removeClass('hidden');
                /* Change captcha image */
                preloadframe.find(currentForm + ' [data-captcha-img]').html(data.cap_image);
            } else {
                /* Request to update comments list*/
                $.ajax({
                    url: form.attr('data-comments-form-list-url'),
                    method: 'post',
                    dataType: 'json',
                    success: function (data) {
                        /* Insert response into document */
                        context.html(data.comments);
                        /* Success Message */
                        preloadframe.find(errorMessageFrame).addClass('hidden');
                        preloadframe.find(successMessage).removeClass('hidden');
						if ($('[data-class=tab_reviews]').hasClass('hidden')){
							$('[data-class=tab_reviews]').removeClass('hidden');
						}
						$('#review_added').removeClass('hidden');
						$('.product__reviews_form').addClass('hidden');
						ratingWidget.init();
						$('.tab__pane').filter('.pane__tab_reviews')
            					.add($('[data-class=tab_reviews]'))
            					.addClass('active')
            					.siblings()
            					.removeClass('active');
                    }
                });
            }
        }
    });
});

/*
 * Reply for existing comment
 */
$(document).on('click', '[data-comments-reply-link]', function (e) {
    e.preventDefault();

    var replyLink = $(this);
    var insertFrame = replyLink.closest('[data-comments-post]').find('[data-comments-form-wrapper]');
    var insertForm = replyLink.closest('[data-comments]').find('[data-reply-form] [data-comments-form="reply"]').clone();
    var formId = replyLink.closest('[data-comments-post]').attr('data-comments-post');

    insertForm.find('[data-comments-success], [data-comments-error-frame]').addClass('hidden');
    insertForm.find('[data-comments-parent]').val(formId);
    insertFrame.toggleClass('hidden').html(insertForm);

});

/*
 * Rate comment
 */
$(document).on('click', '[data-comments-vote-url]', function (e) {
    e.preventDefault();

    var voteLink = $(this);
    var href = voteLink.attr('data-comments-vote-url');
    var commentId = voteLink.closest('[data-comments-post]').attr('data-comments-post');
    var voteValue = voteLink.find('[data-comments-vote-value]');

    $.ajax({
        url: href,
        type: 'post',
        data: {comid: commentId},
        dataType: 'json',
        success: function (data) {
            voteValue.html(data.y_count ? data.y_count : data.n_count);
        }
    });
});
/********************************** END COMMENTS **********************************************/
/********************************** PROFILE **********************************************/
$(document).on('submit', '[data-profile-ajax]' , function(e){
	e.preventDefault();

	var target = $(this);
	var responseFrame = $('[data-profile-ajax~="'+target.attr('data-profile-ajax')+'"]');
	
	$.ajax({
		url: target.attr('action'),
		type: target.attr('method') ? target.attr('method') : 'get',
		data: target.serialize(),
		beforeSend: function(){
			/* Submit button ico loader */
			$.mlsAjax.preloaderShow({
				type: 'frame',
				frame: responseFrame
			});
		},
		success: function(data){

			/* Insert response into document */
			$.mlsAjax.loadResponseFrame(data, responseFrame);

			/* Grab extra data from response frame and insert it into remote places */
			$.mlsAjax.transferData(data);

			var loginingInButton = responseFrame.find('[data-profile-button]');

			/* If authentification was successful show loading button and redierct to current page */
			if(loginingInButton.size() > 0){
				$.mshButtons.addLoader(loginingInButton);
				location.assign(location.href);
			}

		}
	});

});
/********************************** END PROFILE **********************************************/
/********************************** COMPARE **************************************************/
/* 
 * Add to compare button and change total items in compare
 * scope - "add_to"
 */

$(document).on('click', '[data-compare-scope="add_to"] [data-compare-add]', function (e) {
    e.preventDefault();

    var target = $(this);
    var container = $(this).closest('[data-compare-scope]');
    var buttons = container.find('[data-compare-add], [data-compare-open]');
    var linkClass = $('[data-compare-removeclass]').data('compare-removeclass');

    $.ajax({
        url: target.attr('href'),
        type: 'get',
        dataType: 'json',
        beforeSend: function () {
            $.mlsAjax.preloaderShow({
                type: 'text',
                frame: target
            });
        },
        success: function (data) {
            if (data.success) {
                // Switch visibility between add and open buttons
                buttons.toggleClass('hidden');

                // Change total amount of items
                $('[data-compare-total]').html(data.count);

                // Add page link if total items greater then 0
                if (data.count > 0)
                    $('[data-compare-removeclass]').removeClass(linkClass);
            }
        }
    });

});
/********************************** END COMPARE ***********************************************/
/********************************** WISHLIST **************************************************/
/* Focusing text field if relative radio is checked */
$(document).on('click', '[data-wishlist-new-input]', function(){
  var radioNew = $(this).closest('[data-wishlist-new-scope]').find('[data-wishlist-new-radio]');
  $(radioNew).trigger('click');
});

$(document).on('click', '[data-wishlist-new-radio]', function(){
  var inputNew = $(this).closest('[data-wishlist-new-scope]').find('[data-wishlist-new-input]');
  $(inputNew).trigger('focus');
});


/* Ajax Add to wishlist and moving between lists */
$(document).on('submit', '[data-wishlist-ajax]' , function(e){
  e.preventDefault();

  var target = $(this);
  var responseFrame = $('[data-wishlist-ajax]');
  var moveButtonLoader = target.find('[data-button-loader="loader"]').closest('[data-wishlist-move-loader]');
  
  $.ajax({
    url: target.attr('action'),
    type: target.attr('method') ? target.attr('method') : 'get',
    data: target.serialize(),
    beforeSend: function(){
    
      if(target.data('wishlist-ajax') == 'move' && $.mlsWishList.moveListValidation(target)){       
        $.mshButtons.addLoader(moveButtonLoader);
      }else{
        /* Submit Loader */
        $.mlsAjax.preloaderShow({
          type: 'frame',
          frame: responseFrame
        });
      }
      
    },
    success: function(data){
      if(target.data('wishlist-ajax') == 'move' && $.mlsWishList.moveListValidation(target)){
        location.assign(location.href);
		window.location.reload();
      }else{
        /* Insert response into document */
        $.mlsAjax.loadResponseFrame(data, responseFrame);

        /* Grab extra data from response frame and insert it into remote places */
        $.mlsAjax.transferData(data);
      }     
    }
  });

});



/* Ajax Edit */
$(document).on('submit', '[data-wishlist-edit]' , function(e){
  e.preventDefault();

  var target = $(this);
  var scope = $('[data-wishlist-edit]');
  var loaderFrame = $('[data-wishlist-edit]');
  var editButtonLoader = scope.find('[data-wishlist-edit--button]');
  var errorFrame = scope.find('[data-wishlist-edit--error]');

  $.ajax({
    url: target.attr('action'),
    type: target.attr('method') ? target.attr('method') : 'get',
    data: target.serialize(),
    dataType: 'json',
    beforeSend: function(){
    
      $.mlsAjax.preloaderShow({
        type: 'frame',
        frame: loaderFrame
      });
      
    },
    success: function(data){
      if(data.answer == 'error'){
        errorFrame.removeClass('hidden').find('[data-wishlist-edit--error-message]').html(data.data[0]);
      }else{
        errorFrame.addClass('hidden');
        $.mshButtons.addLoader(editButtonLoader);
		window.location.reload();
      }
    }
  });

});
/********************************** END WISHLIST **********************************************/
/********************************** AUTOCOMPLETE **********************************************/
;(function ($) {


  var scope = $('[data-autocomplete="header-search"]');
  var responseFrame = scope.find('[data-autocomplete-frame]');
  var itemsNum = scope.find('[data-autocomplete-product]').size();
  var noItemsFrame = scope.find('[data-autocomplete-noitems]');
  var productsCount;
  var dataLength;
  var productWrapper;

  var appendProducts = function (data) {

    /* Binding search result products json data into DOM vai data-attrs */
    $.each(data, function (index, val) {

      if (index != 'queryString') {
        productWrapper = scope.find('[data-autocomplete-product="' + index + '"]');

        productWrapper.find('[data-autocomplete-product-name]').html(val.name);
        productWrapper.find('[data-autocomplete-product-price]').html(val.price);
        productWrapper.find('[data-autocomplete-product-img]').attr({'src': val.smallImage, 'alt': val.name});
        productWrapper.attr('href', location.origin + '/shop/product/' + val.url);
        setAdditionaPrices(productWrapper.find('[data-autocomplete-product-addition-price]'), val.nextCurrency);
        productWrapper.removeClass('hidden');


      }
    });

    /* Calculate numbers of search results  Minus 1 filters "queryString" extra key */
    dataLength = Object.keys(data).length - 1;

    /* Hiding saved products from previous search results */
    for (var i = itemsNum; i >= dataLength; i--) {
      scope.find('[data-autocomplete-product="' + i + '"]').addClass('hidden');
    }

    return i;
  }

  /* Clone DOM element for additional prices and put there data
  * @addPriceElem - DOM element where price should be places
  * @additionalPrices - array of additional prices
  * */
  var setAdditionaPrices = function (addPriceElem, additionalPrices) {
    $(additionalPrices).each(function (index, addPrice) {
      if(addPriceElem.eq(index).size() > 0){
        addPriceElem.eq(index).html(addPrice);
      }else{
        var clonedAddPriceElem = addPriceElem.eq(0).clone();
        clonedAddPriceElem.html(addPrice);
        addPriceElem.parent().append(clonedAddPriceElem);
      }
    });
  };

  var getAutocompleteData = function (request, response) {

    $.ajax({
      url: scope.attr('data-autocomplete-url'),
      method: 'post',
      data: {
        queryString: request.term
      },
      dataType: 'json',
      beforeSend: function () {
      },
      success: function (data) {

        /*
         * Append products into DOM after success search.
         * Return numver of products
         */
        productsCount = appendProducts(data);

        /* Show "no results" message if no items had been found and hide it in other case */
        productsCount < 0 ? noItemsFrame.removeClass('hidden') : noItemsFrame.addClass('hidden');

        /* Show autocomplete frame after search results */
        responseFrame.removeClass('hidden');

      }
    });

  }


  /* Autocomplete plugin init */
  $('[data-autocomplete-input]', scope).autocomplete({
    source: getAutocompleteData,
    minLength: 3,
    delay: 300
  });

  /*
   * Hide search results after clicking outside input field.
   * Also prevent closing after click inside results frame
   */
  $(document).on('click', function (event) {

    if ($(event.target).closest(responseFrame).size() > 0) {
      event.stopPropagation();
    } else {
      responseFrame.addClass('hidden');
    }

  });

})(jQuery);
/********************************** END AUTOCOMPLETE **********************************************/