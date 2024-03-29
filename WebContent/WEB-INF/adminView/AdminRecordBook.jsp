<%@ page contentType="text/html; charset=UTF-8"%>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.104.2">
    <title>AdminRecordBook.jsp</title>

     <link rel="canonical" href="https://getbootstrap.com/docs/5.2/examples/dashboard/">

<link href="assets/dist/css/bootstrap.min.css" rel="stylesheet">
    
    <!-- Custom styles for this template -->
    <link href="css/dashboard.css" rel="stylesheet">
    <link href="css/AdminRecordBook.css" rel="stylesheet">
<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
<!-- 왼쪽 사이드 메뉴 스크립트 -->
<script>
</script>

  </head>
  <body>
    
<header class="navbar navbar-dark sticky-top bg-dark flex-md-nowrap p-0 shadow">
  <a class="navbar-brand col-md-3 col-lg-2 me-0 px-3 fs-6" href="adminmain.action">라이트북 관리자</a>
  <button class="navbar-toggler position-absolute d-md-none collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#sidebarMenu" aria-controls="sidebarMenu" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="navbar-nav">
    <div class="nav-item text-nowrap"id="nav">
      <a class="nav-link px-3" href="adminmyinfo.action">개인 정보</a>
      <a class="nav-link px-3" href="adminlogout.action">로그 아웃</a>
    </div>
  </div>
</header><!-- header end-->

<div class="container-fluid" id="container-fluid">
  <div class="row">
    <nav id="sidebarMenu" class="col-md-3 col-lg-2 d-md-block bg-light sidebar collapse">
      <div class="position-sticky pt-3 sidebar-sticky">
          <ul class="nav flex-column big_menu" >
          <li class="nav-item">
            <a class="nav-link" aria-current="page" href="adminmain.action">
              <span data-feather="home" class="align-text-bottom"></span>
              대시보드
            </a>
           	<li class="nav-item">
	            <a class="nav-link" href="">
	              <span data-feather="message-square" class="align-text-bottom"></span>
	              고객지원
	            </a>
	            <!-- 여기에 드롭다운 추가 -->
		            <ul class="small_menu">
		                            <li><a href="adminnoticelist.action">공지사항 관리</a></li>
		                            <li><a href="adminfaqlist.action">자주 묻는 질문 관리</a></li>
		                            <li><a href="adminquestionlist.action">질문 관리</a></li>
		            </ul>
        	  </li>
          </ul>
          <ul class="nav flex-column big_menu">
          <li class="nav-item">
            <a class="nav-link" href="adminmemberlist.action">
              <span data-feather="users" class="align-text-bottom"></span>
              회원관리
            </a>
          </li>
          </ul>
          <ul class="nav flex-column big_menu">
          <li class="nav-item">
            <a class="nav-link" href="adminrecordcardlist.action">
              <span data-feather="list" class="align-text-bottom"></span>
              기록관리
            </a>
          </li>
          </ul>
          <ul class="nav flex-column big_menu" >
          <li class="nav-item">
            <a class="nav-link" href="adminreportlist.action">
              <span data-feather="alert-triangle" class="align-text-bottom"></span>
             신고처리
            </a>
           
          </li>
        </ul>
      </div>
    </nav><!-- nav end -->

    <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
      <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
          <h2>우리동네 한바퀴</h2>
      </div>
        
       

        <!-- 채워야 할 영역 -->
        <div class="area">
		<div class="content_title">
                 <div class="content_info">
                     <div class="written_info">
                       <span id="written_day">작성자 홍길동</span>   
                       <span id="written_day">작성일 2022:12:12 12:06</span>
                     </div>
                     <div>
                         <button type="button" class="btn btn-danger control blindBtn">경고</button>
                     </div>
                 </div>
             </div>
             
             <div class="content">
                 <div class="content_main"><h2>여행책 내용 출력 영역</h2></div>
                 
                  <div class="content_comment">
                  <div class="content_view"><h3 style="padding: 10px 0 15px 0; border-bottom: solid 1px gray;">댓글</h3> 
                 <div class="comment_view">
                 <div class="com_name"><b>여행메이트</b></div>
                 <div class="com_comment"><b>어쩌고 저쩌고~?!~?!</b></div>
                 <div class="com_date" style="padding: 10px 0 15px 0; border-bottom: solid 1px gray;">2022.12.12</div>
                  <div class="com_name"><b>홍길동</b></div>
                 <div class="com_comment"><b>아 배고파~</b></div>
                  <div class="com_date" style="padding: 10px 0 15px 0; border-bottom: solid 1px gray;">2023.01.05</div>
               </div>
               </div>
                 
	
                 <div class="content_toList">
                     <button type="button" class="btn btn-default control listBtn">목록으로</button>
                 </div>
     
         </div>
        </div>
		</div>
    
      	<!-- 채워야 할 영역 -->
    </main>
  
  </div>
</div>


    <script src="assets/dist/js/bootstrap.bundle.min.js"></script>

      <script src="https://cdn.jsdelivr.net/npm/feather-icons@4.28.0/dist/feather.min.js" integrity="sha384-uO3SXW5IuS1ZpFPKugNNWqTZRRglnUJK6UAZ/gxOX80nxEkN9NcGZTftn6RzhGWE" crossorigin="anonymous"></script><script src="https://cdn.jsdelivr.net/npm/chart.js@2.9.4/dist/Chart.min.js" integrity="sha384-zNy6FEbO50N+Cg5wap8IKA4M/ZnLJgzc6w2NqACZaK0u0FXfOWRRJOnQtpZun8ha" crossorigin="anonymous"></script><script src="js/dashboard.js"></script>
  </body>
</html>
