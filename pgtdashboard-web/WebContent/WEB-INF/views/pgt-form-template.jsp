<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Table Template</title>
	
	<!-- Google Font: Source Sans Pro -->
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
	<!-- Font Awesome -->
	<link rel="stylesheet" href="/dashboard-web/plugins/fontawesome-free/css/all.min.css">
	<!-- Theme style -->
	<link rel="stylesheet" href="/dashboard-web/dist/css/adminlte.min.css">
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
          <div class="col-sm-12">
            <h1>General Form</h1>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <div class="row">

          <div class="col-md-12">
          <form>
		 	<div class="card card-primary">
              <div class="card-header">
                <h3 class="card-title">Quick Example</h3>
              </div>
              <!-- /.card-header -->
              <!-- form start -->
              <form>
                    <strong>Region deal count</strong>
                    <input type="checkbox" name="part" value="0~100">1-100
                    <input type="checkbox" name="part" value="100-1000">100-1000
                    <input type="checkbox" name="part" value="1000-10000">1000-10000
                    <input type="checkbox" name="part" value="10000-100000">10000-100000
                    <input type="checkbox" name="part" value="100000▲">100000▲
             </form>
                  </div>
                    
                  </div>
                  
                </div>
                <!-- /.card-body -->

                <div class="card-footer">
                  <button type="submit" class="btn btn-primary">Submit</button>
                </div>
            </div>
            
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
<script src="/dashboard-web/plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="/dashboard-web/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="/dashboard-web/dist/js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="/dashboard-web/dist/js/demo.js"></script>
</body>
</html>