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
				var produt__price_buy = $('.produt__price_buy').html();
							
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
                    overflowY: "hidden",
                    image: {
						markup: '<div class="mfp-lightbox">'+
            					'<div class="mfp-close"></div>'+
								'<div class="mfp-title"></div>'+
            					'<div class="mfp-img"></div>'+
            					'<div class="mfp-produt__price_buy"></div>'+
            					'</div>',
                       titleSrc: function(item){
							return title;
					   }
                    },
			  callbacks: {
    markupParse: function(template, values, item) {
      // optionally apply your own logic - modify "template" element based on data in "values"
	  return template.find('.mfp-produt__price_buy').html(produt__price_buy);
      console.log('Parsing:', template, values, item);
    }
  }
                });

            });
        }
    };

})(jQuery);