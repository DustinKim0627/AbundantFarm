<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<main class="admin-main">
	<section class="admin-sub-main">
		<h1 class="page-title">상품리뷰</h1>

		<section class="detail-container">
	     	<h1 class="d-none">상품리뷰 디테일</h1>
     	
			<div class="title">${r.title}</div>
			<div class="reg-info">
				<span>
					글쓴이: ${r.name}
				</span>
				<ul>
					<li>작성일: <fmt:formatDate pattern="yyyy-MM-dd" value="${r.regDate}" /></li>
					<li>조회수: ${r.hit}</li>
				</ul>
			</div>
			<div class="content">
				${r.content}
			</div>
		</section>

		<div class="admin-button">
			<a href="del?id=${r.id}">
				<input type="submit" value="삭제">
			</a>
			<a href="list">목록</a>
		</div>
	</section>
</main>
