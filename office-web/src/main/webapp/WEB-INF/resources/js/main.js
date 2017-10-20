$(document).ready(function(){


    $('.p2col .span6:even').addClass('no-marin-left');
    
    
    //prettyPhoto
    $('a[data-rel]').each(function() {
        $(this).attr('rel', $(this).data('rel'));
    });
    $("a[rel^='prettyPhoto']").prettyPhoto();
    

    $('.da-thumbs > li, .da-thumbs > article').hoverdir();

    $("[rel^='tooltip']").tooltip('hide');

    $("[rel^='popover']").popover('hide');

    
    prettyPrint();


    $('.sf-sub-indicator').remove();


  $(".latest-blog article").hover(function () {
    	$(this).find("img").stop(true, true).animate({ opacity: 0.7 }, 300);
    }, function() {
    	$(this).find("img").stop(true, true).animate({ opacity: 1 }, 300);
    });


	/*//FOOTER FLICKR
    $('#footer .flickr').jflickrfeed({
		limit: 6,
		qstrings: {
			id: '99771506@N00'
		},
		itemTemplate: '<li>'+
						'<a rel="prettyPhoto[flickr]" href="{{image}}" title="{{title}}">' +
							'<img src="{{image_s}}" alt="{{title}}" />' +
						'</a>' +
					  '</li>'
	}, function(data) {
		$("a[rel^='prettyPhoto']").prettyPhoto();

        $("#footer .flickr li").hover(function () {						 
    	   $(this).find("img").stop(true, true).animate({ opacity: 0.5 }, 800);
        }, function() {
    	   $(this).find("img").stop(true, true).animate({ opacity: 1.0 }, 800);
        });
	});


	//SIDEBAR FLICKR
    $('#sidebar .sidebar-flickr').jflickrfeed({
		limit: 8,
		qstrings: {
			id: '99771506@N00'
		},
		itemTemplate: '<li>'+
						'<a rel="prettyPhoto[flickr]" href="{{image}}" title="{{title}}">' +
							'<img src="{{image_s}}" alt="{{title}}" />' +
						'</a>' +
					  '</li>'
	}, function(data) {
		$("a[rel^='prettyPhoto']").prettyPhoto();

        $("#footer .flickr li").hover(function () {						 
    	   $(this).find("img").stop(true, true).animate({ opacity: 0.5 }, 800);
        }, function() {
    	   $(this).find("img").stop(true, true).animate({ opacity: 1.0 }, 800);
        });
	});
*/

	//FILTRABLE PORTFOLIO
	var $portfolioClone = $(".filtrable").clone();
	$("#filtrable a").on('click', function(e){
		
		$("#filtrable li").removeClass("current");	
		
		var $filterClass = $(this).parent().attr("class");

		if ( $filterClass == "all" ) {
			var $filteredPortfolio = $portfolioClone.find("article");
		} else {
			var $filteredPortfolio = $portfolioClone.find("article[data-type~=" + $filterClass + "]");
		}
		
		$(".filtrable").quicksand( $filteredPortfolio, { 
			duration: 800, 
			easing: 'easeOutQuint' 
		}, function(){
			
            $('.da-thumbs > li, .da-thumbs > article, .da-thumbs > div').hoverdir();
            
            $("a[rel^='prettyPhoto']").prettyPhoto();

		});

		$(this).parent().addClass("current");
        
		e.preventDefault();
	})


                       
});


$(window).load(function() {

	$("#homeslider").flexslider({
		animation: "slide",
		useCSS: false,
		controlNav: false,   
		animationLoop: false,
		smoothHeight: true
	});

});