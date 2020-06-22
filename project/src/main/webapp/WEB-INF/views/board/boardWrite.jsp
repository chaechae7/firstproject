<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<fmt:requestEncoding value="utf-8"/> <!-- 인코딩설정 안해주면 한글 깨짐  -->
<jsp:include page="/WEB-INF/views/common/header.jsp">
	<jsp:param value="" name="pageTitle"/>
</jsp:include>

<style>
	.boardFrm{
		margin-top: 100px;
	}
</style>

	<div class="boardFrm container">
		
		<form>
		  <div class="form-group">
		    <label for="exampleFormControlInput1">제목</label>
		    <input type="email" class="form-control" id="exampleFormControlInput1" placeholder="제목을 입력하세요.">
		  </div>
		    <div class="form-group">
		    <label for="exampleFormControlFile1">첨부파일 1</label>
		    <input type="file" class="form-control-file" id="exampleFormControlFile1">
		 	</div>
		 	<div class="form-group">
		    <label for="exampleFormControlFile1">첨부파일 2</label>
		    <input type="file" class="form-control-file" id="exampleFormControlFile1">
		 	</div>
		 	<div class="form-group">
		    <label for="exampleFormControlFile1">첨부파일 3</label>
		    <input type="file" class="form-control-file" id="exampleFormControlFile1">
		 	</div>
		  <div class="form-group">
		    <label for="exampleFormControlTextarea1">내용</label>
		    <textarea class="form-control" id="exampleFormControlTextarea1" rows="8"></textarea>
		  </div>
		  	<div class="md-4 offset-8">
				<button type="button" class="btn btn-sm btn-primary" id="btnSave">저장</button>
				<button type="button" class="btn btn-sm btn-primary" id="btnList">취소</button>
			</div>
		</form>		
	</div>






<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>