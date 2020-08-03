<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="/css/reset.css">
<link rel="stylesheet" type="text/css" href="/css/style.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="/ckeditor5/build/ckeditor.js"></script>
<script src="https://ckeditor.com/apps/ckfinder/3.5.0/ckfinder.js"></script>
<script type="module" src="/ckeditor5/build/edit-copy.js"></script>

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
					<li><a href="/farmIntro/index">은풍한 팜</a></li>
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
			<h1 class="d-none">커뮤니티 메인</h1>
			<div class="path">
				<ol>
					<li><a href="/index.html"></a></li>
					<li><a href="/community/index">커뮤니티</a></li>
				</ol>
			</div>
			<section class="community-section">
				<h1 class="d-none">게시판 모음</h1>
				<div>
					<table>
						<col>
						<col class="date-col">

						<tr>
							<td colspan="2"><a href="/community/notice/list">공지사항</a></td>
						</tr>
						<c:forEach var="notice" items="${notice}" varStatus="st">
							<fmt:formatDate var="dateTempParse" pattern="yyyy-MM-dd"
								value="${notice.regDate}" />
							<tr>
								<td><a href="notice/${notice.id } ">${notice.title }</a></td>
								<td>${dateTempParse }</td>
							</tr>
						</c:forEach>
					</table>
				</div>

				<div>
					<table>
						<col>
						<col class="date-col">

						<tr>
							<td colspan="2"><a href="/community/apply/list">입점신청</a></td>
						</tr>
						<c:forEach var="apply" items="${apply}" varStatus="st">
							<fmt:formatDate var="dateTempParse" pattern="yyyy-MM-dd"
								value="${apply.regDate}" />
							<tr>
								<td><a href="apply/${apply.id } ">${apply.title }</a></td>
								<td>${dateTempParse }</td>
							</tr>
						</c:forEach>
					</table>
				</div>

				<div>
					<table>
						<col>
						<col class="date-col">

						<tr>
							<td colspan="2"><a href="/community/qna/list">Q &amp; A</a>
							</td>
						</tr>
						<c:forEach var="qna" items="${qna}" varStatus="st">
							<fmt:formatDate var="dateTempParse" pattern="yyyy-MM-dd"
								value="${qna.regDate}" />
							<tr>
								<td><a href="qna/${qna.id } ">${qna.title }</a></td>
								<td>${dateTempParse }</td>
							</tr>
						</c:forEach>
					</table>
				</div>

				<div>
					<table>
						<col>
						<col class="date-col">

						<tr>
							<td colspan="2"><a href="/community/review/list">상품후기</a></td>
						</tr>
						<c:forEach var="review" items="${review}" varStatus="st">
							<fmt:formatDate var="dateTempParse" pattern="yyyy-MM-dd"
								value="${review.regDate}" />
							<tr>
								<td><a href="review/${review.id } ">${review.title }</a></td>
								<td>${dateTempParse }</td>
							</tr>
						</c:forEach>
					</table>
				</div>
			</section>
		</section>
	</main>
	<footer class="footer">

		<button class="up-button"></button>
	</footer>

</body>
</html>