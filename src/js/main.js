$(document).ready(function () {

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
		}
	}
	var Home7 = {
		pagination: {
			el: '.promotions .swiper-container .swiper-pagination',
			type: 'bullets',
			clickable: true,
		}
	}
	var Home8 = {
		pagination: {
			el: '.news-event .swiper-container .swiper-pagination',
			type: 'bullets',
			clickable: true,
		}
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
	$(window).on('resize',function () {
		$('.promotion-item').each(function () {
			$(this).find('.imgbox').height($(this).find('.imgbox').width() / (690 / 390))
		})
	})
});