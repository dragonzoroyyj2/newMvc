<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>GoodLuck ver0.1</title>
  
	<!-- favicon -->
	<link rel="shortcut icon" href="/resources/static/favicon-16x16.png">
  
	<!-- Theme style -->
	<link rel="stylesheet" href="/resources/dist/css/adminlte.min.css">
	
	<!-- overlayScrollbars -->
	<link rel="stylesheet" href="/resources/plugins/overlayScrollbars/css/OverlayScrollbars.min.css">

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


<body class="hold-transition login-page">
    <div id="content"><tiles:insertAttribute name="content" /></div>    
</body>