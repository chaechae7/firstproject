<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<fmt:requestEncoding value="utf-8"/> <!-- 인코딩설정 안해주면 한글 깨짐  -->
<jsp:include page="/WEB-INF/views/common/header.jsp">
	<jsp:param value="" name="pageTitle"/>
</jsp:include>

<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <title></title>
  </head>
  <style>
    .text-center{
          margin: 2%;
          margin-bottom: 5%;
    }
    .board-title{
        margin: 2%;
        margin-top: 15%;
        margin-bottom: -2%;
    }
    .board-info-left, .board-info-right{
        flex: none;
    }
    .board-info-right{
        margin-left: auto;
    }
    .card-header{
        display: flex;
    }
    .text-left{
        margin-top: 10%;
        margin-bottom: 2%;
    }
    .recommend-button{
        margin-left: 41%;
        margin-right: 45%;
        margin-bottom: 3%;
        width: 150px;       
    }
    textarea.comment-input{ 
        min-height: 80px;
        border: 1px lightgray;
    }
    .card-body{
        text-align: left;
        margin-bottom: -2%;
    }
    .submit-button{
        margin: 2%;
        margin-right: auto;
        display: flex;
    }
    .submit-button-left-space{
        display: flex;
        margin-left: auto;
    }
    .card-comment{
        margin-bottom: 5%;
    }
    .card-re-comment{
        margin-bottom: 3%;
        margin-left: 5%;
    }
    .card{
        margin-top: 5%;
    }
  </style>
  <body>
  

  
    <!-- 원본글 start -->
    <h3 class="board-title">
        <span class="badge badge-primary">${board.categoryName}</span>
        ${board.boardTitle}
    </h3>
    <div class="card text-center">
        <div class="card-header">
            <div class="board-info-left">
                작성자 <strong>${board.boardUser}</strong>
            </div>
            <div class="board-info-right">
                조회수 <strong>${board.boardCount}</strong> 추천 <strong>${board.boardLike}</strong> 비추천 <strong>${board.boardUnlike}</strong> 작성일 ${board.boardDate}
            </div>
        </div>
        <div class="card-body">
            <p class="card-text">
                ${board.boardContents}
            </p>
            <div class="recommend-button">
                <div class="submit-button-left-space"></div>
                <a href="#" class="btn btn-primary">추천</a>
                <a href="#" class="btn btn-danger">비추천</a>
            </div>
        </div>
    </div>
    <!-- 원본글 end -->
    <div class="text-center">
        <h5 class="text-left"><strong>2</strong> 개의 댓글</h5>
        <!-- 댓글블록 start -->
        <div class="card-comment">
            <div class="card-header">
                <div class="board-info-left">
                    작성자 <strong>유저5</strong>
                </div>
                <div class="board-info-right">
                    작성일 2020/06/24
                </div>
            </div>
            <div class="card-body">
                <p class="card-text">
                    만천하의 바이며, 하였으며, 스며들어 소담스러운 타오르고 아름다우냐? 돋고, 내는 거친 바로 현저하게 열매를 황금시대의 노래하며 것이다.
                </p>
            </div>
        </div>
        <!-- 댓글블록 start -->
        <!-- 댓글달기 버튼 -->
        <div class="submit-button">
            <div class="submit-button-left-space"></div>
            <a href="#" class="btn btn-secondary">댓글달기</a>
        </div>
        <!-- 댓글달기 버튼 -->
        <div class="card-comment">
            <div class="card-header">
                <div class="board-info-left">
                    작성자 <strong>유저2</strong>
                </div>
                <div class="board-info-right">
                    작성일 2020/06/24
                </div>
            </div>
            <div class="card-body">
                <p class="card-text">
                    만천하의 바이며, 하였으며, 스며들어 소담스러운 타오르고 아름다우냐? 돋고, 내는 거친 바로 현저하게 열매를 황금시대의 노래하며 것이다.
                </p>
            </div>
        </div>
        <div class="submit-button">
            <div class="submit-button-left-space"></div>
            <a href="#" class="btn btn-secondary">댓글달기</a>
        </div>
        <!-- 대댓글 start -->
        <div class="card-re-comment">
            <div class="card-header">
                <div class="board-info-left">
                    작성자 <strong>유저3</strong>
                </div>
                <div class="board-info-right">
                    작성일 2020/06/25
                </div>
            </div>
            <div class="card-body">
                <p class="card-text">
                    만천하의 바이며, 하였으며, 스며들어 소담스러운 타오르고 아름다우냐? 돋고, 내는 거친 바로 현저하게 열매를 황금시대의 노래하며 것이다.
                </p>
            </div>
        </div>
        <!-- 대댓글 end -->
        <div class="submit-button">
            <div class="submit-button-left-space"></div>
            <a href="#" class="btn btn-secondary">댓글달기</a>
        </div>
        <hr>
        <!-- 댓글입력창 start-->
        <div class="card">    
                <textarea class="comment-input" placeholder="댓글을 입력하세요"></textarea>
        </div>
        <div class="submit-button">
            <div class="submit-button-left-space"></div>
            <a href="#" class="btn btn-secondary">등록</a>
        </div>
        <!-- 댓글입력창 end-->
    </div>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
    <script src="//code.jquery.com/jquery.min.js"></script>
    <!-- 댓글 길이에 따라 자동으로 늘어나는 textarea script -->
    <script>
        $("textarea.comment-input").on('keydown keyup', function () {
            $(this).height(1).height( $(this).prop('scrollHeight')+12 );
        });
    </script>
  </body>
</html>

<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>