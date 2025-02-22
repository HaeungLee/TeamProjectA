<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <header>
 	  <div class="top-header">
            <div class="container">
    	   <%
            String userEmail = (String) session.getAttribute("userEmail");
            if (userEmail != null) {
        %>
                <span>환영합니다, <%= session.getAttribute("username") %>님!</span>
                <a href="./jsp_process/logout_process.jsp">로그아웃</a>
        <%
            } else {
        %>
                <a href="login.html">로그인</a>
                <a href="signup.html">회원가입</a>
        <%
            }
        %>
        <a href="#">고객센터</a>
            </div>
        </div>
      	<div class="main-header">
            <div class="container">
                <img id="imglogo" src="../img/logo2.png" alt="Logo">
                <div class="logo">레시피를 부탁해</div>
                <div class="search-bar">
                    <input type="text" placeholder="검색어를 입력하세요">
                </div>
                <div class="header-icons">
                    <a href="#"><img src="../img/bagg.png" alt="장바구니"></a>
                    <a href="#"><img src="../img/login.png" alt="마이페이지"></a>
                </div>
            </div>
        </div>
        <nav id="gnav">
            <div class="nav-container" style="position: relative;">
                <ul class="nav-list">
                    <li><a href="#" id="korean-cuisine">한식</a>
                    <li><a href="#" id="chinese-cuisine">중식</a></li>
                    <li><a href="#">일식</a></li>
                    <li><a href="#">양식</a></li>
                    <li><a href="yeon/desert.html">디저트</a></li>
                    <li><a href="#">요리사</a></li>
                    <li><a href="#">그 외</a></li>
                </ul>
            </div>
        </nav>     
    </header>