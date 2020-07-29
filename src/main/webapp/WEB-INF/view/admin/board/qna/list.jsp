<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

        <main class="admin-main">
	        <section class="admin-sub-main">
	            <h1 class="page-title">Q &amp; A</h1>
	
	            <span class="board-search">
	                <form name="search" method="POST" action="">
	                    <fieldset>
	                        <select name="f">
	                            <option>제목</option>
	                            <option>내용</option>
	                        </select>
	                        <input type="search" name="q" placeholder="검색어를 입력하세요.">
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