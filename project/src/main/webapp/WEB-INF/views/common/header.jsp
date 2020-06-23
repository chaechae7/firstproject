<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<fmt:requestEncoding value="utf-8"/> <!-- 인코딩설정 안해주면 한글 깨짐  -->

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

  <!-- Bootstrap core CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous" type="text/javascript"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"  type="text/javascript"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"  type="text/javascript"></script>
  <!-- summmer note css -->
   <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
	<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script> 
    
 
</head>
<body>
  <!-- Navigation -->
  <nav class="navbar fixed-top navbar-expand-lg navbar-dark bg-dark fixed-top">
    <div class="container">
      <a class="navbar-brand" href="index.html">메인페이지</a>
      <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item">
            <a class="nav-link" href="${pageContext.request.contextPath}/board/nationalBoard.do">국내선수</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="services.html">해외선수</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="contact.html">포메이션 분석</a>
          </li>
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownPortfolio" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
              커뮤니티
            </a>
            <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownPortfolio">
              <a class="dropdown-item" href="portfolio-1-col.html">1 Column Portfolio</a>
              <a class="dropdown-item" href="portfolio-2-col.html">2 Column Portfolio</a>
              <a class="dropdown-item" href="portfolio-3-col.html">3 Column Portfolio</a>
              <a class="dropdown-item" href="portfolio-4-col.html">4 Column Portfolio</a>
              <a class="dropdown-item" href="portfolio-item.html">Single Portfolio Item</a>
            </div>
          </li>
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownBlog" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
              칼럼
            </a>
            <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownBlog">
              <a class="dropdown-item" href="blog-home-1.html">국내 칼럼</a>
              <a class="dropdown-item" href="blog-home-2.html">해외 칼럼</a>
            </div>
          </li>
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownBlog" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
              기타 자료
            </a>
            <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownBlog">
              <a class="dropdown-item" href="full-width.html">Full Width Page</a>
              <a class="dropdown-item" href="sidebar.html">Sidebar Page</a>
              <a class="dropdown-item" href="faq.html">FAQ</a>
              <a class="dropdown-item" href="404.html">404</a>
              <a class="dropdown-item" href="pricing.html">Pricing Table</a>
            </div>
          </li>



	<li>
		<!-- Button trigger modal -->
		<li class="nav-item">
            <a class="nav-link" data-toggle="modal" data-target="#exampleModal">로그인</a>
        </li>
		<!-- Modal -->
		<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		  <div class="modal-dialog">
		    <div class="modal-content">
		      <div class="modal-header">
		        <h5 class="modal-title" id="exampleModalLabel">Login</h5>
		        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
		          <span aria-hidden="true">&times;</span>
		        </button>
		      </div>
		      <div class="modal-body">
		      
				<label for="id">ID</label>
				<div>
					<input type="text" id="user_id" class="form-control" name="user_id" required="required" />
				</div>
				
				<label for="id">PASSWORD</label>
				<div>
					<input type="password" id="user_pwd" class="form-control" name="user_pwd" required="required" />
				</div>			        
		        
		        <div class="form-group row">
                                <div class="col-md-4">
                                    <div class="checkbox">
                                        <label>
                                            <input type="checkbox" name="remember"> Remember Me
                                        </label>
                                    </div>
                                </div>
                            </div>
                             <div class="col-md-6 offset-md-3">
                                <a href="#" class="btn btn-link">
                                    Forgot Your Password?
                                </a>
                            </div>	        
		      </div>
		      <div class="modal-footer">
		        <button type="button" class="btn btn-primary">Login</button>
		        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
		      </div>
		    </div>
		  </div>
		</div>
	</li>
	<!-- Sign Up Modal Start -->
		<li class="nav-item">
            <a class="nav-link" data-toggle="modal" data-target="#exampleModal2">회원가입</a>
        </li>
		<!-- Modal Popup -->
		<div class="modal fade" id="exampleModal2" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		    <div class="modal-dialog">
		        <div class="modal-content">
		            <div class="modal-header">
		                <h5 class="modal-title" id="exampleModalLabel">회원가입</h5>
		                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
		                    <span aria-hidden="true">&times;</span>
		                </button>
                    </div>
                    <!-- 회원가입 폼 시작-->
                    <style>
                        .form-control{width: 70%;}
                    </style>
		            <div class="modal-body">
                        <form action="">
                            <div class="form-group row">
                                <label for="inputId" class="col-sm-4 col-form-label">아이디</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" id="inputId">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="inputPassword" class="col-sm-4 col-form-label">비밀번호</label>
                                <div class="col-sm-10">
                                    <input type="password" class="form-control" id="inputPassword">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="inputPassword-check" class="col-sm-4 col-form-label">비밀번호 확인</label>
                                <div class="col-sm-10">
                                    <input type="password-check" class="form-control" id="inputPassword-check">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="inputNickName" class="col-sm-4 col-form-label">닉네임</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" id="inputNickName">
                                </div>
                            </div>
                        </form>
                    </div>
		            <div class="modal-footer">
		                <button type="button" class="btn btn-success">회원가입</button>
		                <button type="button" class="btn btn-danger" data-dismiss="modal">닫기</button>
		            </div>
		        </div>
		    </div>
		</div>
	</li>
    <!-- Sign Up Modal End -->

        </ul>
      </div>
    </div>
  </nav>