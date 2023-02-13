<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri= "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 페이지 회원정보</title>
<link rel="shortcut icon" href="img/파피콘.ico" type="image/x-icon">
<link rel="icon" href="img/파피콘.ico" type="image/x-icon">
<link rel="stylesheet" href="./css/member.css">
</head>
<body>

    <header>
        <div class="main-content">
            <ul> 
                <li class="main-res"><a href="memberManagement.do">회원관리</a></li> <!-- o -->
                <li class="main-ge"><a href="reviewManagement.do">고객의 소리</a></li>
                <a  class="main-logo" href="adminMain.jsp"><img src="img/logo.svg"></a> <!-- o -->            
                <li class="main-resrist"><a href="adminReservation.do">예약 수정</a></li> <!-- o -->
                <li class="main-login"><a href="logout.do">로그아웃</a></li><!-- o -->
            </ul>
        </div>
    </header>

	<p class="top-text">회원 관리</p>
    <hr class="hr">
   
        <table align=center>
        
        <tr class="mem"> <td>이름</td> <td>이메일</td> <td>전화번호</td><td>비밀번호</td><td>관리자여부</td></tr>
    </table>
    <table class="list">
        <c:forEach  var="vo1" items="${alist1}"> 
                
                <tr class="li1">
                    
    
                    <td>${vo1.name}</td>
    
                    
                    <td><a href="userInfo.do?email=${vo1.email}">${vo1.email}</a></td>
                     <td>${vo1.passw}</td>
                    <td>${vo1.tel}</td>
                  
                    <td>${vo1.admin}</td>
                </tr>	
        </c:forEach>
    </table>
        <tr> 
            <td align=center colspan=5>
                
            </td>
        </tr>
        
            



    <footer></footer>
    
</body>
</html>