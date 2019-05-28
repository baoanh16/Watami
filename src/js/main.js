$(document).ready(function () {
	$('body').trigger('click')
	$('[data-bg]').each(function () {
		$(this).addClass('data-bg')
	})
	var moveLanguage = new MappingListener({
		selector: 'header .language-wrapper',
		mobileWrapper: 'header .menu-toggle',
		mobileMethod: 'insertBefore',
		desktopWrapper: 'header .site-select',
		desktopMethod: 'insertAfter',
		breakpoint: 1200,
	}).watch()

	$('header .menu-toggle').on('click', function () {
		$('header .header-nav-wrapper').toggleClass('open')
		if ($('header .header-nav-wrapper').hasClass('open')) {
			$('.overlay').fadeIn(300);
			$('body').toggleClass('overflow-hidden')
		} else {
			$('.overlay').fadeOut(300);
			$('body').removeClass('overflow-hidden')
		}
	})
	$('.overlay').on('click', function () {
		$('header .header-nav-wrapper').removeClass('open')
		$('.overlay').fadeOut(300);
		$('body').removeClass('overflow-hidden')
	})

	$('header .search-toggle').on('click', function () {
		$('header  .searchbox').toggleClass('open')
	})

	var HomeSliderOption = {
		slidesPerView: 2,
		centeredSlides: true,
		spaceBetween: 120,
		loop: true,
		lazy: {
			loadOnTransitionStart: true,
		},
		preloadImages: false,
		watchSlidesVisibility: true,
		breakpoints: {
			1025: {
				slidesPerView: 1,
			}
		},
		speed: 1100,
		autoplay: {
			delay: 3500,
			disableOnInteraction: false,
		}
	}

	var Home3 = {
		pagination: {
			el: '.restaurants .swiper-container .swiper-pagination',
			type: 'bullets',
			clickable: true,
		},
		on: {
			init: function () {
				$('.restaurants .swiper-slide .imgbox').height($('.restaurants .swiper-slide').width() * 390 / 690)
				$('.restaurants .swiper-prev').css({
					"left": $('.restaurants .swiper-slide-active').offset().left - ($(window).outerWidth() / 2 - $('.restaurants .swiper-container').outerWidth() / 2) - 40,
					"top": $('.restaurants .swiper-slide .imgbox').height() / 2
				})
				$('.restaurants .swiper-next').css({
					"right": $('.restaurants .swiper-slide-active').offset().left - ($(window).outerWidth() / 2 - $('.restaurants .swiper-container').outerWidth() / 2) - 40,
					"top": $('.restaurants .swiper-slide .imgbox').height() / 2
				})
			},

			resize: function () {
				$('.restaurants .swiper-slide .imgbox').height($('.restaurants .swiper-slide').width() * 390 / 690)
				$('.restaurants .swiper-prev').css({
					"left": $('.restaurants .swiper-slide-active').offset().left - ($(window).outerWidth() / 2 - $('.restaurants .swiper-container').outerWidth() / 2) - 40,
					"top": $('.restaurants .swiper-slide .imgbox').height() / 2
				})
				$('.restaurants .swiper-next').css({
					"right": $('.restaurants .swiper-slide-active').offset().left - ($(window).outerWidth() / 2 - $('.restaurants .swiper-container').outerWidth() / 2) - 40,
					"top": $('.restaurants .swiper-slide .imgbox').height() / 2
				})
			}
		},
		navigation: {
			prevEl: '.restaurants .swiper-nav .swiper-prev',
			nextEl: '.restaurants .swiper-nav .swiper-next',
		}
	}
	var Home7 = {
		pagination: {
			el: '.promotions .swiper-container .swiper-pagination',
			type: 'bullets',
			clickable: true,
		},
		on: {
			init: function () {
				$('.promotions .swiper-slide .imgbox').height($('.promotions .swiper-slide').width() * 390 / 690)
				$('.promotions .swiper-prev').css({
					"left": $('.promotions .swiper-slide-active').offset().left - ($(window).outerWidth() / 2 - $('.promotions .swiper-container').outerWidth() / 2) - 40,
					"top": $('.promotions .swiper-slide .imgbox').height() / 2
				})
				$('.promotions .swiper-next').css({
					"right": $('.promotions .swiper-slide-active').offset().left - ($(window).outerWidth() / 2 - $('.promotions .swiper-container').outerWidth() / 2) - 40,
					"top": $('.promotions .swiper-slide .imgbox').height() / 2
				})
			},

			resize: function () {
				$('.promotions .swiper-slide .imgbox').height($('.promotions .swiper-slide').width() * 390 / 690)
				$('.promotions .swiper-prev').css({
					"left": $('.promotions .swiper-slide-active').offset().left - ($(window).outerWidth() / 2 - $('.promotions .swiper-container').outerWidth() / 2) - 40,
					"top": $('.promotions .swiper-slide .imgbox').height() / 2
				})
				$('.promotions .swiper-next').css({
					"right": $('.promotions .swiper-slide-active').offset().left - ($(window).outerWidth() / 2 - $('.promotions .swiper-container').outerWidth() / 2) - 40,
					"top": $('.promotions .swiper-slide .imgbox').height() / 2
				})
			}
		},
		navigation: {
			prevEl: '.promotions .swiper-nav .swiper-prev',
			nextEl: '.promotions .swiper-nav .swiper-next',
		}
	}
	var Home8 = {
		pagination: {
			el: '.news-event .swiper-container .swiper-pagination',
			type: 'bullets',
			clickable: true,
		},
		navigation: {
			prevEl: '.news-event .swiper-nav .swiper-prev',
			nextEl: '.news-event .swiper-nav .swiper-next',
		},
		on: {
			init: function () {
				$('.news-event .swiper-slide .imgbox').height($('.news-event .swiper-slide').width() * 390 / 690)
				$('.news-event .swiper-prev').css({
					"left": $('.news-event .swiper-slide-active').offset().left - ($(window).outerWidth() / 2 - $('.news-event .swiper-container').outerWidth() / 2) - 40,
					"top": $('.news-event .swiper-slide .imgbox').height() / 2
				})
				$('.news-event .swiper-next').css({
					"right": $('.news-event .swiper-slide-active').offset().left - ($(window).outerWidth() / 2 - $('.news-event .swiper-container').outerWidth() / 2) - 40,
					"top": $('.news-event .swiper-slide .imgbox').height() / 2
				})
			},

			resize: function () {
				$('.news-event .swiper-slide .imgbox').height($('.news-event .swiper-slide').width() * 390 / 690)
				$('.news-event .swiper-prev').css({
					"left": $('.news-event .swiper-slide-active').offset().left - ($(window).outerWidth() / 2 - $('.news-event .swiper-container').outerWidth() / 2) - 40,
					"top": $('.news-event .swiper-slide .imgbox').height() / 2
				})
				$('.news-event .swiper-next').css({
					"right": $('.news-event .swiper-slide-active').offset().left - ($(window).outerWidth() / 2 - $('.news-event .swiper-container').outerWidth() / 2) - 40,
					"top": $('.news-event .swiper-slide .imgbox').height() / 2
				})
			}
		},
	}
	$.extend(Home3, HomeSliderOption)
	$.extend(Home7, HomeSliderOption)
	$.extend(Home8, HomeSliderOption)
	var Home3Slider = new Swiper('.restaurants .swiper-container', Home3)

	var Home7Slider = new Swiper('.promotions .swiper-container', Home7)

	var Home8Slider = new Swiper('.news-event .swiper-container', Home8)


	var RestarauntSlider = new Swiper('.restaurant-2 .swiper-container', {
		slidesPerView: 1,
		autoplay: {
			delay: 4200,
			disableOnInteraction: false,
		},
		spaceBetween: 20,
		lazy: true,
		speed: 1200,
		preloadImages: false,
		watchSlidesVisibility: true,
		pagination: {
			el: '.restaurant-2 .swiper-container .swiper-pagination',
			type: 'bullets',
			clickable: true,
		}
	})


	$('.promotion-item').each(function () {
		$(this).find('.imgbox').height($(this).find('.imgbox').width() / (690 / 390))
	})
	$(window).on('resize', function () {
		$('.promotion-item').each(function () {
			$(this).find('.imgbox').height($(this).find('.imgbox').width() / (690 / 390))
		})
	})

	if ($('.watami-nav').length) {
		var watamiNavOffset = $('.watami-nav').offset().top;
		watamiNavSticky(watamiNavOffset);
	}

	watamiScrollNav();


	window.onscroll = function () {
		watamiNavSticky(watamiNavOffset);
	}

	// $('.home-1 .video').height(($('.home-1 .video').width() / (1410 / 650)))
	// $('.home-1 video').height(($('.home-1 .video').width() / (1410 / 650)))
	// $(window).on('resize', function () {
	// 	$('.home-1 .video').height(($('.home-1 .video').width() / (1410 / 650)))
	// 	$('.home-1 video').height(($('.home-1 .video').width() / (1410 / 650)))
	// })


	if ($('.home-1 .video').length > 0) {
		playVideo();
	}


	if ($('.home-4 .video video').length > 0) {
		$('.home-4 .video').on('mousenter, mouseover', function () {
			$(this).find('a').fadeIn()
		}).on('mouseout, mouseleave', function () {
			$(this).find('a').fadeOut()
		})
		$('.home-4 .video video, .home-4 .video a').on('click', function (e) {
			e.preventDefault()
			if ($('.home-4 .video a').hasClass('play')) {
				$('.home-4 video').get(0).pause()
				$('.home-4 .video a img').attr('src', '/Data/Sites/1/media/img/video_button.png')
				$('.home-4 .video a').toggleClass('play')
			} else {
				$('.home-4 video').get(0).play()
				$('.home-4 .video a').toggleClass('play')
				$('.home-4 .video a img').attr('src', '/Data/Sites/1/media/img/video_pause.png')
			}
		})
		var isPlayed = false;
		$(window).on('scroll', function () {
			if ($(window).scrollTop() > $('.home-4').offset().top - $('header').height() - $(window).height() && isPlayed == false) {
				$('.home-4 video').get(0).play()
				$('.home-4 .video a img').attr('src', '/Data/Sites/1/media/img/video_pause.png')
				isPlayed = true;
			}
		})
	}

	$('.career-detail .btn-apply').on('click', function (e) {
		e.preventDefault()
		$('.career-detail .form-apply').slideToggle();
	})
	$('#logo-footer').simplyScroll({
		speed: 1,
		frameRate: 30,
	});
});

function playVideo() {
	$('.home-1 .video .ModuleContent').on('mousenter, mouseover', function () {
		$(this).find('a').fadeIn()
	}).on('mouseout, mouseleave', function () {
		$(this).find('a').fadeOut()
	})
	$('.home-1 .video .ModuleContent video, .home-1 .video .ModuleContent a').on('click', function (e) {
		e.preventDefault()
		if ($('.home-1 .video .ModuleContent a').hasClass('play')) {
			$('.home-1 video').get(0).pause()
			$('.home-1 .video a img').attr('src', '/Data/Sites/1/media/img/video_button.png')
			$('.home-1 .video .ModuleContent a').toggleClass('play')
		} else {
			$('.home-1 video').get(0).play()
			$('.home-1 .video .ModuleContent a').toggleClass('play')
			$('.home-1 .video a img').attr('src', '/Data/Sites/1/media/img/video_pause.png')
		}
	})
}


function watamiNavSticky(navOffsetTop) {
	var scrollTop = null,
		$watamiNav = $('.watami-nav');
	scrollTop = $(window).scrollTop() + $('header').outerHeight();
	if (scrollTop >= navOffsetTop) {
		$watamiNav.addClass('active');
	} else {
		$watamiNav.removeClass('active');
	}
}

function watamiScrollNav() {
	var sectionId = 'body';
	if ($(window).outerWidth() >= 1025) {
		$('body').on('click', '.scrollNav > a', function () {
			sectionId = $(this).attr('data-href');
			$('.scrollNav > a').removeClass('active')
			$(this).addClass('active')
			scrollToSection(sectionId);
		});
	} else {
		$('body').on('change', '.selectScrollNav', function () {
			sectionId = $(this).val();
			scrollToSection(sectionId);
		});
	}
}

function scrollToSection(sectionId) {
	var offsetTop = $(sectionId).offset().top - $('header').outerHeight() - $('.watami-nav').outerHeight();
	$('html, body').animate({
		scrollTop: offsetTop
	}, 500);
}
