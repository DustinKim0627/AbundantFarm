<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" type="text/css" href="/css/reset.css">
    <link rel="stylesheet" type="text/css" href="/css/style.css">
    <link rel="stylesheet" href="/ckeditor5/sample/styles.css">
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
        <section class="content-container">
            <div class="path">
                <ol>
                    <li>
                        <a href="/index.html"></a>
                    </li>
                    <li>
                        <a href="/community/index">커뮤니티</a>
                    </li>
                    <li>
                        <a href="/community/qna/list">Q &amp; A</a>
                    </li>
                </ol>
            </div>
            
            <h1 class="page-title">Q &amp; A</h1>

            <section class="admin-main">
		<section class="admin-sub-main">
			<h1 class="page-title">공지사항</h1>
			<section class="writer-container">
				<h1 class="d-none">글쓰기 디테일</h1>
				<div class="title">
	         		<input class="editor-title" type="text" name="title" placeholder="제목을 입력해주세요.">
	         	</div>
				<div class="editor"></div>  
			</section>
	
			<div class="admin-button">
	         	<input class="qna-reg" type="button" value="등록">
	         	<a href="list">목록</a>
	         </div>
		</section>
	</section>

        </section>
    </main>

   
	
    
        

<!-- ------------footer------------------------------- -->
    <footer class="footer">
        
        <button class="up-button"> </button>
    </footer>

<script src="/js/admin/board/notice/reg.js"></script>
<script src="/ckeditor5/build/ckeditor.js"></script>
<script src="https://ckeditor.com/apps/ckfinder/3.5.0/ckfinder.js"></script>
<script type="module" src="/ckeditor5/build/qna-edit-reg.js"></script>

</body>
</html>