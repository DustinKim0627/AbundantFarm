<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>은풍한 팜 관리자페이지</title>
    <link rel="stylesheet" href="/css/reset.css">
    <link rel="stylesheet" href="/css/style.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="/js/index.js"></script>
    <script src="/js/seller/seller.js"></script>
    <script src="/js/seller/reg.js"></script>
    
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
            <h1 class="d-none">관리자페이지 메뉴</h1>
            <ul class="admin-menu">
                <li>
                    <h2 class="admin-menu-title">
                        상품관리
                    </h2>
                    <ul class="admin-draw-menu">
                        <li><a href="/seller/reg.html">상품등록</a></li>
                        <li><a href="/seller/list.html">상품목록</a></li>
                        <li><a href="/seller/qna.html">상품문의</a></li>
                        <li><a href="/seller/review.html">상품후기</a></li>
                    </ul>
                </li>
                <li>
                    <h2 class="admin-menu-title">매매관리</h2>
                    <ul class="admin-draw-menu">
                        <li><a href="">판매량</a></li>
                        <li><a href="">주문현황</a></li>
                    </ul>
                </li>
            </ul>
        </aside>
        <!--미흡한 부분중하나가 정해진 형식(인트형이면 인트형으로 인풋 테스트에 입력)으로 집어넣게하는거  -->
        <main class="admin-main">
            <section>
            <form action="reg" enctype="multipart/form-data" method="post">
            <input type="hidden" name="sellerId" value="${m.id }">
                <h1 class="page-title">상품 등록</h1>
                <div class="reg-product">
                    <h2>카테고리</h2>
                    <div class="reg-product-detail reg-category">
                        <div class="category-list">
                            <ul class="main-CAT">
                                <li>곡물</li>
                                <li>채소</li>
                                <li>과일</li>
                                <li>음료</li>
                                <li>기타</li>
                            </ul>
                            <ul class="sub-CAT grain d-none"> <!--곡류-->
                                <li>쌀</li>
                                <li>잡곡</li>
                            </ul>
                            <ul class="sub-CAT vege d-none"> <!--채소-->
                                <li>배추</li>
                                <li>무</li>
                                <li>감자</li>
                            </ul>
                            <ul class="sub-CAT fruit d-none"> <!--과일-->
                                <li>사과</li>
                                <li>배</li>
                                <li>딸기</li>
                            </ul>
                            <ul class="sub-CAT bev d-none"><!--음료-->
                                <li>케일주스</li>
                                <li>당근주스</li>
                                <li>포도즙</li>
                            </ul>
                            <ul class="sub-CAT etc d-none"><!--기타 메뉴-->
                                <li>아이스크림</li>
                                <li>꿀</li>
                            </ul>
                        </div>
					</div>
                </div>
                <div class="reg-product">
                    <h2>상품 기본정보</h2>

                    <div class="reg-product-detail">
                        <table>
                        	<tr>
                                <td class="title-col">원산지 </td>
                                <td>
                                    <select class="main-origin" required="required">
                                    <option>선택하세요</option>
                                    <c:forEach var="o" items="${originlist}" varStatus="st" >
                                    	<option value="${o.id}">${o.name }</option>
                                    </c:forEach>
                            		</select>
                            		<select class="sub-origin" name="originId" required="required">
                               			<option value="0">선택하시오</option>
                          			</select>
                                </td>
                            </tr>
                            <tr>
                                <td>상품명</td>
                                <td>
                                    <input type="text" name="name" required="required">
                                </td>
                            </tr>
                             <tr>
                                <td class="title-col">등록명</td>
                                <td>
                                    <input type="text" name="regName" required="required">
                                </td>
                            </tr>
                            <tr>
                                <td>판매가</td>
                                <td>
                                    <input type="number" name="price" required="required">&nbsp;&nbsp;원
                                </td>
                            </tr>
                            <tr>
                                <td>입고수량</td>
                                <td>
                                    <input type="number" name="store-qty" required="required">&nbsp;&nbsp;개
                                </td>
                            <tr>
                                <td>판매기간</td>
                                <td>
                                    <input type="date" name="startDate" required="required">&nbsp;~&nbsp;
                                    <input type="date" name="endDate" required="required">
                                </td>
                            </tr>
                            <tr class="product-tag">
                                <td>상품 검색태그</td>
                                <td>
                                    <input type="text" name="tag">&nbsp;
                                    <span>#곡물,#쌀</span>
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
                <div class="reg-product">
                    <h2>상품 이미지 등록</h2>
                    <div class="reg-product-detail">
                        <table>
                            <tr>
                                <td class="title-col">상품 대표 이미지</td>
                                <td>
                                    <input type="file" name="file" required="required" >
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
                <div class="reg-product">
                    <h2>상품 상세설명</h2>
                    <div class="reg-product-detail">
                    <input type="text" name="detail" value="사과딸기포도배~~">
                       		<div class="editor"><input type="text"></div>
                    </div>
                </div>
                <div class="reg-product">
                    <h2>배송 및 반품</h2>
                    
                    <div class="reg-product-detail">
                        <table>
                            <tr>
                                <td class="title-col">출고지</td>
                                <td>
                                    <input type="text" name="member-address" value="${m.address }" required="required">
                                </td>
                            </tr>
                            <tr>
                                <td class="title-col">배송조건</td>
                                <td>
                                    일반배송
                                </td>
                            </tr>
                            <tr>
                                <td class="title-col">배송비</td>
                                <td>
                                    <input type="number" name="deliveryFee" value="" required="required">
                                    &nbsp;원
                                </td>
                            </tr>
                            <tr>
                                <td>AS 안내</td>
                                <td>
                                    <input type="tel" name="member-phone" value="${m.phone }" required="required"> 
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>

                <div class="reg-product-button">
                    <input type="submit" class="clicked" value="상품등록">
                    <button class="d-none" >임시저장</button>
                    <button>취소</button>
                </div>
                </form>
            </section>
        </main>
    </div>
    <footer class="footer">
        
        <button class="up-button"> </button>
    </footer>
    <script src="/ckeditor5/build/ckeditor.js"></script>
        <script src="https://ckeditor.com/apps/ckfinder/3.5.0/ckfinder.js"></script>
        <script type="module" src="/ckeditor5/build/edit-copy.js"></script>
</body>
</html>