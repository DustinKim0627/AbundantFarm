<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>은풍한 팜 관리자페이지</title>
    <link rel="stylesheet" href="/css/reset.css">
    <link rel="stylesheet" href="/css/style.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="/js/index.js"></script>
    <script src="/js/seller.js"></script>
</head>
<body>
    <header class="admin-header">
        <h1>
            관리자페이지
            <span>판매자님 반갑습니다.</span>
        </h1>
        <ul>
            <li>
                <a href="/index.html">메인 홈</a>
            </li>
            <li>
                <a href="/admin/admin.html">관리자홈</a>
            </li>
            <li>로그아웃</li>
        </ul>
    </header>
    <div class="admin-body">
        <aside class="aside">
            <ul class="admin-menu">
                <li>
                    <a href="" class="admin-menu-title">상품관리</a>
                    <ul class="admin-draw-menu">
                        <li><a href="/seller/reg.html">상품등록</a></li>
                        <li><a href="/seller/list.html">상품목록</a></li>
                        <li><a href="/seller/qna.html">상품문의</a></li>
                        <li><a href="/seller/review.html">상품후기</a></li>
                    </ul>
                </li>
                <li>
                    <a href="" class="admin-menu-title">매매관리</a>
                    <ul class="admin-draw-menu">
                        <li><a href="">판매량</a></li>
                        <li><a href="">주문현황</a></li>
                    </ul>
                </li>
            </ul>
        </aside>
        <main class="admin-main">
            
        </main>
    </div>
    <footer class="footer">
        
        <button class="up-button"> </button>
    </footer>
</body>
</html>