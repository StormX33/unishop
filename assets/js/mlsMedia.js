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
                        tCounter: '%curr% of %total%'
                    },
                    overflowY: "hidden",
                    image: {
                        titleSrc: 'data-magnific-galley-title'
                    }
                });

            });
        }
    };

})(jQuery);