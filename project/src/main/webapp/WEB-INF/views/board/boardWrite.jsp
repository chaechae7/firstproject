<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<fmt:requestEncoding value="utf-8"/> <!-- 인코딩설정 안해주면 한글 깨짐  -->
<jsp:include page="/WEB-INF/views/common/header.jsp">
	<jsp:param value="" name="pageTitle"/>
</jsp:include>

<script>
	$(document).ready(function() {
		$('#summernote').summernote({
			placeholder : '최대 2048자까지 입력할 수 있습니다.',
			minHeight : 400,
			maxHeight : null,
			focus : true,
			lang : 'ko-KR',
			callbacks : {
				onImageUpload : function(files, editor){
					sendUpLoadImgFile(files[0], this);
				}
			}
		});
	
	/*
	* 이미지 파일 업로드
	*/
	/* function uploadSummernoteImageFile(file, editor) {
		data = new FormData();
		data.append("file", file);
		$.ajax({
			data : data,
			type : "POST",
			url : "/uploadSummernoteImageFile",
			contentType : false,
			processData : false,
			success : function(data){
				//항상 업로드된 파일의 url이 있어야 한다.
				$(editor).summernote('insertImage', data.url);
			}
			
		});
		
		
	} */
		
	});
	
	function sendUpLoadImgFile(file, el){
		console.log("이미지 로드 함수");
		var Frmdata = new FormData();
		console.log("이미지 로드 변수 생성");
		Frmdata.append('file',file);
		console.log("이미지 로드 변수 초기화");
		$.ajax({
			data : Frmdata,
			type : 'POST',
			url : '${pageContext.request.contextPath}/board/insertBoardImg.do',
			cache : false,
			contentType : false,
			enctype : 'multipart/form-data',
			processData : false,
			success : function(data) {
				console.log("img up load success");
				
				/*
				console.log("url originalFileName",data[0]);
				console.log("url renamedFileName",data[1]);
				console.log("el", data[1]); 
				*/
				$("#boardImgOri").val(data[0]);
				$("#boardImgRe").val(data[1]);
				$(el).summernote('editor.insertImage', data[2]);
				$('summernote').append('<img src="'+data[2]+'" width = "400", height = "auto" />');
			},
			error : function(x,h,r){
				console.log(x,h,r);
			}
		});
	}
	
	$("div.note-editable").on('drop',function(e){
        for(i=0; i< e.originalEvent.dataTransfer.files.length; i++){
        	uploadSummernoteImageFile(e.originalEvent.dataTransfer.files[i],$("#summernote")[0]);
        }
       e.preventDefault();
  })
	
	
	function boardValidate(){
		/* 게시글 등록 유효성 검사 */
		return true;
	}
</script>
<style>
	.boardFrm{
		margin-top: 100px;
	}
</style>
​
	<div class="boardFrm container">
		<form action="${pageContext.request.contextPath}/board/boardUpload.do" autocomplete="on" method="POST" onsubmit="return boardValidate();" enctype="multipart/form-data">
		  <div class="form-group">
		    <label for="exampleFormControlInput1">제목</label>
		    <input type="text" class="form-control" id="boardTitle" name="boardTitle"  placeholder="제목을 입력하세요." required="required">
		  </div>
		  <div class="form-group">
		    <label for="exampleFormControlInput1">작성자</label>
		    <input type="text" class="form-control" id="nickname" name="nickname">
		  </div>
		  <input type="hidden" id="memberId" name="memberId" value="${board.mmberId}">
		   <div class="form-group">
		    <label for="exampleFormControlSelect1">카테고리 설정</label>
		    <select class="form-control" id="categoryName" name="categoryName" required="required">
		      <option value="국내선수">국내선수</option>
		    </select>
 		 </div>
		  <div class="form-group">
		    <label for="exampleFormControlTextarea1">내용</label>
		    <textarea class="form-control" id="summernote" name ="boardContents" rows="8" required="required"></textarea>
		  </div>	
		  <div class="md-4 offset-10">
			<button type="submit" class="btn btn-outline-success">올리기</button>
			<button type="button" class="btn btn-outline-danger">취소</button>		  
		  </div>
		</form>	
	</div>



<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>