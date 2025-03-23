<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="spring"%>


<!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0">MyFamily</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">MyFamily</li>
            </ol>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    
    <!-- 1. row start : DashBoard ----------------------------------------------------------------------------------------------------- -->
    <section class="content">
      <div class="container-fluid">
        
        <div class="row">
        
          <div class="col-lg-3 col-6">
            <!-- small box -->
            <div class="small-box bg-info">
              <div class="inner">
                <h3>아빠</h3>
              </div>
              <div class="icon">
                <i class="ion ion-bag"></i>
              </div>
              
              <!-- <a href="javascript:void(0);" onclick="fnModal();" class="small-box-footer family-info" data-family-code="father" > -->
              <a href="#" class="small-box-footer family-info" data-family-code="father"  >
              More info <i class="fas fa-arrow-circle-right"></i>
              </a>
            </div>
          </div>
           <!-- ./col -->
         
          <div class="col-lg-3 col-6">
            <!-- small box -->
            <div class="small-box bg-success">
              <div class="inner">
                <h3>엄마</h3>

              </div>
              <div class="icon">
                <i class="ion ion-stats-bars"></i>
              </div>
              <a href="#" class="small-box-footer family-info" data-family-code="mom"  >
              More info <i class="fas fa-arrow-circle-right"></i>
              </a>
            </div>
          </div>
          <!-- ./col -->
          
          <div class="col-lg-3 col-6">
            <!-- small box -->
            <div class="small-box bg-warning">
              <div class="inner">
                <h3>인우</h3>
              </div>
              <div class="icon">
                <i class="ion ion-person-add"></i>
              </div>
              <a href="#" class="small-box-footer family-info" data-family-code="son"  >
              More info <i class="fas fa-arrow-circle-right"></i>
              </a>
            </div>
          </div>
          <!-- ./col -->
          
          <div class="col-lg-3 col-6">
            <!-- small box -->
            <div class="small-box bg-blue">
              <div class="inner">
                <h3>인아</h3>
              </div>
              <div class="icon">
                <i class="ion ion-pie-graph"></i>
              </div>
              <a href="#" class="small-box-footer family-info" data-family-code="daughter" >
              More info <i class="fas fa-arrow-circle-right"></i>
              </a>
            </div>
          </div>
          <!-- ./col -->

        </div>
        <!-- /.row -->
        
        
        
      
      </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
    <!-- 1. row end : DashBoard ----------------------------------------------------------------------------------------------------- -->
    
    
    <!-- 2. row start : table ----------------------------------------------------------------------------------------------------- -->
	<section class="content">

      <!-- Default box -->
      <div class="card card-solid">
        <div class="card-body pb-0">
          <div class="row">

				<!-- card start -->
				<div class="col-12 col-sm-5 col-md-6 d-flex align-items-stretch flex-column">
	              <div class="card bg-light d-flex flex-fill">
	                <div class="card-header text-muted border-bottom-0">
	                  Digital Strategist
	                </div>
	                <div class="card-body pt-0">
	                  <div class="row">
	                    <div class="col-7">
	                      <h2 class="lead"><b>아빠</b></h2>
	                      <p class="text-muted text-sm"><b>About: </b> Web Designer / UX / Graphic Artist / Coffee Lover </p>
	                      <ul class="ml-4 mb-0 fa-ul text-muted">
	                        <li class="small"><span class="fa-li"><i class="fas fa-lg fa-building"></i></span> Address: Demo Street 123, Demo City 04312, NJ</li>
	                        <li class="small"><span class="fa-li"><i class="fas fa-lg fa-phone"></i></span> Phone #: + 800 - 12 12 23 52</li>
	                      </ul>
	                    </div>
	                    <div class="col-5 text-center">
	                      <img src="/resources/dist/img/family/yj1.png" alt="user-avatar" class="img-circle img-fluid">
	                    </div>
	                  </div>
	                </div>
	                <div class="card-footer">
	                  <div class="text-right">
	                    <a href="#" class="btn btn-sm bg-teal">
	                      <i class="fas fa-comments"></i>
	                    </a>
	                    <a href="#" class="btn btn-sm btn-primary">
	                      <i class="fas fa-user"></i> View Profile
	                    </a>
	                  </div>
	                </div>
	              </div>
	            </div>
				<!-- card end -->
          


				<!-- card start -->
				<div class="col-12 col-sm-5 col-md-6 d-flex align-items-stretch flex-column">
	              <div class="card bg-light d-flex flex-fill">
	                <div class="card-header text-muted border-bottom-0">
	                  Digital Strategist
	                </div>
	                <div class="card-body pt-0">
	                  <div class="row">
	                    <div class="col-7">
	                      <h2 class="lead"><b>엄마</b></h2>
	                      <p class="text-muted text-sm"><b>About: </b> Web Designer / UX / Graphic Artist / Coffee Lover </p>
	                      <ul class="ml-4 mb-0 fa-ul text-muted">
	                        <li class="small"><span class="fa-li"><i class="fas fa-lg fa-building"></i></span> Address: Demo Street 123, Demo City 04312, NJ</li>
	                        <li class="small"><span class="fa-li"><i class="fas fa-lg fa-phone"></i></span> Phone #: + 800 - 12 12 23 52</li>
	                      </ul>
	                    </div>
	                    <div class="col-5 text-center">
	                      <img src="/resources/dist/img/family/hw1.png" alt="user-avatar" class="img-circle img-fluid">
	                    </div>
	                  </div>
	                </div>
	                <div class="card-footer">
	                  <div class="text-right">
	                    <a href="#" class="btn btn-sm bg-teal">
	                      <i class="fas fa-comments"></i>
	                    </a>
	                    <a href="#" class="btn btn-sm btn-primary">
	                      <i class="fas fa-user"></i> View Profile
	                    </a>
	                  </div>
	                </div>
	              </div>
	            </div>
				<!-- card end -->
				

				<!-- card start -->
				<div class="col-12 col-sm-5 col-md-6 d-flex align-items-stretch flex-column">
	              <div class="card bg-light d-flex flex-fill">
	                <div class="card-header text-muted border-bottom-0">
	                  Digital Strategist
	                </div>
	                <div class="card-body pt-0">
	                  <div class="row">
	                    <div class="col-7">
	                      <h2 class="lead"><b>인우</b></h2>
	                      <p class="text-muted text-sm"><b>About: </b> Web Designer / UX / Graphic Artist / Coffee Lover </p>
	                      <ul class="ml-4 mb-0 fa-ul text-muted">
	                        <li class="small"><span class="fa-li"><i class="fas fa-lg fa-building"></i></span> Address: Demo Street 123, Demo City 04312, NJ</li>
	                        <li class="small"><span class="fa-li"><i class="fas fa-lg fa-phone"></i></span> Phone #: + 800 - 12 12 23 52</li>
	                      </ul>
	                    </div>
	                    <div class="col-5 text-center">
	                      <img src="/resources/dist/img/family/inwoo.png" alt="user-avatar" class="img-circle img-fluid">
	                    </div>
	                  </div>
	                </div>
	                <div class="card-footer">
	                  <div class="text-right">
	                    <a href="#" class="btn btn-sm bg-teal">
	                      <i class="fas fa-comments"></i>
	                    </a>
	                    <a href="#" class="btn btn-sm btn-primary">
	                      <i class="fas fa-user"></i> View Profile
	                    </a>
	                  </div>
	                </div>
	              </div>
	            </div>
				<!-- card end -->
				
								            
				<!-- card start -->
				<div class="col-12 col-sm-5 col-md-6 d-flex align-items-stretch flex-column">
	              <div class="card bg-light d-flex flex-fill">
	                <div class="card-header text-muted border-bottom-0">
	                  Digital Strategist
	                </div>
	                <div class="card-body pt-0">
	                  <div class="row">
	                    <div class="col-7">
	                      <h2 class="lead"><b>인아</b></h2>
	                      <p class="text-muted text-sm"><b>About: </b> Web Designer / UX / Graphic Artist / Coffee Lover </p>
	                      <ul class="ml-4 mb-0 fa-ul text-muted">
	                        <li class="small"><span class="fa-li"><i class="fas fa-lg fa-building"></i></span> Address: Demo Street 123, Demo City 04312, NJ</li>
	                        <li class="small"><span class="fa-li"><i class="fas fa-lg fa-phone"></i></span> Phone #: + 800 - 12 12 23 52</li>
	                      </ul>
	                    </div>
	                    <div class="col-5 text-center">
	                      <img src="/resources/dist/img/family/ina.png" alt="user-avatar" class="img-circle img-fluid">
	                    </div>
	                  </div>
	                </div>
	                <div class="card-footer">
	                  <div class="text-right">
	                    <a href="#" class="btn btn-sm bg-teal">
	                      <i class="fas fa-comments"></i>
	                    </a>
	                    <a href="#" class="btn btn-sm btn-primary">
	                      <i class="fas fa-user"></i> View Profile
	                    </a>
	                  </div>
	                </div>
	              </div>
	            </div>
				<!-- card end -->								            
          </div>
        </div>
        <!-- /.card-body -->
        
        <!-- /.card-footer -->
      </div>
      <!-- /.card -->

    </section>

    <!-- 2. row end : table ----------------------------------------------------------------------------------------------------- -->
    
    
    
    
    
  </div>
  <!-- /.content-wrapper -->



<script>
  
  
$(document).ready(function(){
	
	  $("#example1").DataTable({
		  //"info": true,
		  //"paging": false,
		  "searching": true,
		  "ordering": true,
		  "pageLength":5,
	      "responsive": true,
	      "lengthChange": false,
	      "autoWidth": false,
	      "buttons": ["copy", "csv", "excel", "pdf", "print", "colvis"]
	    }).buttons().container().appendTo('#example1_wrapper .col-md-6:eq(0)'); 
	
	  fnSearch();
	  
	  fnSearch2();
	 
});



//'button-class'라는 클래스를 가진 모든 버튼에 클릭 이벤트를 등록

const modal_buttons = document.querySelectorAll('.family-info');

modal_buttons.forEach(button => {
  button.addEventListener('click', function(event) {
	  
	  console.log(event.target.dataset.familyCode);
	  const sFamilyCode = event.target.dataset;//data-family-code
	  
		fetch('/modal/modal', {
			  method: 'post',
			  headers: {
	                'Content-Type': 'application/json',
	                [csrfHeader]: csrfToken  // CSRF 토큰을 헤더에 추가
	            },
	            credentials: 'same-origin',  // 세션 쿠키 사용
			  
			  body: JSON.stringify(sFamilyCode)
			}).then(response => response.text())
			  .then(html => {
				  	console.log(html);
				       
				  	
			        $('#modal-default').append(html).modal({keyboard:false, mouse:false});
			        
			});
	  
  });
});

/* $("#btnComModal").click(function(){
	alert('11');
	//var data = $(this).data('id');
    //$("#contents.body-contents").val(data);
    //$("#text-contents.body-contents").html(data);
});

//모든 .btn 클래스 버튼을 선택

$('#btnComModal').on("click", function(event) {
alert('11');
});

$(document).on("click", "#OrderDibtnComModalalog", function () { 
	alert('11');
	});
 */

 


function fnSearch(){
	
	 var table = $('#example1').DataTable();
	 
	 $.ajax({
	        url: "/base/api/v1/user",
	        method: 'POST',
            headers: {
                'Content-Type': 'application/json',
                [csrfHeader]: csrfToken  // CSRF 토큰을 헤더에 추가
            },
	        data: JSON.stringify({
	        	mapper : "TA1001M.TA1001MMapper",
	            sql: "selectTA1001M",
	            
	        }),
	        contentType: "application/json",
	        dataType: "json",
	        success: function(result) {
				console.log("result : ", result);
	        	 
				table.clear();
				
				
				table.rows.add( result.data.map(function(user,idx) {
					
					console.log(user);
					
					
					return [idx +1, user.id , user.pw, user.name, user.age]; // Map the user data to the table columns
                      
				})).draw(); 
				
				
	        },
	        error: function(errorThrown) {
	            alert(errorThrown.statusText);
	        }
	    });
	 

}


function fnSearch2(){
	
	 
	 $.ajax({
	        url: "/base/api/v1/member",
	        method: 'POST',
            headers: {
                'Content-Type': 'application/json',
                [csrfHeader]: csrfToken  // CSRF 토큰을 헤더에 추가
            },
	        data: JSON.stringify({
	        	user_name : "test1",
	            
	        }),
	        contentType: "application/json",
	        dataType: "json",
	        success: function(result) {
				console.log("search2 result : ", result);
	        	 
	        },
	        error: function(errorThrown) {
	            alert(errorThrown.statusText);
	        }
	    });
	 

}



async function postJSON(data) {
	try {
			const response = await fetch("/userInsert", {
				  method: "POST", // 또는 'PUT'
				  headers: {
				    "Content-Type": "application/json",
				    [csrfHeader]: csrfToken  // 메타 태그에서 읽은 CSRF 헤더와 토큰 사용
				  },
				  body: JSON.stringify(data),
			});

		    //const result = await response.json();
		    const result = await response.text();
		    console.log("성공:", result);
	    
	} catch (error) {
	    console.error("실패:", error);
	}
}


	
function fnUserInsert(){
	
	const data = { 
			user_id		: "test1" ,
			password	: "test1" ,
			username	: "test1" ,
			name		: "name1" 
		 };
	
	postJSON(data);
}	
	
	
	
async function postAddMemberJSON(data) {		
	try {
			const response = await fetch("/addMember", {
				  method: "POST", // 또는 'PUT'
				  headers: {
				    "Content-Type": "application/json",
				    [csrfHeader]: csrfToken  // 메타 태그에서 읽은 CSRF 헤더와 토큰 사용
				  },
				  body: JSON.stringify(data),
			});

		    //const result = await response.json();
		    const result = await response.text();
		    console.log("성공:", result);
	    
	} catch (error) {
	    console.error("실패:", error);
	}
}


	
function fnAddMember(){
	
	const data = { 
			pass	: "1234" ,
		 };
	
	postAddMemberJSON(data);
}	
	
	

</script>

  
  