<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Region Price Per Pyung</title>
	
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
					<div class="col-sm-12">
						<h1>REGION PRICE PER PYUNG CHART</h1>
					</div>
				</div>
			</div>
			<!-- /.container-fluid -->
		</section>
	
		<!-- Main content -->
		<section class="content">
			<div class="container-fluid">
				<div class="row">
					<div class="col-md-12">
						<!-- BAR CHART -->
						<div class="card card-success">
							<div class="card-header">
								<h3 class="card-title">Bar Chart</h3>
								<div class="card-tools">
									<select id="select_year" class="form-control">
									  <option>all</option>
			                          <option>2012</option>
			                          <option>2013</option>
			                          <option>2014</option>
			                          <option>2015</option>
			                          <option>2016</option>
			                          <option>2017</option>
			                          <option>2018</option>
			                          <option>2019</option>
			                          <option>2020</option>
									</select>
								</div>
							</div>
							<div class="card-body">
								<div class="chart">
									<canvas id="barChart"
										style="min-height: 250px; height: 250px; max-height: 250px; max-width: 100%;"></canvas>
								</div>
							</div>
							<!-- /.card-body -->
						</div>
						<!-- /.card -->
					</div>
					<!-- /.col (RIGHT) -->
				</div>
				<!-- /.row -->
			</div>
			<!-- /.container-fluid -->
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
<!-- Page specific script -->
<script>
$(function () {

	function load() {
		  $.ajax({
		    	"url": "/pgtdashboard-web/pgt/rppp-chart-data",
		    	"method": "get",
		    	"data": "type=area",
		    	"dataType": "json",
		    	"success": function(data, status, xhr) {
		    		
				    var areaChartData = {
				      labels  : data.labels,
				      datasets: [
				        {
				          label               : '2012년',
				          backgroundColor     : 'rgba(90, 125, 230)',
				          borderColor         : 'rgba(60,141,188,0.8)',
				          pointRadius         : false,
				          pointColor          : '#FF0000',
				          pointStrokeColor    : 'rgba(60,141,188,1)',
				          pointHighlightFill  : '#FF0000',
				          pointHighlightStroke: 'rgba(60,141,188,1)',
				          data                : data.datasets[0]
				        },
				        {
				          label               : '2013년',
				          backgroundColor     : 'rgba(40, 200, 100)',
				          borderColor         : 'rgba(210, 214, 222, 1)',
				          pointRadius         : false,
				          pointColor          : 'rgba(210, 214, 222, 1)',
				          pointStrokeColor    : '#FF5E00',
				          pointHighlightFill  : '#fff',
				          pointHighlightStroke: 'rgba(220,220,220,1)',
				          data                : data.datasets[1]
				        },
			            {
				          label               : '2014년',
				          backgroundColor     : 'rgba(200, 50, 255)',
				          borderColor         : 'rgba(210, 214, 222, 1)',
				          pointRadius         : false,
				          pointColor          : 'rgba(210, 214, 222, 1)',
				          pointStrokeColor    : '#FFE400',
				          pointHighlightFill  : '#fff',
				          pointHighlightStroke: 'rgba(220,220,220,1)',
				          data                : data.datasets[2]
				        },
				        {
				          label               : '2015년',
				          backgroundColor     : 'rgba(100, 50, 255)',
				          borderColor         : 'rgba(210, 214, 222, 1)',
				          pointRadius         : false,
				          pointColor          : 'rgba(210, 214, 222, 1)',
				          pointStrokeColor    : '#FFE400',
				          pointHighlightFill  : '#fff',
				          pointHighlightStroke: 'rgba(220,220,220,1)',
				          data                : data.datasets[3]
				        },
				        {
				          label               : '2016년',
				          backgroundColor     : 'rgba(100, 50, 120)',
				          borderColor         : 'rgba(210, 214, 222, 1)',
				          pointRadius         : false,
				          pointColor          : 'rgba(210, 214, 222, 1)',
				          pointStrokeColor    : '#FFE400',
				          pointHighlightFill  : '#fff',
				          pointHighlightStroke: 'rgba(220,220,220,1)',
				          data                : data.datasets[4]
				        },
				        {
				          label               : '2017년',
				          backgroundColor     : 'rgba(255, 50, 180)',
				          borderColor         : 'rgba(210, 214, 222, 1)',
				          pointRadius         : false,
				          pointColor          : 'rgba(210, 214, 222, 1)',
				          pointStrokeColor    : '#FFE400',
				          pointHighlightFill  : '#fff',
				          pointHighlightStroke: 'rgba(220,220,220,1)',
				          data                : data.datasets[5]
				        },
				        {
				          label               : '2018년',
				          backgroundColor     : 'rgba(35, 255, 180)',
				          borderColor         : 'rgba(210, 214, 222, 1)',
				          pointRadius         : false,
				          pointColor          : 'rgba(210, 214, 222, 1)',
				          pointStrokeColor    : '#FFE400',
				          pointHighlightFill  : '#fff',
				          pointHighlightStroke: 'rgba(220,220,220,1)',
				          data                : data.datasets[6]
				        },
				        {
				          label               : '2019년',
				          backgroundColor     : 'rgba(90, 90, 255)',
				          borderColor         : 'rgba(210, 214, 222, 1)',
				          pointRadius         : false,
				          pointColor          : 'rgba(210, 214, 222, 1)',
				          pointStrokeColor    : '#FFE400',
				          pointHighlightFill  : '#fff',
				          pointHighlightStroke: 'rgba(220,220,220,1)',
				          data                : data.datasets[7]
				        },
				        {
				          label               : '2020년',
				          backgroundColor     : 'rgba(50, 90, 180)',
				          borderColor         : 'rgba(210, 214, 222, 1)',
				          pointRadius         : false,
				          pointColor          : 'rgba(210, 214, 222, 1)',
				          pointStrokeColor    : '#FFE400',
				          pointHighlightFill  : '#fff',
				          pointHighlightStroke: 'rgba(220,220,220,1)',
				          data                : data.datasets[8]
				        },
				      ]
				    }
				    
				    //-------------
				    //- BAR CHART -
				    //-------------
				    var barChartCanvas = $('#barChart').get(0).getContext('2d')
				    var barChartData = $.extend(true, {}, areaChartData)
				    var temp0 = areaChartData.datasets[0]
				    var temp1 = areaChartData.datasets[1]
				    var temp2 = areaChartData.datasets[2]
				    var temp3 = areaChartData.datasets[3]
				    var temp4 = areaChartData.datasets[4]
				    var temp5 = areaChartData.datasets[5]
				    var temp6 = areaChartData.datasets[6]
				    var temp7 = areaChartData.datasets[7]
				    var temp8 = areaChartData.datasets[8]
				    barChartData.datasets[0] = temp0
				    barChartData.datasets[1] = temp1
				    barChartData.datasets[2] = temp2
				    barChartData.datasets[3] = temp3
				    barChartData.datasets[4] = temp4
				    barChartData.datasets[5] = temp5
				    barChartData.datasets[6] = temp6
				    barChartData.datasets[7] = temp7
				    barChartData.datasets[8] = temp8
				
				    var barChartOptions = {
				      responsive              : true,
				      maintainAspectRatio     : false,
				      datasetFill             : false
				    }
				
				    var barChart = new Chart(barChartCanvas, {
				      type: 'bar',
				      data: barChartData,
				      options: barChartOptions
		  			})
				    
		    	},
		    	"error": function(xhr, status, err) {
		    		console.log(err.message);
		    	}
		    	
			});
	}
	
	function load_by_year(year) {
		  $.ajax({
		    	"url": "/pgtdashboard-web/pgt/rppp-chart-data",
		    	"method": "get",
		    	"data": "year=" + year,
		    	"dataType": "json",
		    	"success": function(data, status, xhr) {
		    		
				    var areaChartData = {
				      labels  : data.labels,
				      datasets: [
				        {
				          label               : year + '년',
				          backgroundColor     : 'rgba(90, 125, 230)',
				          borderColor         : 'rgba(60,141,188,0.8)',
				          pointRadius         : false,
				          pointColor          : '#FF0000',
				          pointStrokeColor    : 'rgba(60,141,188,1)',
				          pointHighlightFill  : '#FF0000',
				          pointHighlightStroke: 'rgba(60,141,188,1)',
				          data                : data.datasets[year-2012]
				        },
				      ]
				    }
				    
				    //-------------
				    //- BAR CHART -
				    //-------------
				    var barChartCanvas = $('#barChart').get(0).getContext('2d')
				    var barChartData = $.extend(true, {}, areaChartData)
				    var temp0 = areaChartData.datasets[0]
				    
				    barChartData.datasets[0] = temp0
				    
				
				    var barChartOptions = {
				      responsive              : true,
				      maintainAspectRatio     : false,
				      datasetFill             : false
				    }
				
				    var barChart = new Chart(barChartCanvas, {
				      type: 'bar',
				      data: barChartData,
				      options: barChartOptions
		  			})
				    
		    	},
		    	"error": function(xhr, status, err) {
		    		console.log(err.message);
		    	}
		    	
			});
	}
	
	$('#select_year').on('change', function(event) {
		year = $(this).val();
		//alert(year);
		if (year == 'all') {
			load();
		} else {
			load_by_year(year);
		}
	});
	
	load();
	  
})

	
		
</script>
</body>
</html>