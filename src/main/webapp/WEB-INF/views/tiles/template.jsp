<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>MyWork In.A ver0.1</title>
  
  <!-- favicon -->
  <link rel="shortcut icon" href="/resources/static/favicon-16x16.png">
  
  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="/resources/plugins/fontawesome-free/css/all.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
  
  <!-- Tempusdominus Bootstrap 4 -->
  <link rel="stylesheet" href="/resources/plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css">
  
  <!-- iCheck -->
  <link rel="stylesheet" href="/resources/plugins/icheck-bootstrap/icheck-bootstrap.min.css">
  <!-- JQVMap -->
  <link rel="stylesheet" href="/resources/plugins/jqvmap/jqvmap.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="/resources/dist/css/adminlte.min.css">
  <!-- overlayScrollbars -->
  <link rel="stylesheet" href="/resources/plugins/overlayScrollbars/css/OverlayScrollbars.min.css">
  <!-- Daterange picker -->
  <link rel="stylesheet" href="/resources/plugins/daterangepicker/daterangepicker.css">
  <!-- summernote -->
  <link rel="stylesheet" href="/resources/plugins/summernote/summernote-bs4.min.css">


	<!-- jQuery -->
	<script src="/resources/plugins/jquery/jquery.min.js"></script>
	
	<!-- jQuery UI 1.11.4 -->
	<script src="/resources/plugins/jquery-ui/jquery-ui.min.js"></script>
	
	<meta name="_csrf_header" content="${_csrf.headerName}">
	<meta name="_csrf" content="${_csrf.token}">
	  
    
</head>
<script type="text/javascript">

//DOM에서 메타 태그를 읽어서 CSRF 헤더와 토큰 값을 가져옵니다.
const csrfHeader = document.querySelector('meta[name="_csrf_header"]').getAttribute('content');
const csrfToken = document.querySelector('meta[name="_csrf"]').getAttribute('content');

</script>


<body class="hold-transition sidebar-mini layout-fixed">
<div class="wrapper">

    <div id="header"><tiles:insertAttribute name="header" /></div>
    <div id="left"><tiles:insertAttribute name="left" /></div>
    <div id="body"><tiles:insertAttribute name="body" /></div>    
    <div id="footer"><tiles:insertAttribute name="footer" /></div>
    
</div> 
<!-- Bootstrap 4 -->
<script src="/resources/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>

<!-- ChartJS -->
<script src="/resources/plugins/chart.js/Chart.min.js"></script>

<!-- Sparkline -->
<script src="/resources/plugins/sparklines/sparkline.js"></script>

<!-- JQVMap -->
<script src="/resources/plugins/jqvmap/jquery.vmap.min.js"></script>
<script src="/resources/plugins/jqvmap/maps/jquery.vmap.usa.js"></script>

<!-- jQuery Knob Chart -->
<script src="/resources/plugins/jquery-knob/jquery.knob.min.js"></script>

<!-- daterangepicker -->
<script src="/resources/plugins/moment/moment.min.js"></script>
<script src="/resources/plugins/daterangepicker/daterangepicker.js"></script>

<!-- Tempusdominus Bootstrap 4 -->
<script src="/resources/plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js"></script>

<!-- Summernote -->
<script src="/resources/plugins/summernote/summernote-bs4.min.js"></script>

<!-- overlayScrollbars -->
<script src="/resources/plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js"></script>

<!-- AdminLTE App -->
<script src="/resources/dist/js/adminlte.js"></script>

<!-- DataTables  & Plugins -->
<script src="/resources/plugins/datatables/jquery.dataTables.min.js"></script>
<script src="/resources/plugins/datatables-bs4/js/dataTables.bootstrap4.min.js"></script>
<script src="/resources/plugins/datatables-responsive/js/dataTables.responsive.min.js"></script>
<script src="/resources/plugins/datatables-responsive/js/responsive.bootstrap4.min.js"></script>
<script src="/resources/plugins/datatables-buttons/js/dataTables.buttons.min.js"></script>
<script src="/resources/plugins/datatables-buttons/js/buttons.bootstrap4.min.js"></script>
<script src="/resources/plugins/jszip/jszip.min.js"></script>
<script src="/resources/plugins/pdfmake/pdfmake.min.js"></script>
<script src="/resources/plugins/pdfmake/vfs_fonts.js"></script>
<script src="/resources/plugins/datatables-buttons/js/buttons.html5.min.js"></script>
<script src="/resources/plugins/datatables-buttons/js/buttons.print.min.js"></script>
<script src="/resources/plugins/datatables-buttons/js/buttons.colVis.min.js"></script>


<script type="text/javascript">
    $(function() {

    });    
</script>   
     
</body>