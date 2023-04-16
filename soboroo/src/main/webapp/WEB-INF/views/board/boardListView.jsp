<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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

 ul li {
    display: inline-block;
    margin-left: 1%;
}
#topMenu {            
        height: 30px; 
        width: 100%; 
}
#topMenu ul li {              
        list-style: none;          
        color: white;             
        background-color: #2d2d2d;  
        float: left;               
        line-height: 30px;         
        vertical-align: middle;     
        text-align: center;       
}
#topMenu .menuLink {                             
        text-decoration:none;                      
        color: white;                            
        display: block;                           
        width: 100px;                          
        font-size: 12px;                           
        font-weight: bold;                         
        
}
#topMenu .menuLink:hover {           
        color: orange   ;            
        background-color: #4d4d4d;  
}

    </style>
</head>
<body>
	  <!-- 이쪽에 헤더바 포함할꺼임 -->
    <jsp:include page="../common/header.jsp"/>

    <div class="content">
        <br><br>
        <div class="innerOuter" style="padding:5% 10%;">
            <h2>게시판</h2>
            <br>
            <div align="center">
            <nav id="topMenu" style="margin-bottom: 25px; margin-left: 10%;" >
                <ul>
                        <li><a class="menuLink" href="#">전체</a></li>
                        <li><a class="menuLink" href="#">운동</a></li>
                        <li><a class="menuLink" href="#">공부</a></li>
                        <li><a class="menuLink" href="#">카테고리</a></li>
                        <li><a class="menuLink" href="#">카테고리</a></li>
                        <li><a class="menuLink" href="#">카테고리</a></li>
                        <li><a class="menuLink" href="#">카테고리</a></li>
                        <li><a class="menuLink" href="#">카테고리</a></li>
                </ul>
            </nav>
            </div>
        


	            <!-- 로그인후 상태일 경우만 보여지는 글쓰기 버튼-->
           		<a class="btn btn-secondary btn-sm" style="float:right" href="enrollForm.bo">글쓰기</a>
            <br></br>
            <table id="boardList" class="table table-hover" align="center">
                <thead>
                  <tr>
                    <th>글번호</th>
                    <th>
                        <select name="" id="">
                            <option value="" style="">카테고리</option>
                            <option value="">전체</option>
                            <option value="">전체</option>
                            <option value="">전체</option>
                            <option value="">전체</option>
                            <option value="">전체</option>
                            <option value="">전체</option>
                            <option value="">전체</option>
                        </select>
                    </th>
                    <th>제목</th>
                    <th>작성자</th>
                    <th>조회수</th>
                    <th>작성일</th>
                  </tr>
                </thead>
                <tbody>
	                    <tr>
	                        <td class="bno">5</td>
	                        <td>카테고리</td>
	                        <td>마지막 공지사항 제목</td>
	                        <td>admin</td>
	                        <td>10</td>
	                        <td>2023-03-29</td>
	                    </tr>

                       
                </tbody>
            </table>
            <br>
		
			
            <div id="pagingArea">
                <ul class="pagination">
                	
	                    <li class="page-item disabled"><a class="page-link" href="">Previous</a></li>
                    	<li class="page-item"><a class="page-link" href="">1</a></li>
                    	<li class="page-item"><a class="page-link" href="">2</a></li>
                    	<li class="page-item"><a class="page-link" href="">3</a></li>
                    	<li class="page-item"><a class="page-link" href="">4</a></li>
                    	<li class="page-item"><a class="page-link" href="">5</a></li>
	                    <li class="page-item"><a class="page-link" href="">Next</a></li>
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