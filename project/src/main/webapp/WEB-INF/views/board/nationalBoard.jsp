<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<fmt:requestEncoding value="utf-8"/> <!-- 인코딩설정 안해주면 한글 깨짐  -->
<jsp:include page="/WEB-INF/views/common/header.jsp">
	<jsp:param value="" name="pageTitle"/>
</jsp:include>

<body>
    <style>
        .search-box{display: inline-block;}
    </style>

    
<br>
<br>
<br>
<div class="container">    
    <table class="table table-striped">
        <thead>
        	<tr>
            	<th>번호</th>
            	<th>제목</th>
            	<th>작성자</th>
            	<th>날짜</th>
            	<th>조회수</th>
        	</tr>    
        </thead>
        <tbody>
        <c:forEach items="${list}" var="b">
        	<tr class="naB_View">
            	<td>${b.boardNo}</td>
            	<td><a href="${pageContext.request.contextPath}/board/boardView.do">${b.boardTitle}</a></td>
            	<td>${b.boardUser}</td>
            	<td>${b.boardDate}</td>
            	<td>${b.boardCount}</td>
        	</tr>
        </c:forEach>
        </tbody>
    </table>

    <hr/>

    <div class="search-box col-md-5">               
        <form action="">
            <div class="input-group mb-3">
                <div class="input-group-prepend">
                    <select class="custom-select" id="inputGroupSelect02">
                        <option selected>필터</option>
                        <option value="1">제목</option>
                        <option value="2">내용</option>
                        <option value="3">닉네임</option>
                    </select>         
                </div>
                <input type="text" class="form-control" aria-label="Search input with dropdown button">
                <div class="input-group-append">
                    <button class="btn btn-outline-success" type="button">찾기</button>
                </div>
            </div>
        </form>
    </div>


    <button type="button" class="btn btn-outline-secondary float-right">글쓰기</button>

    <input type="button" class="btn btn-outline-secondary float-right" onclick="location.href='${pageContext.request.contextPath}/board/boardWrite.do'" value="글쓰기"/>


    <div class="text-center">
        <ul class="pagination justify-content-center">
            <li class="page-item"><a class="page-link text-secondary" href="#">이전</a></li>
            <li class="page-item"><a class="page-link text-secondary" href="#">1</a></li>
            <li class="page-item"><a class="page-link text-secondary" href="#">2</a></li>
            <li class="page-item"><a class="page-link text-secondary" href="#">3</a></li>
            <li class="page-item"><a class="page-link text-secondary" href="#">다음</a></li>
        </ul>
    </div>
</div>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>

<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>