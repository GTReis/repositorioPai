var loadImages;
$(document).ready(function(){
    $('.lazy-img img').on('load',function(){
        $(this).addClass('loaded');
    });
    $(this).on('scroll',function(){
        loadImages();
    });
    (loadImages = function(){
        $.each($('.lazy-img'), function(){
            var block = $(this);
            var image = block.find('img');

            if(isOnScreen(block)){
                var url = image.data('url');

                if(image.attr('src') != url){
                    image.attr('src',url);
                }
            }
        });
    })();
});
function isOnScreen(element){
    var win = $(window);

    var screenTop = win.scrollTop();
    var screenBottom = screenTop + win.height();

    var elementTop = element.offset().top;
    var elementBottom = elementTop + element.height();

    return elementBottom > screenTop && elementTop < screenBottom;
}

(function($, document, window){
	
	$(document).ready(function(){

		// Cloning main navigation for mobile menu
		$(".mobile-navigation").append($(".main-navigation .menu").clone());

		// Mobile menu toggle 
		$(".toggle-menu").click(function(){
			$(".mobile-navigation").slideToggle();
		});

		$(".home-slider").flexslider({
			animation: "fade",
			controlNav: true,
			directionNav: false,
			pauseOnHover: true
		});

		$(".login-button").on("click",function(){
			$(".overlay").fadeIn();
			$(".auth-popup").toggleClass("active");
		});

		$(".close, .overlay").on("click",function(){
			$(".overlay").fadeOut();
			$(".popup").toggleClass("active");
		});

		initLightbox({
	    	selector : '.product-images img',
	    	overlay: true,
	    	closeButton: true,
	    	arrow: true
	    });


		$(document).keyup(function(e) {
			if( $(".popup").hasClass("active")){
		  		if (e.keyCode === 27) {
		  			$(".overlay").fadeOut();
					$(".popup").toggleClass("active");
		  		}   
			}
		});
	});

	$(window).load(function(){

	});

})(jQuery, document, window);