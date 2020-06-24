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
        .modal-backdrop {
            z-index: 1;
        }

        .nav-link {
            cursor: pointer;
        }

        .btn-secondary{
            margin-top: 10%;
            margin-bottom: 20%;       
        }

        .btn-group{
            margin-top: 10%;
        }
        
    </style>
    
<body>
    <!-- Navigation -->
    <nav class="navbar fixed-top navbar-expand-lg navbar-dark bg-dark fixed-top">
        <div class="container">
            <a class="navbar-brand" href="index.html">메인페이지</a>
            <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse"
                data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false"
                aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarResponsive">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="about.html">국내선수</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="services.html">해외선수</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="contact.html">포메이션 분석</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownPortfolio" data-toggle="dropdown"
                            aria-haspopup="true" aria-expanded="false">
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
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownBlog" data-toggle="dropdown"
                            aria-haspopup="true" aria-expanded="false">
                            칼럼
                        </a>
                        <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownBlog">
                            <a class="dropdown-item" href="blog-home-1.html">국내 칼럼</a>
                            <a class="dropdown-item" href="blog-home-2.html">해외 칼럼</a>
                        </div>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownBlog" data-toggle="dropdown"
                            aria-haspopup="true" aria-expanded="false">
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
                    <li class="nav-item">
                        <a class="nav-link" href="about.html">회원정보</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="about.html">로그아웃</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <!-- Navigation End -->

	<!-- 내 정보 페이지 시작 -->
    <div class="container">
        <div class="btn-group" role="group" aria-label="Basic example">
            <button type="button" class="btn btn-secondary" onclick="location.href='${pageContext.request.contextPath}/myPage/myPageMain.do'">회원정보수정</button>
            <button type="button" class="btn btn-secondary" onclick="location.href='${pageContext.request.contextPath}/myPage/viewMyPosts.do'">내가쓴글보기</button>
        </div>

        <h1>내 정보</h1>

        <form>
            <div class="form-group row">
                <label for="inputEmail3" class="col-sm-2 col-form-label">아이디</label>
                <div class="col-sm-10">
                    <input type="memberId" class="form-control" id="inputId" placeholder="user1" readonly>
                </div>
            </div>
            <div class="form-group row">
                <label for="inputPassword3" class="col-sm-2 col-form-label">비밀번호</label>
                <div class="col-sm-10">
                    <input type="password" class="form-control" id="inputPassword" placeholder="1234">
                </div>
            </div>
            <div class="form-group row">
                <label for="inputEmail3" class="col-sm-2 col-form-label">닉네임</label>
                <div class="col-sm-10">
                    <input type="memberId" class="form-control" id="inputId" placeholder="유저1">
                </div>
            </div>
            <div class="form-group row">
              <div class="col-sm-10">
                <button type="submit" class="btn btn-primary">수정하기</button>
              </div>
            </div>
          </form>
    </div>
</body>

<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>