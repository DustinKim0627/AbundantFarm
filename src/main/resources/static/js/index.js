$(function() {

	var header = $(".header");
	var wholeMenu = header.find(".whole-menu");
	var drawMenu = header.find(".draw-menu");
	var upBtn = $(".up-button");

	var categoryList = $(".category-list li");
	var productList = $(".product-list-container");

	categoryList.click(function() {
		productList.show();
	});

	wholeMenu.hover(function() {
		drawMenu.show();
	}, function() {
		drawMenu.hide();
	});

	drawMenu.hover(function() {
		drawMenu.show();
	}, function() {
		drawMenu.hide();
	});

	$(window).scroll(function() {
		if ($(this).scrollTop() > 100) {
			upBtn.fadeIn(500);
		} else {
			upBtn.fadeOut(500);
		}
	});

	upBtn.click(function(e) {
		e.preventDefault();
		$('html, body').animate({
			scrollTop : 0
		}, 200);
	});
	
	//------------------//
	
	 $(function() {
		var clickedBtn = $(".category-list > li");	// 버튼 정의
//		clickedBtn.find("a").click(function() { // a태그를 찾아 클릭 했을때,
		clickedBtn.click(function() {
			clickedBtn.removeClass("clicked"); // 버튼 속에 'clicked' 클래스를 삭제 한다.
			$(this).addClass("clicked"); // 클릭한 li태그에 'clicked' 클래스를 넣는다. → 클릭되지 않은 li태그는 clicked 클래스 삭제
		})
	})

});