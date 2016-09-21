$(".buy__click_form-input").mask("+38(099) 999-99-99");
;(function($){

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
        titleSrc: 'data-gallery-image-title'
    }
});
/********************************** END GALLERY POPUP **********************************************/