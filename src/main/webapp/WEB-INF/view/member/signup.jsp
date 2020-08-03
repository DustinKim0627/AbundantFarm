<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/css/reset.css">
<link rel="stylesheet" href="/css/style.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="/js/index.js"></script>

<title>은풍한팜</title>
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
					<li><a href="/community/community.html">커뮤니티</a></li>
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
					</div></section>
		</section>
	</header>

	<main class="main">
		<section class="content-container main-section">
			<div class="path">
				<ol>
					<li><a href="/index.html"> </a></li>
					<li><a href="/member/signup.html">회원가입</a></li>
				</ol>
			</div>

			<header>
				<h1 class="signup-title-font">회원 가입</h1>
				<div>
					<span class="font-color-red">*</span>필수입력사항
				</div>
			</header>

			<table class="signup-table">
				<tr>
					<td>회원구분<span class="font-color-red">*</span></td>
					<td>
						<ul class="division-list">
							<li><input type="radio" name="div">개인회원</li>
							<li><input type="radio" name="div" class="business-radio">사업자회원</li>
						</ul>
					</td>
				</tr>
				<tr class="business-row d-none">
					<td>사업자 번호<span class="font-color-red">*</span></td>
					<td><input type="text"></td>
				</tr>
			</table>

			<section class="member-default-info">
				<h1 class="signup-title-font">기본정보</h1>
				<form>
					<table class="signup-table">
						<tr>
							<td>아이디<span class="font-color-red">*</span></td>
							<td><input type="text"></td>
						</tr>
						<tr>
							<td>비밀번호<span class="font-color-red">*</span></td>
							<td><input type="password"></td>
						</tr>
						<tr>
							<td>비밀번호 확인<span class="font-color-red">*</span></td>
							<td><input type="password"></td>
						</tr>
						<tr>
							<td>이름 <span class="font-color-red">*</span></td>
							<td><input type="text"></td>
						</tr>
						<tr>
							<td>이메일 <span class="font-color-red">*</span></td>
							<td><input type="text"> @ <select>
									<option value="">직접입력</option>
									<option value="@naver.com">naver.com</option>
									<option value="@hanmail.net">hanmail.net</option>
									<option value="@nate.com">nate.com</option>
									<option value="@hotmail.com">hotmail.com</option>
									<option value="@gmail.com">gmail.com</option>
							</select></td>
						</tr>
						<tr>
							<td>주소 <span class="font-color-red">*</span></td>
							<td class="add-row"><input type="text">
								<button>우편번호</button>
								<br> <input type="text"><br> <input
								type="text">나머지주소</td>
						</tr>
						<tr>
							<td>휴대전화 <span class="font-color-red">*</span></td>
							<td class="phone-row"><select name="">
									<option value="010">010</option>
									<option value="011">011</option>
									<option value="016">016</option>
									<option value="017">017</option>
									<option value="019">019</option>
							</select> - <input type="text"> - <input type="text"></td>
						</tr>
						<tr>
							<td>일반전화</td>
							<td class="phone-row"><select name="">
									<option value="02">02</option>
									<option value="031">031</option>
									<option value="032">032</option>
									<option value="033">033</option>
									<option value="041">041</option>
									<option value="042">042</option>
									<option value="043">043</option>
									<option value="044">044</option>
									<option value="051">051</option>
									<option value="052">052</option>
									<option value="053">053</option>
									<option value="054">054</option>
									<option value="055">055</option>
									<option value="061">061</option>
									<option value="062">062</option>
									<option value="063">063</option>
									<option value="064">064</option>
									<option value="0502">0502</option>
									<option value="0503">0503</option>
									<option value="0504">0504</option>
									<option value="0505">0505</option>
									<option value="0506">0506</option>
									<option value="0507">0507</option>
									<option value="070">070</option>
									<option value="010">010</option>
									<option value="011">011</option>
									<option value="016">016</option>
									<option value="017">017</option>
									<option value="018">018</option>
									<option value="019">019</option>
									<option value="0508">0508</option>
							</select> - <input type="text"> - <input type="text"></td>
						</tr>
					</table>
				</form>
			</section>

			<div class="signup-button-container">
				<button class="signup-button">회원가입</button>
			</div>

		</section>
	</main>

	<footer class="footer">

		<button class="up-button d-none"></button>

	</footer>

</body>
</html>