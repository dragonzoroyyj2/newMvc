<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@include file="../../include/header.jsp" %>

<!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0">PAGE1</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">PAGE1</li>
            </ol>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    
    
    
    page1

  <!-- /.content-wrapper -->
  
<div class="row">
        <div class="col-12">
          <!-- <a href="#" class="btn btn-secondary">Cancel</a> -->
          <input type="button" value="fnPostFetch()" class="btn btn-success float-left" id="fnPostFetch" onclick="fnPostFetch();">
        </div>
</div>
  
  <script>
$(document).ready(function(){
	
	 
});

function fnGetFetch(){
	
	fetch('https://api.example.com/data')
	.then(response => {
	  if (!response.ok) {
	    throw new Error('HTTP error! status: ' + response.status);
	  }
	  return response.json();
	})
	.then(data => console.log(data))
	.catch(error => console.error('There was an error!', error));
	
}


	async function postJSON(data) {
		  try {
		    const response = await fetch("/base/api/v1/findUser", {
		      method: "POST", // 또는 'PUT'
		      headers: {
		        "Content-Type": "application/json",
		      },
		      body: JSON.stringify(data),
		    });
	
		    const result = await response.json();
		    console.log("성공:", result);
		  } catch (error) {
		    console.error("실패:", error);
		  }
	}

	
	function fnPostFetch(){
		const data = { 	mapper : "TA1001M.TA1001MMapper",
	         			   sql : "findUser",};
		postJSON(data);	
	}
	

</script>

  
  <%@include file="../../include/footer.jsp" %>
  