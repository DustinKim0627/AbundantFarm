<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" type="text/css" href="/css/reset.css">
    <link rel="stylesheet" type="text/css" href="/css/style.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="/js/index.js"></script>
    <title>은풍한 팜</title>
</head>
<body>
    <header class="header">
        <h1 class="d-none">은풍한 Farm</h1>
        <section>
            <h1 class="d-none">헤더</h1>
            <section class="top-header">
                <h1 class="d-none">상단헤더</h1>
                <div class="inner-header">
                    <nav class="util-menu">
                        <h1 class="d-none">유틸메뉴</h1>
                        <ul>
                            <li>사이트맵</li>
                            <li>즐겨찾기</li>
                        </ul>
                    </nav>
                    <nav class="member-menu">
                        <h1 class="d-none">멤버메뉴</h1>
                        <ul>
                            <li>
                                <a href="/member/login.html">로그인</a>                                
                            </li>
                            <li>
                                <a href="/member/signup.html">회원가입</a>
                            </li>
                            <li>
                                <a href="/member/mypage.html">마이페이지</a>
                            </li>
                        </ul>
                    </nav>
                    <nav class="order-menu">
                        <h1 class="d-none">상품메뉴</h1>
                        <ul>
                            <li>관심상품</li>
                            <li>
                                <a href="/user/cart.html">장바구니</a>
                            </li>
                            <li>
                                <a href="/user/order.html">주문조회</a>
                            </li>
                        </ul>
                    </nav>
                </div>
            </section>
            <section class="bottom-header">
                <div class="inner-header">
                    <h1 class="logo">
                        <a href="/">
                            <img src="/images/logo.png" alt="로고">
                        </a>
                    </h1>
                    <span class="search-form">
                        <form name="search" action="/product/list">
                            <fieldset name="f">
                                <input type="search" name="q" value="" placeholder="상품 이름을 입력하세요.">
								<input type="submit" value="검색">
                            </fieldset>
                        </form>
                    </span>
                </div>
            </section>
            <nav class="main-menu">
                <h1 class="d-none">메뉴</h1>
                <ul>
                    <li class="whole-menu">전체메뉴</li>
                    <li>
                        <a href="/product/list">상품</a>
                    </li>
                    <li>
                        <a href="/community/community.html">커뮤니티</a>
                    </li>
                    <li>
                        <a href="/community/intro.html">은풍한 팜</a>
                    </li>
                </ul>
            </nav>
            <section class="draw-menu">
                <h1 class="d-none">전체메뉴</h1>
                <div class="inner-draw">
                    <div class="draw-list draw-main-menu">
                        <div>
                            <ul>
                                <li class="catg" data-rno="1">
                                	<a href="/product/category?q=곡물">곡물</a>
                                </li>
                                <li class="catg" data-rno="7">
                                	<a href="/product/list?q=쌀">쌀</a>
                                </li>
                                <li class="catg" data-rno="8">
                                	<a href="/product/list?q=잡곡">잡곡</a>
                                </li>
                            </ul>
                            <ul>
                                <li class="catg" data-rno="3">
                                	<a href="/product/category?q=채소">채소</a>
                                </li>
                                <li class="catg" data-rno="10">
                                	<a href="/product/list?q=배추">배추</a>
                                </li>
                                <li class="catg" data-rno="11">
                                	<a href="/product/list?q=당근">당근</a>
                                </li>
                            </ul>
                            <ul>
                                <li class="catg" data-rno="4">
                                	<a href="/product/category?q=음료">음료</a>
                                </li>
                                <li class="catg" data-rno="4">
                                	<a href="/product/list?q=쥬스">쥬스</a>
                                </li>
                                <li class="catg" data-rno="4">
                                	<a href="/product/list?q=즙">즙</a>
                                </li>
                            </ul>
                        </div>
                        <div>
                            <ul>
                                <li class="catg" data-rno="2">
                                	<a href="/product/category?q=과일">과일</a>
                                </li>
                                <li class="catg" data-rno="2">
                                	<a href="/product/list?q=포도">포도</a>
                                </li>
                                <li class="catg" data-rno="13">
                                	<a href="/product/list?q=딸기">딸기</a>
                                </li>
                            </ul>
                            <ul>
                                <li class="catg" data-rno="5">
                                	<a href="/product/category?q=기타">기타</a>
                                </li>
                                <li class="catg" data-rno="19">
                                	<a href="/product/list?q=아이스크림">아이스크림</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="draw-list draw-sub-menu">
                        <ul>
                            <li>은풍한 팜</li>
                            <li>
                                <a href="/community/intro.html">은풍한 팜 소개</a>
                            </li>
                            <li>
                                <a href="/community/notice.html">공지사항</a>
                            </li>
                            <li>
                                <a href="/community/apply.html">입점신청</a>
                            </li>
                            <li>
                                <a href="/community/qna.html">Q &amp; A</a>
                            </li>
                            <li>
                                <a href="/community/review.html">상품후기</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </section>
        </section>
    </header>
    <main class="main">
        <section>
            <h1 class="d-none">메인</h1>
            <section class="visual">
                <h1 class="d-none">메인이미지</h1>            
                <img src="images/main.jpg" alt="메인이미지">
            </section>

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
	                 <a href="/product/details/${item.id}">
	                     <p>
	                         <img src="images/product1.jpg">
	                     </p>
	                     <p class="product-detail">
	                         <span class="product-title">${item.name }</span>
	                         <span class="product-price">19,800원</span>
	                         <span>자연산 / 전남 해남 / 300g, 1200g</span>
	                     </p>
	                 </a>
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
	                    <a href="/product/details/${reviews.itemId}"><li>
	                        <p><img src="images/product1.jpg"></p>
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
	                    </li></a>
	               </c:forEach>
                </ul>
            </section>
        </section>
    </main>
    <footer class="footer">
        
        <button class="up-button"> </button>
    </footer>
    
</body>
</html>