<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
<title>soboroo admin - 공지사항 관리</title>

<link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/admin/img/favicon.png">

<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/admin/css/bootstrap.min.css">

<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/admin/plugins/fontawesome/css/fontawesome.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/admin/plugins/fontawesome/css/all.min.css">

<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/admin/plugins/select2/css/select2.min.css">

<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/admin/plugins/datatables/datatables.min.css">

<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/admin/css/bootstrap-datetimepicker.min.css">

<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/admin/css/style.css">
</head>
<body>

<div class="main-wrapper">

<div class="header header-one">

<div class="header-left header-left-one">
<a href="index.html" class="logo">
<img src="${pageContext.request.contextPath}/resources/admin/img/usermain.jpg" alt="Logo">
</a>
<a href="index.html" class="white-logo">
<img src="${pageContext.request.contextPath}/resources/admin/img/logo-white.png" alt="Logo">
</a>
<a href="index.html" class="logo logo-small">
<img src="${pageContext.request.contextPath}/resources/admin/img/logo-small.png" alt="Logo" width="30" height="30">
</a>
</div>


<a href="javascript:void(0);" id="toggle_btn">
<i class="fas fa-bars"></i>
</a>


<div class="top-nav-search">
<form>
<input type="text" class="form-control" placeholder="Search here">
<button class="btn" type="submit"><i class="fas fa-search"></i></button>
</form>
</div>


<a class="mobile_btn" id="mobile_btn">
<i class="fas fa-bars"></i>
</a>


<ul class="nav nav-tabs user-menu">



<li class="nav-item dropdown">
<a href="#" class="dropdown-toggle nav-link" data-bs-toggle="dropdown">
<i data-feather="bell"></i> <span class="badge rounded-pill">5</span>
</a>
<div class="dropdown-menu notifications">
<div class="topnav-dropdown-header">
<span class="notification-title">Notifications</span>
<a href="javascript:void(0)" class="clear-noti"> Clear All</a>
</div>
<div class="noti-content">
<ul class="notification-list">
<li class="notification-message">
<a href="activities.html">
<div class="media d-flex">
<span class="avatar avatar-sm">
<img class="avatar-img rounded-circle" alt="" src="assets/img/profiles/usermain.jpg">
</span>
<div class="media-body">
<p class="noti-details"><span class="noti-title">Brian Johnson</span> paid the invoice <span class="noti-title">#DF65485</span></p>
<p class="noti-time"><span class="notification-time">4 mins ago</span></p>
</div>
</div>
</a>
</li>
<li class="notification-message">
<a href="activities.html">
<div class="media d-flex">
<span class="avatar avatar-sm">
<img class="avatar-img rounded-circle" alt="" src="assets/img/profiles/avatar-03.jpg">
</span>
<div class="media-body">
<p class="noti-details"><span class="noti-title">Marie Canales</span> has accepted your estimate <span class="noti-title">#GTR458789</span></p>
<p class="noti-time"><span class="notification-time">6 mins ago</span></p>
</div>
</div>
</a>
</li>
<li class="notification-message">
<a href="activities.html">
<div class="media d-flex">
<div class="avatar avatar-sm">
<span class="avatar-title rounded-circle bg-primary-light"><i class="far fa-user"></i></span>
</div>
<div class="media-body">
<p class="noti-details"><span class="noti-title">New user registered</span></p>
<p class="noti-time"><span class="notification-time">8 mins ago</span></p>
</div>
</div>
</a>
</li>
<li class="notification-message">
<a href="activities.html">
<div class="media d-flex">
<span class="avatar avatar-sm">
<img class="avatar-img rounded-circle" alt="" src="assets/img/profiles/avatar-04.jpg">
</span>
<div class="media-body">
<p class="noti-details"><span class="noti-title">Barbara Moore</span> declined the invoice <span class="noti-title">#RDW026896</span></p>
<p class="noti-time"><span class="notification-time">12 mins ago</span></p>
</div>
</div>
</a>
</li>
<li class="notification-message">
<a href="activities.html">
<div class="media d-flex">
<div class="avatar avatar-sm">
<span class="avatar-title rounded-circle bg-info-light"><i class="far fa-comment"></i></span>
</div>
<div class="media-body">
<p class="noti-details"><span class="noti-title">You have received a new message</span></p>
<p class="noti-time"><span class="notification-time">2 days ago</span></p>
</div>
</div>
</a>
</li>
</ul>
</div>
<div class="topnav-dropdown-footer">
<a href="activities.html">View all Notifications</a>
</div>
</div>
</li>


<li class="nav-item dropdown has-arrow main-drop">
<a href="#" class="dropdown-toggle nav-link" data-bs-toggle="dropdown">
<span class="user-img">
<img src="assets/img/profiles/usermain.jpg" alt="">
<span class="status online"></span>
</span>
<span>Admin</span>
</a>
<div class="dropdown-menu">
<a class="dropdown-item" href="profile.html"><i data-feather="user" class="me-1"></i> Profile</a>
<a class="dropdown-item" href="settings.html"><i data-feather="settings" class="me-1"></i> Settings</a>
<a class="dropdown-item" href="login.html"><i data-feather="log-out" class="me-1"></i> Logout</a>
</div>
</li>

</ul>

</div>



<!-- 사이드바 시작  -->
        <div class="sidebar" id="sidebar">
            <div class="sidebar-inner slimscroll">
                <div id="sidebar-menu" class="sidebar-menu">
                    <ul>
                        <li class="menu-title"><span>MENU</span></li>
                        <li>
                            <a href="index.html"><i data-feather="home"></i> <span>대시보드</span></a>
                        </li>
                        <li class="submenu" class="active">
                            <a href="#"><i data-feather="pie-chart"></i> <span>회원 관리</span> <span
                                    class="menu-arrow"></span></a>
                            <ul>
                                <li><a href="memberInfo.ad">회원 관리</a></li>
                                <li><a href="susMember.ad">정지회원 관리</a></li>
                                <li><a href="withdrawMember.ad">탈퇴회원 관리</a></li>
                            </ul>
                        </li>
                        <li class="submenu">
                                        <a href="#"><i data-feather="clipboard"></i> <span>모임관리</span> <span
                                        class="menu-arrow"></span></a>
                            <ul>
                                <li class="submenu" align="left">
                                    <a href="#"><i data-feather="clipboard"></i> <span style="margin-right: 72px;">온라인 모임</span> <span
                                    class="menu-arrow"></span></a>
                                    <ul><li><a href="onlineone.ad">온라인 일반 / 반짝</a></li>
                                        <li><a href="onlineleg.ad">온라인 일반 / 정기</a></li>
                                        <li><a href="onlinegoal.ad">온라인 목표 / 기간</a></li>
                                        <li><a href="onlineDday.ad">온라인 목표 / 단위별</a></li>
                                    </ul>
                               
                                <li class="submenu">
                                    <a href="#"><i data-feather="clipboard"></i> <span style="margin-right: 60px;">오프라인 모임</span> <span
                                    class="menu-arrow"></span></a>
                                    <ul>
                                        <li><a href="offlineone.ad">오프라인 일반 / 반짝</a></li>
                                        <li><a href="offlineleg.ad">오프라인 일반 / 정기</a></li>
                                        <li><a href="offlinegoal.ad">오프라인 목표 / 기간</a></li>
                                        <li><a href="offlineDday.ad">오프라인 목표 / 단위별</a></li>
                                    </ul>
                         
                            </ul>
                        </li>
                        <li>
                            <a href="#"><i data-feather="alert-octagon"></i> <span>신고 관리</span><span
                                class="menu-arrow"></span></a>
                            <ul>
                                <li><a href="report.ad">통합신고 관리</a></li>
                            </ul>
                        </li>
                        <li>
                            <a href="board.ad"><i data-feather="star"></i> <span>게시판 관리</span></a>
                        </li>
                        <li>
                            <a href="#"><i data-feather="package"></i> <span>문의답변</span></a>
                        </li>
                        <li>
                            <a href="notice.ad"><i data-feather="pie-chart"></i> <span>공지사항 관리</span> </a>
                        </li>

                        </li>
					</ul>
                </div>
            </div>
        </div>
        <!-- 사이드바 끝  -->

<div class="page-wrapper">
<div class="content container-fluid">

<div class="page-header">
<div class="row align-items-center">
<div class="col">
<h3 class="page-title">공지사항 관리</h3>
<ul class="breadcrumb">
</ul>
</div>
</div>
</div>

<div class="card invoices-tabs-card">
<div class="card-body card-body pt-0 pb-0">
<div class="invoices-items-main-tabs">
<div class="row align-items-center">
<div class="col-lg-12 col-md-12">
<div class="invoices-items-tabs">
<ul>
<li><a href="invoice-items.html" class="active">전체 공지사항 관리</a></li>
</ul>
</div>
</div>
</div>
</div>
</div>
</div>
<div class="card invoices-tabs-card">
<div class="card-body card-body pt-0 pb-0">
<div class="invoices-main-tabs border-0 pb-0">
<div class="row align-items-center">
<div class="col-lg-12 col-md-12">
</a>
</div>
</div>
</div>
</div>
</div>
</div>
<div class="row">
<div class="col-sm-12">
<div class="card card-table">
<div class="card-body">
<div class="table-responsive">
<table class="table table-stripped table-hover datatable">
<thead class="thead-light">
<tr>
<th>번호</th>
<th>제목</th>
<th>작성자</th>
<th>조회수</th>
<th>작성일</th>
<th>수정일</th>
<th>삭제여부</th>
<th class="text-end">공개여부</th>
</tr>
</thead>
<tbody>
<tr>
<td>
<label class="custom_check">
<input type="checkbox" name="invoice">
<span class="checkmark"></span>
</label>
<a href="#" class="items-links">10</a>
</td>
<td>커피바리스타</td>
<td class="text-primary">asdasd123</td>
<td>23</td>
<td>2023-04-20</td>
<td>2023-04-26</td>
<td>N</td>
<td class="text-end">
<a href="edit-invoice.html" class="btn btn-sm btn-white text-success me-2"><i class="far fa-edit me-1"></i>공개</a>
<a class="btn btn-sm btn-white text-danger" href="#" data-bs-toggle="modal" data-bs-target="#delete_paid"><i class="far fa-trash-alt me-1"></i>삭제</a>
</td>
</tr>
<tr>
<td>
<label class="custom_check">
<input type="checkbox" name="invoice">
<span class="checkmark"></span>
</label>
<a href="#" class="items-links">10</a>
</td>
<td>커피바리스타</td>
<td class="text-primary">asdasd123</td>
<td>23</td>
<td>2023-04-20</td>
<td>2023-04-26</td>
<td>N</td>
<td class="text-end">
<a href="edit-invoice.html" class="btn btn-sm btn-white text-success me-2"><i class="far fa-edit me-1"></i>공개</a>
<a class="btn btn-sm btn-white text-danger" href="#" data-bs-toggle="modal" data-bs-target="#delete_paid"><i class="far fa-trash-alt me-1"></i>삭제</a>
</td>
</tr>
<tr>
<td>
<label class="custom_check">
<input type="checkbox" name="invoice">
<span class="checkmark"></span>
</label>
<a href="#" class="items-links">10</a>
</td>
<td>커피바리스타</td>
<td class="text-primary">asdasd123</td>
<td>23</td>
<td>2023-04-20</td>
<td>2023-04-26</td>
<td>N</td>
<td class="text-end">
<a href="edit-invoice.html" class="btn btn-sm btn-white text-success me-2"><i class="far fa-edit me-1"></i>공개</a>
<a class="btn btn-sm btn-white text-danger" href="#" data-bs-toggle="modal" data-bs-target="#delete_paid"><i class="far fa-trash-alt me-1"></i>삭제</a>
</td>
</tr>
<tr>
<td>
<label class="custom_check">
<input type="checkbox" name="invoice">
<span class="checkmark"></span>
</label>
<a href="#" class="items-links">10</a>
</td>
<td>커피바리스타</td>
<td class="text-primary">asdasd123</td>
<td>23</td>
<td>2023-04-20</td>
<td>2023-04-26</td>
<td>N</td>
<td class="text-end">
<a href="edit-invoice.html" class="btn btn-sm btn-white text-success me-2"><i class="far fa-edit me-1"></i>공개</a>
<a class="btn btn-sm btn-white text-danger" href="#" data-bs-toggle="modal" data-bs-target="#delete_paid"><i class="far fa-trash-alt me-1"></i>삭제</a>
</td>
</tr>
<tr>
<td>
<label class="custom_check">
<input type="checkbox" name="invoice">
<span class="checkmark"></span>
</label>
<a href="#" class="items-links">10</a>
</td>
<td>커피바리스타</td>
<td class="text-primary">asdasd123</td>
<td>23</td>
<td>2023-04-20</td>
<td>2023-04-26</td>
<td>N</td>
<td class="text-end">
<a href="edit-invoice.html" class="btn btn-sm btn-white text-success me-2"><i class="far fa-edit me-1"></i>공개</a>
<a class="btn btn-sm btn-white text-danger" href="#" data-bs-toggle="modal" data-bs-target="#delete_paid"><i class="far fa-trash-alt me-1"></i>삭제</a>
</td>
</tr>
</tbody>
</table>
</div>
</div>
</div>
</div>
</div>
</div>
</div>



<!-- 모달 팝업 -->
<div class="modal custom-modal fade" id="delete_paid" role="dialog">
<div class="modal-dialog modal-dialog-centered">
<div class="modal-content">
<div class="modal-body">
<div class="form-header">
<h3>공지사항 삭제</h3>
 <p>해당 공지사항 글을 삭제하시겠습니까?</p>
</div>
<div class="modal-btn delete-action">
<div class="row">
<div class="col-6">
<a href="javascript:void(0);" class="btn btn-primary paid-continue-btn">삭제</a>
</div>
<div class="col-6">
<a href="javascript:void(0);" data-bs-dismiss="modal" class="btn btn-primary paid-cancel-btn">취소</a>
</div>
</div>
</div>
</div>
</div>
</div>
</div>

</div>


<script src="${pageContext.request.contextPath}/resources/admin/js/jquery-3.6.0.min.js"></script>

<script src="${pageContext.request.contextPath}/resources/admin/js/bootstrap.bundle.min.js"></script>

<script src="${pageContext.request.contextPath}/resources/admin/js/feather.min.js"></script>

<script src="${pageContext.request.contextPath}/resources/admin/plugins/slimscroll/jquery.slimscroll.min.js"></script>

<script src="${pageContext.request.contextPath}/resources/admin/plugins/select2/js/select2.min.js"></script>

<script src="${pageContext.request.contextPath}/resources/admin/plugins/datatables/jquery.dataTables.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/admin/plugins/datatables/datatables.min.js"></script>

<script src="${pageContext.request.contextPath}/resources/admin/plugins/moment/moment.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/admin/js/bootstrap-datetimepicker.min.js"></script>

<script src="${pageContext.request.contextPath}/resources/admin/js/script.js"></script>
</body>
</html>