<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/css/reset.css">
<link rel="stylesheet" href="/css/style.css">
<link rel="stylesheet" href="/css/detail.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="/js/index.js"></script>
<script src="/js/detail.js"></script>
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
							<li><a href="/member/login.html">로그인</a></li>
							<li><a href="/member/signup.html">회원가입</a></li>
						</ul>
					</nav>
					<nav class="order-menu">
						<h1 class="d-none">상품메뉴</h1>
						<ul>
							<li>관심상품</li>
							<li>장바구니</li>
							<li>주문조회</li>
						</ul>
					</nav>
				</div>
			</section>
			<section class="bottom-header">
				<div class="inner-header">
					<h1 class="logo">
						<a href="/"> <img src="/images/logo.png" alt="로고">
						</a>
					</h1>
					<span class="search-form">
						<form>
							<fieldset>
								<input type="search"> <input type="submit" value="검색">
							</fieldset>
						</form>
					</span>
				</div>
			</section>
			<nav class="main-menu">
				<h1 class="d-none">메뉴</h1>
				<ul>
					<li class="whole-menu">전체메뉴</li>
					<li><a href="/product/list">상품</a></li>
					<li><a href="/community/index">커뮤니티</a></li>
					<li><a href="/community/intro">은풍한 팜</a></li>
				</ul>
			</nav>
			<section class="draw-menu">
				<h1 class="d-none">전체메뉴</h1>
				<div class="inner-draw">
					<div class="draw-list draw-main-menu">
						<div>
							<ul>
								<li>곡물</li>
								<li>쌀</li>
								<li>잡곡</li>
							</ul>
							<ul>
								<li>채소</li>
								<li>배추</li>
								<li>무</li>
							</ul>
							<ul>
								<li>음료</li>
								<li>차</li>
								<li>즙</li>
							</ul>
						</div>
						<div>
							<ul>
								<li>과일</li>
								<li>포도</li>
								<li>딸기</li>
							</ul>
							<ul>
								<li>기타</li>
								<li>아이스크림</li>
							</ul>
						</div>
					</div>
					<div class="draw-list draw-sub-menu">
						<ul>
							<li>은풍한 팜</li>
							<li><a href="/community/intro.html">은풍한 팜 소개</a></li>
							<li><a href="/community/notice.html">공지사항</a></li>
							<li><a href="/community/apply.html">입점신청</a></li>
							<li><a href="/community/qna.html">Q &amp; A</a></li>
							<li><a href="/community/review.html">상품후기</a></li>
						</ul>
					</div>
				</div>
			</section>
		</section>
	</header>
	<main class="main">
		<section class="content-container">
			<h1 class="d-none">상품 디테일</h1>

			<div class="path">
				<ol>
					<li><a href="/index.html"> </a></li>
					<li><a href="/product/list.html">음료</a></li>
					<li><a href="/product/details.html">차 &#183; 즙</a></li>
				</ol>
			</div>

			<section class="detail-info-container">
				<h1 class="d-none">상품 이미지, 정보</h1>
				<section class="product-image">

					<h1 class="d-none">상품이미지</h1>
					<img src="/images/product1.jpg">

				</section>

				<section class="product-explain">

					<h1 class="d-none">상품 설명</h1>

					<dl>
						<dt class="product-dt">${detailInit.name}</dt>
						<dd class="product-dd">${detailInit.detail}</dd>
					</dl>

					<ul>
						<li>원산지<span>${detailInit.originName}</span></li>
						<li>판매가<span class="price font-color-green">\ ${detailInit.price}</span></li>
						<li>배송비<span>${detailInit.deliveryFee}</span></li>
					</ul>

					<%-- <div class="select-product">
						<span>옵션 선택</span> <select name="product" id="">
							<option value="">- [필수] 옵션을 선택해주세요 -</option>

							<c:set var="options" value="${detailInit.option}" />
							<c:forEach var="option" items="options">
							
								<option value="">
									<c:out value="${option}" />
								</option>


							</c:forEach>
						</select>
					</div> --%>

					<!-- <span class="product-info"> 위 옵션선택 박스를 선택하시면 아래에 상품이 추가됩니다.</span> -->

					<form action="" method="post" class="detail-form">
						<table class="current-product">
							<caption class="d-none">추가된 상품</caption>
							<col width="">
							<col width="100">
							<col width="150">

							<thead>
								<th>상품명</th>
								<th>상품수</th>
								<th>가격</th>
							</thead>
							
							<tbody>
								<tr>
									<td style="text-align: center;">${detailInit.name}</td>
																		
									<td>
									<input class="product-count" type="number" name="count" value="1" min="1">
										<button disabled>수량취소</button>
									</td>
									
									<td class="font-color-green">${detailInit.price}</td>
								</tr>
							</tbody>
						</table>

						<span class="total-price">
						 <b>총 상품금액(수량)</b> 
						 <b class="font-color-green">(개)</b> 
						</span>

						<div class="submits">
							<input type="submit" value="바로구매"> 
							<input type="submit" value="장바구니"> 
							<input type="submit" value="관심상품">
						</div>

					</form>

				</section>
			</section>

			<section class="detail-container">
				<h1 class="d-none">상품 상세페이지</h1>

				<ul class="detail-list">
					<li class="clicked">상세정보</li>
					<li>이용후기</li>
					<li>Q &amp; A</li>
					<li>반품/교환정보</li>
				</ul>

				<!-- 판매자 이미지 노출 부분 -->
				<section class="detail-image">
					<h1 class="d-none">상품 상세 이미지</h1>
					<img src="/images/detail-image.jpg" alt="상세이미지">
				</section>



				<section class="detail-reaview">
					<h1 class="section-title">상품후기</h1>
					<div class="write-button">
						<button>글쓰기</button>
					</div>
					<table class="board-table">
						<thead>
							<tr>
								<th class="num-col">번호</th>
								<th>제목</th>
								<th class="reg-col">평점</th>
								<th class="reg-col">작성자</th>
								<th class="reg-col">작성일</th>
								<th class="num-col">조회수</th>
							</tr>
						</thead>

						<tbody class="review-tbody">
							<c:forEach var="reviews" items="${reivewNotice}">
								<tr class="review">
									<td class="notice-id">${reviews.id}</td>
									<td>${reviews.title}</td>	
									
									<c:choose>
										<c:when test="${reviews.rate eq 5 }"><td>★★★★★</td></c:when>
										<c:when test="${reviews.rate eq 4 }"><td>★★★★☆</td></c:when>
										<c:when test="${reviews.rate eq 3 }"><td>★★★☆☆</td></c:when>
										<c:when test="${reviews.rate eq 2 }"><td>★★☆☆☆</td></c:when>
										<c:when test="${reviews.rate eq 1 }"><td>★☆☆☆☆</td></c:when>
									</c:choose>
									
									<td>${reviews.uid}</td>
									<fmt:formatDate var="reviewRegDate" value="${reviews.regDate}" pattern="yyyy-MM-dd"/>
									<td>${reviewRegDate}</td>
									<td>${reviews.hit}</td>
								</tr>
							</c:forEach>
							
						</tbody>
					</table>

					<button class="review-button more-button" data-id="${itemId}">더보기</button>
				</section>

				<section class="detail-reaview">
					<h1 class="section-title">Q &amp; A</h1>
					
					<div class="write-button">
						<button>글쓰기</button>
					</div>
					
					<table class="board-table">

						<thead>
							<tr>
								<th class="num-col">번호</th>
								<th>제목</th>
								<th class="reg-col">작성자</th>
								<th class="reg-col">작성일</th>
								<th class="num-col">조회수</th>
							</tr>
						</thead>

						<tbody class="QnA-tbody">
						
						<c:forEach var="QnANotice" items="${QnANotice}">
							<tr class="qna">
								<td class="notice-id">${QnANotice.id}</td>
								<td>${QnANotice.title}</td>
								<td>${QnANotice.uid}</td>
								<fmt:formatDate var="QnARegDate" value="${QnANotice.regDate}" pattern="yyyy-MM-dd"/>
								<td>${QnARegDate}</td>
								<td>${QnANotice.hit}</td>
							</tr>
							
						</c:forEach>
							
						</tbody>
						
					</table>
					
					<button class="QnA-button more-button" data-id="${itemId}">더보기</button>
					
				</section>

			</section>
		</section>
	</main>

	<footer class="footer">
		<button class="up-button"></button>
	</footer>

</body>

</html>