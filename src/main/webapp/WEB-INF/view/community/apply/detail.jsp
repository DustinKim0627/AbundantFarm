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
		<section class="content-container apply-signup-section">
			<div class="path">
				<ol>
					<li><a href="/index.html"></a></li>
					<li><a href="/community/index">커뮤니티</a></li>
					<li><a href="/community/reg/apply">입점신청</a></li>
				</ol>
			</div>


			<section class="comm-sub-main">
				<h1 class="page-title">입 점 신 청</h1>

				<section class="detail-container">
					<h1 class="d-none">공 지 사 항 디테일</h1>

					<table class="apply-signup-table">
						<tr class="business-row d-none">
							<td>사업자 번호<span class="font-color-red">*</span></td>
							<td><input type="text"></td>
						</tr>
					</table>

					<section class="member-default-info">
						<h1 class="signup-title-font">기본정보</h1>
						<form action="/community/apply/reg" method="POST">
							<table class="apply-signup-table">
								<tr>
									<td>제목<span class="font-color-red">*</span></td>
									<td>${detail.title }</td>
								</tr>
								<tr>
									<td>법인명(단체명)<span class="font-color-red">*</span></td>
									<td>${detail.comName }</td>
								</tr>
								<tr>
									<td>법인/사업자 번호<span class="font-color-red">*</span></td>
									<td>${detail.brn }</td>
								</tr>
								<tr>
									<td>대표자 <span class="font-color-red">*</span></td>
									<td>${detail.repName }</td>
								</tr>
								<tr>
									<td>담당자 <span class="font-color-red">*</span></td>
									<td>${detail.staffName }</td>
								</tr>
								<tr>
									<td>이메일 <span class="font-color-red">*</span></td>
									<td>${detail.email }</td>
								</tr>
								<tr>
									<td>휴대전화 <span class="font-color-red">*</span></td>
									<td class="phone-row">${detail.telephone }</td>
								</tr>
								<tr>
									<td>일반전화</td>
									<td class="phone-row">${detail.phone }</td>
								</tr>
								<tr>
									<td>사진 업로드 <span class="font-color-red"></span></td>
									<td>${detail.files }</td>
								</tr>
								<tr>
									<td>상품 URL <span class="font-color-red"></span></td>
									<td>${detail.sellingUrl }</td>
								</tr>
								<tr>
									<td>내용 <span></span></td>
									<td>${detail.content }</td>
								</tr>
								<tr>
									<td>승인여부 <span></span></td>
									<td class="approve-status">${detail.appDate!=null ? '승인 대기 중' : '승인'}</td>
								</tr>
							</table>
							<div class="admin-button">
								<input type="submit" value="수정"> <a href="list">목록</a>
							</div>
					</section>

				</section>
	</main>






	<!-- ------------footer------------------------------- -->
	<footer class="footer">

		<button class="up-button"></button>
	</footer>

	<!-- <script src="/js/admin/board/notice/reg.js"></script>
<script src="/ckeditor5/build/ckeditor.js"></script>
<script src="https://ckeditor.com/apps/ckfinder/3.5.0/ckfinder.js"></script>
<script type="module" src="/ckeditor5/build/notice-edit-reg.js"></script>
 -->

</body>
</html>