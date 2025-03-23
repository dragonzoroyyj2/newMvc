<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
   <a href="/" class="brand-link">
     <img src="/resources/static/favicon-32x32.png" alt="AdminLTE Logo" class="brand-image img-circle elevation-3" style="opacity: .8">
     <span class="brand-text font-weight-light">Good Luck</span>
   </a>

    <!-- Sidebar -->
    <div class="sidebar">

      <!-- Sidebar Menu -->
      <nav class="mt-2">
      
		<ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
         
         <li class="nav-header">USER</li>
         <li class="nav-item">
           <a href="/pages/insa/page1" class="nav-link" ><i class="nav-icon far fa-image"></i><p>Gallery</p></a>
         </li>
         <li class="nav-item">
           <a href="/pages/insa/page2" class="nav-link"><i class="nav-icon fas fa-columns"></i><p>Kanban Board</p></a>
         </li>
         
         <li class="nav-header">ADMIN</li>
         <li class="nav-item">
           <a href="/pages/admin/boardPage" class="nav-link"><i class="fas fa-circle nav-icon"></i><p>adminPage1</p></a>
         </li>
         
         <li class="nav-header">SYSTEM</li>
         <li class="nav-item">
            <a href="#" class="nav-link">
              <i class="nav-icon fas fa-table"></i>
              <p>
                메뉴관리
                <i class="fas fa-angle-left right"></i>
              </p>
            </a>
            <ul class="nav nav-treeview" style="display: none;">
              <li class="nav-item">
                <a href="/pages/sys/sysmnu/sysmnu001M" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>프로그램 등록</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="tables/data.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>메뉴 등록</p>
                </a>
              </li>
            </ul>
          </li>
         
       </ul>
      
      
      </nav>
      <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
  </aside>