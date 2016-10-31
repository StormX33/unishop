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
            $(".filter__title").on("click", function(e){
                e.preventDefault();
                _openSection($(this));
            });
        }
    }
}());
$(document).ready(function (){
	var container = $(".filter__item").addClass("active");
    if ($(".filter").length){
        accordeon.init();
    }

});


