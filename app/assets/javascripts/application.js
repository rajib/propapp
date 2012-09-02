// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require twitter/bootstrap
//= require_tree .
//= require jquery.address-1.4.min
//= require handlebars-1.0.0.beta.6


$(function () {
    // fix custom-subnav on scroll
    var $win = $(window),
        $nav = $('.custom-subnav'),
        navTop = $('.custom-subnav').length && $('.custom-subnav').offset().top - 40,
        isFixed = 0

        processScroll()

        $win.on('scroll', processScroll)

        function processScroll() {
            var i, scrollTop = $win.scrollTop()
            if (scrollTop >= navTop && !isFixed) {
                isFixed = 1
                $nav.addClass('custom-subnav-fixed')
            } else if (scrollTop <= navTop && isFixed) {
                isFixed = 0
                $nav.removeClass('custom-subnav-fixed')
            }
        }
});

// props
// $.address.state('/');

// $.address.change(function (e) {
//     // if($.isEmptyObject(e.parameters))
//     // return;

//     $('#loading').slideToggle('fast', function () {
//         $.ajax({
//             url: e.path,
//             dataType: 'html',
//             data: e.parameters,
//             success: function (html) {
// 								$('#YieldContainer').html(html);
//                 $('#loading').slideToggle('fast');
//             }
//         })
//     });
		
// 		$('.custom-subnav ul li ul li a').live('click', function () {
// 		    var href = $(this).attr('href');
// 		    $.address.value(href);
// 		    return false;
// 		});
// });



