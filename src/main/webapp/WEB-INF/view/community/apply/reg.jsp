<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" type="text/css" href="/css/reset.css">
    <link rel="stylesheet" type="text/css" href="/css/style.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="/js/index.js"></script>
    <!-- <script src="/js/community/apply/reg.js"></script> -->
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
                        <a href="/index.html">
                            <img src="/images/logo.png" alt="로고">
                        </a>
                    </h1>
                    <span class="search-form">
                        <form>
                            <fieldset>
                                <input type="search">
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
                        <a href="/product/list.html">상품</a>
                    </li>
                    <li>
                        <a href="/community/index">커뮤니티</a>
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
                            <li>
                                <a href="/community/intro">은풍한 팜 소개</a>
                            </li>
                            <li>
                                <a href="/community/notice/list">공지사항</a>
                            </li>
                            <li>
                                <a href="/community/apply/list">입점신청</a>
                            </li>
                            <li>
                                <a href="/community/qna/list">Q &amp; A</a>
                            </li>
                            <li>
                                <a href="/community/review/list">상품후기</a>
                            </li>
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
                    <li>
                        <a href="/index.html"></a>
                    </li>
                    <li>
                        <a href="/community/index">커뮤니티</a>
                    </li>
                    <li>
                        <a href="/community/reg/apply">입점신청</a>
                    </li>
                </ol>
            </div>

            <header>
                <div class="apply-signup-title">
                    <div class="signup-title-wrap">
                        <h1 class="page-title">입 점 신 청</h1>
                        <div> 
                            <span class="font-color-red">*</span>필수입력사항
                        </div>
                    </div>
                </div>
            </header>

            <table class="apply-signup-table">
                <tr class="business-row d-none">
                    <td>사업자 번호<span class="font-color-red">*</span></td>
                    <td> 
                        <input type="text">
                    </td>
                </tr>
            </table>

            <section class="member-default-info">
                <h1 class="signup-title-font">기본정보</h1>
                <form action="/community/apply/reg" method="POST">
                    <table class="apply-signup-table">
                        <tr>
                            <td>제목<span class="font-color-red">*</span></td>
                            <td ><input type="text"></td>
                        </tr>
                        <tr>
                            <td>판매상품<span class="font-color-red">*</span></td>
                            <td >
                               <select name="item">
                                    <optgroup label="곡물">
                                    	<option value="7">쌀</option>
                                    	<option value="8">잡곡</option>
                                    </optgroup>
                                    <optgroup label="채소">
                                    	<option value="10">배추</option>
                                    	<option value="11">무</option>
                                    	<option value="12">감자</option>
                                    </optgroup>
                                    <optgroup label="과일">
                                    	<option value="9">사과</option>
                                    	<option value="13">딸기</option>
                                    	<option value="18">배</option>
                                    </optgroup>
                                    <optgroup label="음료">
                                    	<option value="15">케일주스</option>
                                    	<option value="16">당근주스</option>
                                    	<option value="17">포도즙</option>
                                    </optgroup>
                                    <optgroup label="기타">
                                    	<option value="14">꿀</option>
                                    	<option value="19">아이스크림</option>
                                    </optgroup>
                                </select>
                             </td>
                        </tr>
                        <tr>
                            <td >법인명(단체명)<span class="font-color-red">*</span></td>
                            <td ><input name="comName" type="text"></td>
                        </tr>
                        <tr>
                            <td >법인/사업자 번호<span class="font-color-red">*</span></td>
                            <td ><input name="brn" type="text"></td>
                        </tr>
                        <tr>
                            <td >대표자 <span class="font-color-red">*</span></td>
                            <td ><input name="repName" type="text"></td>
                        </tr>
                        <tr>
                            <td >담당자 <span class="font-color-red">*</span></td>
                            <td ><input name="staffName" type="text"></td>
                        </tr>
                        <tr>
                            <td >이메일 <span class="font-color-red">*</span></td>
                            <td >
                                <input name="email" type="email"> 
                            </td>
                        </tr>
                        <tr>
                            <td >휴대전화 <span class="font-color-red">*</span></td>
                            <td class="phone-row">
                                <input type="tel" name="telephone" placeholder=" 예) 010-0000-0000" pattern="[0-9]{3}-[0-9]{4}-[0-9]{4}" required>
                            </td>
                        </tr>
                        <tr>
                            <td >일반전화 </td>
                            <td class="phone-row">
                                <input type="tel" name="phone" placeholder=" 예) 02-0000-0000" pattern="[0-9]{2,3}-[0-9]{3,4}-[0-9]{4}">
                            </td>
                        </tr>
                        <tr>
                            <td >사진 업로드 <span class="font-color-red"></span></td>
                            <td ><input name="files" type="text"> <button value="사진 업로드">사진 업로드</button></td>
                        </tr>
                        <tr>
                            <td >상품 URL <span class="font-color-red"></span></td>
                            <td ><input name="sellingUrl" type="text"></td>
                        </tr>
                        <tr>
                            <td >내용 <span ></span></td>
                            <td ><input name="content" class="font-content-area" type="text" style="width: 700px; height: 200px;"></td>
                        </tr>
                    </table>
		            <div class="admin-button">
		                <input type="submit" value="등록">
		                <a href="list">목록</a>
		            </div>
                </form>
            </section>


        </section>
    </main>

   
	
    
        

<!-- ------------footer------------------------------- -->
    <footer class="footer">
        
        <button class="up-button"> </button>
    </footer>



</body>
</html>