<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0">AMDIN Dashboard</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">AMDIN Dashboard v1</li>
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
        
        <!-- Small boxes (Stat box) -->
        <div class="row">
        
          <div class="col-lg-3 col-6">
            <!-- small box -->
            <div class="small-box bg-info">
              <div class="inner">
                <h3>150</h3>

                <p>1 BOX</p>
              </div>
              <div class="icon">
                <i class="ion ion-bag"></i>
              </div>
              <a href="#" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
            </div>
          </div>
           <!-- ./col -->
         
          <div class="col-lg-3 col-6">
            <!-- small box -->
            <div class="small-box bg-success">
              <div class="inner">
                <h3>53<sup style="font-size: 20px">%</sup></h3>

                <p>2 BOX</p>
              </div>
              <div class="icon">
                <i class="ion ion-stats-bars"></i>
              </div>
              <a href="#" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
            </div>
          </div>
          <!-- ./col -->
          
          <div class="col-lg-3 col-6">
            <!-- small box -->
            <div class="small-box bg-warning">
              <div class="inner">
                <h3>44</h3>

                <p>3 BOX</p>
              </div>
              <div class="icon">
                <i class="ion ion-person-add"></i>
              </div>
              <a href="#" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
            </div>
          </div>
          <!-- ./col -->
          
          <div class="col-lg-3 col-6">
            <!-- small box -->
            <div class="small-box bg-danger">
              <div class="inner">
                <h3>65</h3>

                <p>4 BOX</p>
              </div>
              <div class="icon">
                <i class="ion ion-pie-graph"></i>
              </div>
              <a href="#" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
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
      <div class="container-fluid">
        <div class="row">
          <div class="col-12">

            <div class="card">
              <div class="card-header">
                <h3 class="card-title">DataTable with default features</h3>
              </div>
              <!-- /.card-header -->
              
              <div class="card-body">
                <div id="example1_wrapper" class="dataTables_wrapper dt-bootstrap4">
                
                <!-- <div class="row">
	                <div class="col-sm-12 col-md-6">
		                <div class="dt-buttons btn-group flex-wrap">
		                	<button class="btn btn-secondary buttons-copy buttons-html5" tabindex="0" aria-controls="example1" type="button"><span>Copy</span></button>
		                	<button class="btn btn-secondary buttons-csv buttons-html5" tabindex="0" aria-controls="example1" type="button"><span>CSV</span></button>
		                	<button class="btn btn-secondary buttons-excel buttons-html5" tabindex="0" aria-controls="example1" type="button"><span>Excel</span></button>
		                	<button class="btn btn-secondary buttons-pdf buttons-html5" tabindex="0" aria-controls="example1" type="button"><span>PDF</span></button>
		                	<button class="btn btn-secondary buttons-print" tabindex="0" aria-controls="example1" type="button"><span>Print</span></button>
		                	
		                	<div class="btn-group">
		                		<button class="btn btn-secondary buttons-collection dropdown-toggle buttons-colvis" tabindex="0" aria-controls="example1" type="button" aria-haspopup="true">
		                		<span>Column visibility</span><span class="dt-down-arrow"></span>
		                		</button>
		                	</div> 
		                	
		                </div>
	                
	                </div>
	                	
	                <div class="col-sm-12 col-md-6">
	                	<div id="example1_filter" class="dataTables_filter">
	                		<label>Search:<input type="search" class="form-control form-control-sm" placeholder="" aria-controls="example1"></label>
	                	</div>
	                </div>
                </div> -->
                	
                <div class="row">
	                <div class="col-sm-12">
		                <table id="example1" class="table table-bordered table-striped dataTable dtr-inline" aria-describedby="example1_info">
		                  <thead>
		                  <tr>
		                  <th class="sorting sorting_asc" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Rendering engine: activate to sort column descending">순번</th>
		                  <th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" aria-label="Browser: activate to sort column ascending">id</th>
		                  <th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" aria-label="Platform(s): activate to sort column ascending">pw</th>
		                  <th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" aria-label="Engine version: activate to sort column ascending">name</th>
		                  <th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" aria-label="CSS grade: activate to sort column ascending">age</th>
		                  </tr>
		                  </thead>
		                  <tbody id="table-data">
			                  <!-- <tr class="odd">
			                    <td class="dtr-control sorting_1" tabindex="0">Gecko</td>
			                    <td>Firefox 1.0</td>
			                    <td>Win 98+ / OSX.2+</td>
			                    <td>1.7</td>
			                    <td>A</td>
			                  </tr>
			                  <tr class="even">
			                    <td class="dtr-control sorting_1" tabindex="0">Gecko</td>
			                    <td>Firefox 1.5</td>
			                    <td>Win 98+ / OSX.2+</td>
			                    <td>1.8</td>
			                    <td>A</td>
			                   </tr>  -->
		                  </tbody>
		                 <!--  <tfoot>
		                  <tr><th rowspan="1" colspan="1">Rendering engine</th><th rowspan="1" colspan="1">Browser</th><th rowspan="1" colspan="1">Platform(s)</th><th rowspan="1" colspan="1">Engine version</th><th rowspan="1" colspan="1">CSS grade</th></tr>
		                  </tfoot> -->
		                </table>
	                </div>
                </div>
                <!-- 
                <div class="row">
                	<div class="col-sm-12 col-md-5">
                		<div class="dataTables_info" id="example1_info" role="status" aria-live="polite">Showing 1 to 10 of 57 entries</div>
                	</div>
                	
                	<div class="col-sm-12 col-md-7">
                		<div class="dataTables_paginate paging_simple_numbers" id="example1_paginate">
                			<ul class="pagination">
                				<li class="paginate_button page-item previous disabled" id="example1_previous">
                					<a href="#" aria-controls="example1" data-dt-idx="0" tabindex="0" class="page-link">Previous</a>
                				</li>
                				
                				<li class="paginate_button page-item active">
                					<a href="#" aria-controls="example1" data-dt-idx="1" tabindex="0" class="page-link">1</a>
                				</li>
                				
                				<li class="paginate_button page-item ">
                					<a href="#" aria-controls="example1" data-dt-idx="2" tabindex="0" class="page-link">2</a>
                				</li>
                				
                				<li class="paginate_button page-item ">
                					<a href="#" aria-controls="example1" data-dt-idx="3" tabindex="0" class="page-link">3</a>
                				</li>
                				
                				<li class="paginate_button page-item ">
                					<a href="#" aria-controls="example1" data-dt-idx="4" tabindex="0" class="page-link">4</a>
                				</li>
                				
                				<li class="paginate_button page-item ">
                					<a href="#" aria-controls="example1" data-dt-idx="5" tabindex="0" class="page-link">5</a>
                				</li>
                				
                				<li class="paginate_button page-item ">
                					<a href="#" aria-controls="example1" data-dt-idx="6" tabindex="0" class="page-link">6</a>
                				</li>
                				
                				<li class="paginate_button page-item next" id="example1_next">
                					<a href="#" aria-controls="example1" data-dt-idx="7" tabindex="0" class="page-link">Next</a>
                				</li>
                				
                			</ul>
                		</div>
                	</div>
                </div> -->
                
               </div>
              </div>
              <!-- /.card-body -->
            </div>
            <!-- /.card -->
            
           
          </div>
          <!-- /.col -->
        </div>
        <!-- /.row -->
      </div>
      <!-- /.container-fluid -->
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
	 
});


function fnSearch(){
	
	 var table = $('#example1').DataTable();
	 
	 $.ajax({
	        url: "/base/api/v1/user",
	        type: "post",
	        
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
					
					
					return [idx +1,user.id , user.pw, user.name, user.age]; // Map the user data to the table columns
                      
				})).draw(); 
	        	  
	        },
	        error: function(errorThrown) {
	            alert(errorThrown.statusText);
	        }
	    });
	 

}

</script>

  
  