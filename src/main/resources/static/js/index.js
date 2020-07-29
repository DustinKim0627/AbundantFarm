$(function(){

    var header = $(".header");
    var wholeMenu = header.find(".whole-menu");
    var drawMenu = header.find(".draw-menu");
    var upBtn = $(".up-button");

    var categoryList = $(".category-list li");
    var productList = $(".product-list-container");

    categoryList.click(function(){
        productList.show();
    });

    wholeMenu.hover(
        function() {
            drawMenu.show();
        }, function() {
            drawMenu.hide();
        }
    );

    drawMenu.hover(
        function() {
            drawMenu.show();
        }, function() {
            drawMenu.hide();
        }
    );

    

    $(window).scroll(function () {
        if ($(this).scrollTop() > 100) {
            upBtn.fadeIn(500);
        } else {
            upBtn.fadeOut(500);
        }
    });

    upBtn.click(function (e) {
        e.preventDefault();
        $('html, body').animate({scrollTop: 0}, 200);
    });
    
});