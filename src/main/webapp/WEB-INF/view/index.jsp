<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    

    <main class="main">
        <section>
            <h1 class="d-none">메인</h1>
            <div class="slider">
		     	<div class="slide showing"></div>
		     	<div class="slide"></div>
				<button type="button" class="left slide-btn"></button>
				<button type="button" class="right slide-btn"></button>
		    </div>

            <section class="content-container main-product">
                <h1 class="d-none">판매 상품</h1>
                <ul class="category-list">
                    <li class="clicked">곡물</li>
                    <li>채소</li>
                    <li>음료</li>
                    <li>기타</li>
                </ul>

                <ul class="product-list">
	                <li>
	                    <p>
	                        <img src="images/product1.jpg">
	                    </p>
	                    <p class="product-detail">
	                        <span class="product-title">더채소 모심청 짜먹는 맥문동 배도라지청 스틱 15포</span>
	                        <span class="product-price">19,800원</span>
	                        <span>자연산 / 전남 해남 / 300g, 1200g</span>
	                    </p>
	                </li>
	                <li>
	                    <p>
	                        <img src="images/product1.jpg">
	                    </p>
	                    <p class="product-detail">
	                        <span class="product-title">더채소 모심청 짜먹는 맥문동 배도라지청 스틱 15포</span>
	                        <span class="product-price">19,800원</span>
	                        <span>자연산 / 전남 해남 / 300g, 1200g</span>
	                    </p>
	                </li>
	                <li>
	                    <p>
	                        <img src="images/product1.jpg">
	                    </p>
	                    <p class="product-detail">
	                        <span class="product-title">더채소 모심청 짜먹는 맥문동 배도라지청 스틱 15포</span>
	                        <span class="product-price">19,800원</span>
	                        <span>자연산 / 전남 해남 / 300g, 1200g</span>
	                    </p>
	                </li>
                </ul>
            </section>

            <section class="content-container current">
                <h1 class="d-none">시세 정보</h1>
                <div>
                    <span>
                        <h2 class="section-title">도매 가격(중도매인 판매가격)</h2>
                        <span>상품,원</span>
                    </span>
                    <img src="images/current1.jpg">
                </div>
                <div>
                    <span>
                        <h2 class="section-title">소매 가격</h2>
                        <span>상품,원</span>
                    </span>
                    <img src="images/current2.jpg">
                </div>
            </section>
            <section class="content-container review">
                <h1 class="section-title">상품후기</h1>
                <ul>
                	<c:forEach var="reviews" items="${reviews}">
                	
                	<a href = /product/details/${reviews.itemId}/>
                		
	                        <p><div style="min-width: 250px; min-heigth:300px;">
	                        	<img style="width: 250px; heigth:250px;" src="images/items/${reviews.image}"></div>
	                        </p>
	                        
	                        <p class="review-text">
	                            <span class="review-product-title">상품명: ${reviews.productName}</span>
	                            <span class="review-title">${reviews.content } (${reviews.name })</span>
	                            <c:choose>
									<c:when test="${reviews.rate eq 5 }"><td>★★★★★</td></c:when>
									<c:when test="${reviews.rate eq 4 }"><td>★★★★☆</td></c:when>
									<c:when test="${reviews.rate eq 3 }"><td>★★★☆☆</td></c:when>
									<c:when test="${reviews.rate eq 2 }"><td>★★☆☆☆</td></c:when>
									<c:when test="${reviews.rate eq 1 }"><td>★☆☆☆☆</td></c:when>
								</c:choose>
	                        </p>
	                    </li><!--</a>-->
	               </c:forEach>
                </ul>
            </section>
        </section>
    </main>
 <script src="/js/slide.js"></script>