<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <!DOCTYPE html>
    <html>

    <head>
      <meta charset="UTF-8">
      <title>Insert title here</title>
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
      </style>
    </head>

    <body>
        <jsp:include page="../common/header.jsp" />
      <div class="body-inner">


        
        <!--     <div id="banner-area" class="banner-area" style="background-image:url(images/banner/banner1.jpg)"> -->
          <div id="banner-area" class="banner-area" 
          style="background : url('resources/images/bbb.png')"; 
          background-repeat: no-repeat;>
          <div class="banner-text">
            <div class="container">
              <div class="row">
                <div class="col-lg-12">
                  <div class="banner-heading">
                    <h1 class="banner-title">마이페이지</h1>
                  </div>
                </div><!-- Col end -->
              </div><!-- Row end -->
            </div><!-- Container end -->
          </div><!-- Banner text end -->
        </div><!-- Banner area end -->

        <section id="main-container" class="main-container">
          <div class="container">
            <div class="row">

              <div class="col-lg-4 order-1 order-lg-0">

                <div class="sidebar sidebar-left">


                  <div class="widget recent-posts">
                    <h3 class="widget-title">최근 조회한 소모임</h3>
                    <ul class="list-unstyled">
                      <li class="d-flex align-items-center">
                        <div class="posts-thumb">
                          <a href="#"><img loading="lazy" alt="img" src="${pageContext.request.contextPath}/resources/images/news/news1.jpg"></a>
                        </div>
                        <div class="post-info">
                          <h4 class="entry-title">
                            <a href="#">광진구에서 풋살해요!</a>
                          </h4>
                        </div>
                      </li><!-- 1st post end-->

                      <li class="d-flex align-items-center">
                        <div class="posts-thumb">
                          <a href="#"><img loading="lazy" alt="img" src="${pageContext.request.contextPath}/resources/images/news/news2.jpg"></a>
                        </div>
                        <div class="post-info">
                          <h4 class="entry-title">
                            <a href="#">안양에서 독서모임 구합니다~</a>
                          </h4>
                        </div>
                      </li><!-- 2nd post end-->

                      <li class="d-flex align-items-center">
                        <div class="posts-thumb">
                          <a href="#"><img loading="lazy" alt="img" src="${pageContext.request.contextPath}/resources/images/news/news3.jpg"></a>
                        </div>
                        <div class="post-info">
                          <h4 class="entry-title">
                            <a href="#">강남에서 독서모임 하실 분?</a>
                          </h4>
                        </div>
                      </li><!-- 3rd post end-->

                    </ul>

                  </div><!-- Recent post end -->





                </div><!-- Sidebar end -->
              </div><!-- Sidebar Col end -->

              <div class="col-lg-8 mb-5 mb-lg-0 order-0 order-lg-1">

                <div class="post" id="myGroup">

                  <div class="post-body">
                    <div class="entry-header">
                      <h2 class="entry-title">
                        작성한 커뮤니티 게시글
                      </h2>
                    </div><!-- header end -->

                    <div class="entry-content">
                      <div class="content">
                        <!-- <br><br> -->
                        <div class="innerOuter">
                          <br>
                          <table id="boardList" class="table table-hover" align="center">
                            <thead>
                              <tr>
                                <th>글번호</th>
                                <th>제목</th>
                                <th>조회수</th>
                                <th>작성일</th>
                              </tr>
                            </thead>
                           <tbody align="center">
	                            <c:choose>
	                            	<c:when test="${empty list }">
	                            		<tr>
	                            			<td colspan="4" align="center" style="pointer-events: none;">작성한 게시글이 없습니다.</td>
	                            		</tr>
	                            	</c:when>
	                            	<c:otherwise>
	                            	<c:forEach var="g" items="${list}">
	                                <tr>
	                                    <td class="bno">${g.boardNo }</td>
	                                    <td>${g.boardTitle }</td>
	                                    <td>${g.count }</td>
	                                    <td>${g.createDate }</td>
	                                </tr>
										 </c:forEach>
										 </c:otherwise>
	                            </c:choose>
	                            </tbody>
	  
                          </table>
                          
                          <script>
                           	$(function(){
                           		$("#boardList>tbody>tr").click(function(){
                           			location.href='detail.bo?bno=' + $(this).children(".bno").text();
                           		})
                           	})
                           </script>


                        </div>
                      </div> <!-- post-body end -->
                    </div><!-- 3rd post end -->

                    <nav class="paging" aria-label="Page navigation example" style="margin: auto;">
                      <ul class="pagination" style="padding-left: 270px; padding-top: 10px;">
                                                          <c:set var="currentPage" value="${pi.currentPage + 1}" />
                                            
                                            
                                            	<c:choose>
                		<c:when test="${ pi.currentPage eq 1 }">
                    		<li class="page-item disabled"><a class="page-link" href="">Previous</a></li>
                    	</c:when>
                    	<c:otherwise>
                    		<li class="page-item"><a class="page-link" href="communityList.my?cpage=${ pi.currentPage - 1 }">Previous</a></li>
                    	</c:otherwise>
                    </c:choose>
                    
                    <c:forEach var="p" begin="${ pi.startPage }" end="${ pi.endPage }">
                    	<li class="page-item"><a class="page-link" href="communityList.my?cpage=${ p }">${ p }</a></li>
					</c:forEach>
                    
                    <c:choose>
                    	<c:when test="${ pi.currentPage eq pi.maxPage }">
                    		<li class="page-item disabled"><a class="page-link" href="">Next</a></li>
                    	</c:when>
                    	<c:otherwise>
                    		<li class="page-item"><a class="page-link" href="communityList.my?cpage=${ pi.currentPage + 1 }">Next</a></li>
                    	</c:otherwise>
                    </c:choose>	
                      </ul>
                    </nav>
                  </div><!-- Main row end -->

                </div><!-- Container end -->
        </section><!-- Main container end -->

        <jsp:include page="../common/footer.jsp" />

      </div><!-- Body inner end -->
    </body>

    </html>