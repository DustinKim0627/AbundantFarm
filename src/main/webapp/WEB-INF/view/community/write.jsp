<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>  
    
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" type="text/css" href="/css/reset.css">
    <link rel="stylesheet" type="text/css" href="/css/style.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="/js/index.js"></script>
    <script src="/js/community.js"></script>
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
        <section class="content-container">
            <div class="path">
                <ol>
                    <li>
                        <a href="/index.html"></a>
                    </li>
                    <li>
                        <a href="/community/community.html">커뮤니티</a>
                    </li>
                    <li>
                        <a href="/community/qna.html">Q &amp; A</a>
                    </li>
                    <li>
                        <a href="/community/write.html">Q &amp; A 작성</a>
                    </li>
                </ol>
            </div>

            <h1 class="page-title">Q &amp; A</h1>

            <form action="post">
                <div class="write-container">
                    <table class="write-table">
                        <thead>
                            <th>글쓰기</th>
                        </thead>
                        <tr>
                            <td>
                                <table class="table-content">
                                    <tr>
                                        <td>문의 유형</td>
                                        <td>
                                            <select>
                                                <option value="상품문의"> 상품 문의</option>
                                                <option value="결제문의"> 결제 문의</option>
                                                <option value="배송문의"> 배송 문의</option>
                                                <option value="입점문의"> 입점 문의</option>
                                                <option value="기타문의"> 기타 문의</option>
                                            </select>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>작성자</td>
                                        <td>(로그인후 default된 id) </td>
                                    </tr>
                                    <tr>
                                        <td>제목</td>
                                        <td><input type=text name=title ></td>
                                    </tr>

                                    <tr>
                                        <td>내용</td>
                                        <td><textarea name=content ></textarea></td>
                                    </tr>

                                    <tr>
                                        <td>파일 첨부</td>
                                        <td><input type=file size=10 maxlength=10></td>
                                    </tr>
                                    <tr>
                                        <td>공개여부</td>
                                        <td>
                                            <input type="radio" name="radio" value="공개"> 공개&nbsp;&nbsp; <!-- <br>-->
                                            <input type="radio" name="radio" value="비공개"> 비공개 
                                                <!-- <textarea name="pwd">비번</textarea> -->
                                            
                                        </td>
                                    </tr>
                                </table>

                                <div class="write-button-wrap">
                                    <input type="submit" value="등록">
                                    <input type="submit" value="취소">
                                </div>
                            </td>
                        </tr>
                    </table>
                </div>
            </form>

        </section>
    </main>

    <!-- ------------footer------------------------------- -->
    <footer class="footer">

        <button class="up-button"> </button>
    </footer>

</body>

</html>