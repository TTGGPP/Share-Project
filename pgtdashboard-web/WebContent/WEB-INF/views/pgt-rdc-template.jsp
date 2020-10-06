<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Region Deal Count</title>
	
	<!-- Google Font: Source Sans Pro -->
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
	<!-- Font Awesome -->
	<link rel="stylesheet" href="/pgtdashboard-web/plugins/fontawesome-free/css/all.min.css">
	<!-- Theme style -->
	<link rel="stylesheet" href="/pgtdashboard-web/dist/css/adminlte.min.css">
</head>
<body class="hold-transition sidebar-mini layout-fixed">

<div class="wrapper">

	<jsp:include page="/WEB-INF/views/modules/header.jsp" />
	
	<!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>REGION DEAL COUNT</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">APT TABLES</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        
        <div class="row">
          <div class="col-12">
            <div class="card">
              <div class="card-header">
                <h3 class="card-title">REGION DEAL COUNT</h3>

                <div class="card-tools">
                  <div class="input-group input-group-sm" style="width: 150px;">
                    <input type="text" name="table_search" class="form-control float-right" placeholder="Search">

                    <div class="input-group-append">
                      <button id="btn-search" class="btn btn-default">
                        <i class="fas fa-search"></i>
                      </button>
                    </div>
                  </div>
                </div>
              </div>
              <!-- /.card-header -->
              <div id="rdc-container" class="card-body table-responsive p-0" style="height: 300px;">
                <table class="table table-head-fixed text-nowrap">
                  <thead>
                    <tr>
                      <!-- <th>APT.NAME</th> -->
                      <th>REGION</th>
                      <th>2012</th>
                      <th>2013</th>
                      <th>2014</th>
                      <th>2015</th>
                      <th>2016</th>
                      <th>2017</th>
                      <th>2018</th>
                      <th>2019</th>
                      <th>2020</th>
                    </tr>
                    <tr>
                    </tr>
                  </thead>
                  <tbody>
                  </tbody>
                </table>
              </div>
              <!-- /.card-body -->
            </div>
            <!-- /.card -->
          </div>
        </div>
        <!-- /.row -->
        
      </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
	    	
	<jsp:include page="/WEB-INF/views/modules/footer.jsp" />

</div>
<!-- ./wrapper -->

<!-- jQuery -->
<script src="/pgtdashboard-web/plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="/pgtdashboard-web/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- ChartJS -->
<script src="/pgtdashboard-web/plugins/chart.js/Chart.min.js"></script>
<!-- AdminLTE App -->
<script src="/pgtdashboard-web/dist/js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="/pgtdashboard-web/dist/js/demo.js"></script>
<script type="text/javascript">
$(function() {
	$('#btn-search').on('click', function(event) {
		
		event.preventDefault();		//button의 기본 동작 수행 차단
		event.stopPropagation();	//이벤트를 부모에게 전달하지 마세요
		
		var rdc = $('#rdc').val();
		
		$('#rdc-container').load('/pgtdashboard-web/rdc-list?rdc='+rdc);
		
	});
});
</script>
</body>
</html>












