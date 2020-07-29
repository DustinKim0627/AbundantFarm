<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<main class="admin-main">
	<section class="admin-sub-main">
		<h1 class="page-title">입점신청</h1>

		<section class="detail-container">
	     	<h1 class="d-none">입점신청 디테일</h1>
     	
			<div class="title">${a.title}</div>
			<div class="reg-info">
				<span>
					회사명: ${a.comName}
				</span>
				<ul>
					<li>작성자: ${a.repName}</li>
					<li>작성일: <fmt:formatDate pattern="yyyy-MM-dd" value="${a.regDate}" /></li>
				</ul>
			</div>
			<div class="content">
				<ul>
					<li>작성내용: ${a.content}</li>
					<li>첨부파일: ${a.files}</li>
				</ul>
			</div>
			<div class="apply-check">
				<c:choose>
					<c:when test="${a.appDate eq null}">
						입점을 승인하겠습니까?
						<span class="d-none">${a.id}</span>
						<input type="submit" value="승인" class="approve-btn">
						<input type="submit" value="반려" class="reject-btn">
					</c:when>
					<c:otherwise>						
			            <span>입점승인이 완료되었습니다.</span>
					</c:otherwise>
				</c:choose>
			</div>
		</section>

		<div class="admin-button">
			<a href="del?id=${a.id}">
				<input type="submit" value="삭제">
			</a>
			<a href="list">목록</a>
		</div>
	</section>
</main>

<script src="/js/admin/board/apply/detail.js"></script>