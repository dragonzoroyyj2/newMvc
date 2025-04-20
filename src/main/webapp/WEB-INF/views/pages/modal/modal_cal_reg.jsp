<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>

<div class="modal-dialog">
  <div class="modal-content">
    <div class="modal-header">
      <h4 class="modal-title">${modal_title}</h4>
      <button type="button" class="close" data-dismiss="modal" aria-label="Close">
        <span aria-hidden="true">×</span>
      </button>
    </div>
    <div class="modal-body">
      <p id="modalText">${modal_text}</p>
      
      
			<div class="card-body">
			    <div class="btn-group" style="width: 100%; margin-bottom: 10px;">
			      <ul class="fc-color-picker" id="color-chooser">
			        <li><a class="text-primary" href="#"><i class="fas fa-square"></i></a></li>
			        <li><a class="text-warning" href="#"><i class="fas fa-square"></i></a></li>
			        <li><a class="text-success" href="#"><i class="fas fa-square"></i></a></li>
			        <li><a class="text-danger" href="#"><i class="fas fa-square"></i></a></li>
			        <li><a class="text-muted" href="#"><i class="fas fa-square"></i></a></li>
			      </ul>
			    </div>
			    <!-- /btn-group -->
			    <div class="input-group">
			      <input id="new-event" type="text" class="form-control" placeholder="Event Title">
			
			      <div class="input-group-append">
			        <button id="add-new-event" type="button" class="btn btn-primary">+</button>
			      </div>
			      <!-- /btn-group -->
			    </div>
			    <!-- /input-group -->
			</div>
      
      
    </div>
    <div class="modal-footer justify-content-between">
      <button type="button" class="btn btn-default" data-dismiss="modal" id ="modal-default-close" >Close</button>
    </div>
  </div>
</div>

<script>



</script>


