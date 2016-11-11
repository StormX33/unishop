;(function ($) {

    $.mlsMedia = {
        magnificGalley: function (startIndex, outerGallery) {
            startIndex = startIndex || 0;
            outerGallery = outerGallery || $('[data-magnific-galley]');

            outerGallery.each(function () {

                var gallery = $(this);
                var mainImage = gallery.find('[data-magnific-galley-main]');
                var thumbList = gallery.find('[data-magnific-galley-thumb]');
                var imgStartArr = [];
                var imgPreArr;
                var imgShiftArr;
				var title = $('.main-title').html();
				var product_price = $('td.price__buy_content').html();
				var product_butt = $('td.produt__funcs-buttons').html();
							
				if (thumbList.size() > 0) {
                    thumbList.each(function () {
                        var imgSrc = {
                            src: $(this).attr('href')
                        };
                        imgStartArr.push(imgSrc);
                    });

                    imgPreArr = imgStartArr.splice(0, startIndex);
                    imgShiftArr = imgStartArr.concat(imgPreArr);
                }

                mainImage.magnificPopup({
                    items: imgShiftArr,
                    type: "image",
					gallery: {
                        enabled: true,
                        tCounter: '%curr% of %total%',
                    },
					closeMarkup:'<button class="popup-window-close" data-modal-close=""></button>',
                    overflowY: "auto",
					fixedContentPos:true,
					image: {
						markup: '<div class="modal-wrapper">'+
									'<div class="remodal remodal__product remodal-is-initialized remodal-is-opened popup-lightbox">'+
										'<header class="popup_header">'+
											'<div class="mfp-close"></div>'+
											'<div class="popup__header_title">'+
												'<h3 class="popup__header_title-text"></h3>'+
											'</div>'+
										'</header>'+
										'<div class="form__popup_content">'+
											'<div class="mfp-img"></div>'+
										'</div>'+
										'<div class="popup_footer">'+
											'<div class="pull-left">'+
											'</div>'+
											'<div class="pull-right">'+ 
											'</div>'+
										'</div>'+
            						'</div>'+
								'</div>',
                    },
			  		callbacks: {
    					markupParse: function(template, values, item) {
							template.find('.popup__header_title-text').html(title);
	  						template.find('.pull-left').html(product_price);
							template.find('.pull-right').html(product_butt);
							return;
    					},
						resize: function() {
            				var img = this.content.find('img'),
								footer =this.content.find('.popup_footer').height(),
								header =this.content.find('header').height();
							
            				img.css('max-height', (parseFloat(img.css('max-height'))-footer-header)  * 0.8);
        				},
						change: function() {
						this.close();
  }
  					}
                });

            });
        }
    };
})(jQuery);