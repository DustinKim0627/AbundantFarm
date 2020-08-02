<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
                        <a href="/community/apply/list">입점신청</a>
                    </li>
                </ol>
            </div>
            
            <h1 class="page-title">입점신청</h1>

            <span class="board-search">
                <form name="search" method="POST" action="">
                    <fieldset>
                        <select name="search-option">
                            <option>제목</option>
                            <option>내용</option>
                            <option>제목+내용</option>
                        </select>
                        <input type="search" placeholder="검색어를 입력하세요.">
                        <input type="submit" value="검색">
                    </fieldset>
                </form>
            </span>

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

                <tbody>
                    <tr>
                        <td>8</td>
                        <td>
                            <a href="detail.html">공지입니다.</a>
                        </td>
                        <td>은</td>
                        <td>2020-06-30</td>
                        <td>150</td>
                    </tr>
                    <tr>
                        <td>7</td>
                        <td>
                            <a href="detail.html">공지입니다.</a>
                        </td>
                        <td>풍</td>
                        <td>2020-06-30</td>
                        <td>150</td>
                    </tr>
                    <tr>
                        <td>6</td>
                        <td>
                            <a href="detail.html">공지입니다.</a>
                        </td>
                        <td>한</td>
                        <td>2020-06-30</td>
                        <td>150</td>
                    </tr>
                    <tr>
                        <td>5</td>
                        <td>
                            <a href="detail.html">공지입니다.</a>
                        </td>
                        <td>F</td>
                        <td>2020-06-30</td>
                        <td>150</td>
                    </tr>
                    <tr>
                        <td>4</td>
                        <td>
                            <a href="detail.html">공지입니다.</a>
                        </td>
                        <td>a</td>
                        <td>2020-06-30</td>
                        <td>150</td>
                    </tr>
                    <tr>
                        <td>3</td>
                        <td>
                            <a href="detail.html">공지입니다.</a>
                        </td>
                        <td>r</td>
                        <td>2020-06-30</td>
                        <td>150</td>
                    </tr>
                    <tr>
                        <td>2</td>
                        <td>
                            <a href="detail.html">공지입니다.</a>
                        </td>
                        <td>m</td>
                        <td>2020-07-31</td>
                        <td>150</td>
                    </tr>
                    <tr>
                        <td>1</td>
                        <td>
                            <a href="detail.html">공지입니다.</a>
                        </td>
                        <td>은풍한Farm</td>
                        <td>2020-06-30</td>
                        <td>150</td>
                    </tr>
                </tbody>
            </table>

            <div class="write-button">
                <button>글쓰기</button>
            </div>

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
        
        <button class="up-button"> </button>
    </footer>

</body>
</html>