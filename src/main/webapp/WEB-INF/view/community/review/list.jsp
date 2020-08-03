<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="/css/reset.css">
<link rel="stylesheet" type="text/css" href="/css/style.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="/js/index.js"></script>
<script src="/js/community/review/list.js"></script>
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
						<a href="/index.html"> <img src="/images/logo.png" alt="로고">
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
					<li><a href="/product/list.html">상품</a></li>
					<li><a href="/community/index">커뮤니티</a></li>
					<li><a href="/community/intro.html">은풍한 팜</a></li>
				</ul>
			</nav>
			<section class="draw-menu">
				<h1 class="d-none">전체메뉴</h1>
				<div class="inner-draw">
					<div class="draw-list draw-main-menu">
						<div>
							<ul>
								<li class="catg" data-rno="1"><a
									href="/product/category?q=곡물">곡물</a></li>
								<li class="catg" data-rno="7"><a href="/product/list?q=쌀">쌀</a>
								</li>
								<li class="catg" data-rno="8"><a href="/product/list?q=잡곡">잡곡</a>
								</li>
							</ul>
							<ul>
								<li class="catg" data-rno="3"><a
									href="/product/category?q=채소">채소</a></li>
								<li class="catg" data-rno="10"><a href="/product/list?q=배추">배추</a>
								</li>
								<li class="catg" data-rno="11"><a href="/product/list?q=당근">당근</a>
								</li>
							</ul>
							<ul>
								<li class="catg" data-rno="4"><a
									href="/product/category?q=음료">음료</a></li>
								<li class="catg" data-rno="4"><a href="/product/list?q=쥬스">쥬스</a>
								</li>
								<li class="catg" data-rno="4"><a href="/product/list?q=즙">즙</a>
								</li>
							</ul>
						</div>
						<div>
							<ul>
								<li class="catg" data-rno="2"><a
									href="/product/category?q=과일">과일</a></li>
								<li class="catg" data-rno="2"><a href="/product/list?q=포도">포도</a>
								</li>
								<li class="catg" data-rno="13"><a href="/product/list?q=딸기">딸기</a>
								</li>
							</ul>
							<ul>
								<li class="catg" data-rno="5"><a
									href="/product/category?q=기타">기타</a></li>
								<li class="catg" data-rno="19"><a
									href="/product/list?q=아이스크림">아이스크림</a></li>
							</ul>
						</div>
					</div>
			</section>
		</section>
	</header>

	<main class="main">
		<section class="content-container">
			<div class="path">
				<ol>
					<li><a href="/index.html"></a></li>
					<li><a href="/community/community.html">커뮤니티</a></li>
					<li><a href="/community/qna.html">Q &amp; A</a></li>
				</ol>
			</div>

			<h1 class="page-title">상 품 후 기</h1>

			<span class="board-search">
				<form name="search" method="POST" action="">
					<fieldset>
						<select name="search-option">
							<option>제목</option>
							<option>내용</option>
							<option>제목+내용</option>
						</select> <input type="search" placeholder="검색어를 입력하세요."> <input
							type="submit" value="검색">
					</fieldset>
				</form>
			</span>

			<table class="board-table review-table">
				<col width="50">
				<col width="200">
				<col width="">
				<col width="120">
				<col width="120">
				<col width="80">

				<thead>
					<tr>
						<th class="num-col">번호</th>
						<th class="reg-col">상품정보</th>
						<th>제목</th>
						<th class="reg-col">평점</th>
						<th class="reg-col">작성자</th>
						<th class="reg-col">작성일</th>
						<th class="num-col">조회수</th>
					</tr>
				</thead>

				<tbody>
					<c:forEach var="r" items="${review}" varStatus="st">
						<fmt:formatDate var="dateTempParse" pattern="yyyy-MM-dd"
							value="${r.regDate}" />
						<tr>
							<td>${st.count }</td>
							<td><img src="/images/items/${r.image}" alt="리뷰 제품 사진">
							</td>
							<td><a href="${r.id }">${r.title }</a></td>
							<td class="rate"><c:forEach begin="0" end="4" var="i">
									<c:choose>
										<c:when test="${i < r.rate}">
											<img src="/images/color-star-icon.png">
										</c:when>
										<c:otherwise>
											<img src="/images/star-icon.png">
										</c:otherwise>
									</c:choose>
								</c:forEach></td>
							<td>${r.name }</td>
							<td>${dateTempParse }</td>
							<td>${r.hit }</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>

			<div class="pager">
				<span class="btn btn-prev">이전</span>
				<ul class="page-list">
					<li><a href="" class="checked">1</a></li>
					<li><a href="">2</a></li>
				</ul>
				<span class="btn btn-next">다음</span>
			</div>

		</section>
	</main>

	<!-- ------------footer------------------------------- -->
	<footer class="footer">

		<button class="up-button"></button>
	</footer>

</body>
</html>