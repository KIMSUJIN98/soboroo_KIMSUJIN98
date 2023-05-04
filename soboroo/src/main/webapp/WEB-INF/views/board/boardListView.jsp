<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<title>soboroo | 자유게시판</title>
	
	<!-- Favicon
	================================================== -->
	<link rel="icon" type="image/x-icon" href="${pageContext.request.contextPath}/resources/images/favicon.png">
	
    <!-- jQuery 라이브러리 -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <!-- 부트스트랩에서 제공하고 있는 스타일 -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <!-- 부트스트랩에서 제공하고 있는 스크립트 -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <style>
        #boardList {
            text-align: center;
        }
        
        #boardList>tbody>tr:hover {
            cursor: pointer;
        }
        
        #pagingArea {
            width: fit-content;
            margin: auto;
        }
        
        #searchForm {
            width: 80%;
            margin: auto;
        }
        
        #searchForm>* {
            float: left;
            margin: 5px;
        }
        
        .select {
            width: 20%;
        }
        
        .text {
            width: 53%;
        }
        
        .searchBtn {
            Width: 20%;
        }


#topMenu {            
        height: 30px; 
        width: 100%; 
}
#topMenu ul li {              
        list-style: none;          
        color: white;             
        float: left;               
        line-height: 30px;         
        vertical-align: middle;     
        text-align: center;       
}
#topMenu .menuLink {                             
        text-decoration:none;                      
        color: rgb(0, 0, 0);                            
        display: block;                           
        width: 100px;                          
        font-size: 12px;                           
        font-weight: bold;                         
        
}
#topMenu .menuLink:hover {           
        color: orange   ;            
        background-color: #ffffff;  
}

    </style>
</head>
<body>
	  <!-- 이쪽에 헤더바 포함할꺼임 -->
    <jsp:include page="../common/header.jsp"/>
<div id="banner-area" class="banner-area" style="background-image:url(https://rabbitstamp.com/_dj/img/sub_banner_img09.jpg)">
                    <div class="banner-text">
                        <div class="container">
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="banner-heading">
                                       
                                    </div>
                                </div><!-- Col end -->
                            </div><!-- Row end -->
                        </div><!-- Container end -->
                    </div><!-- Banner text end -->
                </div><!-- Banner area end -->
    <div class="content">
        <br><br>
        <div class="innerOuter" style="padding:5% 10%;">
            <div align="center">
            <nav id="topMenu" style="margin-bottom: 25px; margin-left: 10%;" >
                <ul>
                        <li><a class="menuLink" href="list.bo">전체</a></li>
                        <li><a class="menuLink" href="list.bo?category=1">교육/어학</a></li>
                        <li><a class="menuLink" href="list.bo?category=2">취업/자격증</a></li>
                        <li><a class="menuLink" href="board?sb_cate=3">여행</a></li>
                        <li><a class="menuLink" href="board?sb_cate=4">스포츠/운동</a></li>
                        <li><a class="menuLink" href="board?sb_cate=5">요리/음식</a></li>
                        <li><a class="menuLink" href="board?sb_cate=6">문화/예술</a></li>
                        <li><a class="menuLink" href="board?sb_cate=7">영화/음악</a></li>
                        <li><a class="menuLink" href="board?sb_cate=8">기타</a></li>
                </ul>
            </nav>
            </div>
        


	            <!-- 로그인후 상태일 경우만 보여지는 글쓰기 버튼-->
           		<a class="btn btn-secondary btn-sm" style="float:right" href="enroll.bo">글쓰기</a>
            <br></br>
            <table id="boardList" class="table table-hover" align="center">
                <thead>
                  <tr>
                    <th>글번호</th>
                    <th>분류</th>
                    <th>제목</th>
                    <th>작성자</th>
                    <th>조회수</th>
                    <th>작성일</th>
                  </tr>
                </thead>
                <tbody>
                <c:forEach var="b" items="${ list }">
	                    <tr>
	                        <td class="bno" name="bno">${ b.boardNo }</td>
	                        <td>${ b.category}</td>
	                        <td>${ b.boardTitle}</td>
	                        <td>${ b.memNo }</td>
	                        <td>${ b.count }</td>
	                        <td>${ b.createDate }</td>
	                    </tr>

                     </c:forEach>  
                </tbody>
            </table>
            <br>
		<script>
          		$(function() {
					$("#boardList>tbody>tr").click(function() {
						location.href='detail.bo?bno=' + $(this).children(".bno").text();
					})
				})
          	</script>
			
            <div id="pagingArea">
                  <ul class="pagination">
                      	  
                      	  <c:choose>
	                      	  <c:when test="${ pi.currentPage eq 1 }">
		                           <li class="page-item disabled"><a class="page-link" href="">Previous</a></li>
		                      </c:when> 
		                      <c:otherwise>
		                           <li class="page-item"><a class="page-link" href="list.bo?cpage=${ pi.currentPage - 1 }">Previous</a></li>
		                      </c:otherwise>
                          </c:choose>
                          
                          
                          
                          <c:forEach var="p" begin="${ pi.startPage }" end="${ pi.endPage }">
                          	<li class="page-item"><a class="page-link" href="list.bo?cpage=${ p }">${ p }</a></li>
                          </c:forEach>
                          
                          
                          <c:choose>
                          	  <c:when test="${pi.currentPage eq pi.maxPage }">
	                          	  <li class="page-item disabled"><a class="page-link" href="">Next</a></li>
	                          </c:when>
	                          <c:otherwise>
	                          	  <li class="page-item"><a class="page-link" href="list.bo?cpage=${ pi.currentPage + 1 }">Next</a></li>
	                          </c:otherwise>
                          </c:choose>
                          
                          
                  </ul>
              </div>
           
            <br clear="both"><br>
            

            <form id="searchForm" action="" method="get" align="center">
                <div class="select">
                    <select class="custom-select" name="condition">
                        <option value="writer">작성자</option>
                        <option value="title">제목</option>
                        <option value="content">내용</option>
                    </select>
                </div>
                <div class="text">
                    <input type="text" class="form-control" name="keyword">
                </div>
                <button type="submit" class="searchBtn btn btn-secondary">검색</button>
            </form>
            <br><br>
        </div>
        <br><br>
    </div>

    <!-- 이쪽에 푸터바 포함할꺼임 -->
    <jsp:include page="../common/footer.jsp"/>
</body>
</html>