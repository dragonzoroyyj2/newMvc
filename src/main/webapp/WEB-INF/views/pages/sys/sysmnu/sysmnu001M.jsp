<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="spring"%>
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
<!-- 콘텐츠 시작 -->
<!-- ------------------------------------------------------------------------------------------------------------------------------- -->  
<section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>프로그램 등록</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">프로그램 등록</li>
            </ol>
          </div>
        </div>
      </div>
</section>    
    

<section class="content">
     <div class="container-fluid">
       <div class="row">
         
         <div class="col-md-8">

           <div class="card card-primary">
             <div class="card-header">
               <h3 class="card-title">프로그램 정보</h3>
             </div>
             
             <form>
              <div class="card-body">
              
                <div class="form-group">
                  <label for="exampleInputBorder">프로그램 파일명</label>
                  <input type="text" class="form-control form-control-border" id="exampleInputBorder" placeholder="프로그램 파일명">
                </div>
                <div class="form-group">
                  <label for="exampleInputBorderWidth2">프로그램 경로</label>
                  <input type="text" class="form-control form-control-border border-width-2" id="exampleInputBorderWidth2" placeholder="프로그램 경로">
                </div>
                <div class="form-group">
                  <label for="exampleSelectBorder">그룹</label>
                  <select class="custom-select form-control-border" id="exampleSelectBorder">
                    <option value="A">그룹A</option>
                    <option value="B">그룹B</option>
                    <option value="C">그룹C</option>
                  </select>
                </div>
                <div class="form-group">
                  <label for="exampleSelectRounded0">사용유무</label>
                  <select class="custom-select rounded-0" id="exampleSelectRounded0">
                    <option>사용</option>
                    <option>사용안함</option>
                  </select>
                </div>
              </div> 
              
              <div class="card-footer">
                 <button type="submit" class="btn btn-primary">저장</button>
                 <button type="button" class="btn btn-primary">초기화</button>
              </div>
            </form>

         </div>
         
       </div>
     	</div>
     </div>
</section>    
<!-- ------------------------------------------------------------------------------------------------------------------------------- -->    
<!-- 콘텐츠 종료 -->    
</div>
<!-- /.content-wrapper -->



<script>


	
	

</script>

  
  