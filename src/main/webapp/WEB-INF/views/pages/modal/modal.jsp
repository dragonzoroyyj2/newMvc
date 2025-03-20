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
    </div>
    <div class="modal-footer justify-content-between">
      <button type="button" class="btn btn-default" data-dismiss="modal" id ="modal-default-close" >Close</button>
    </div>
  </div>
</div>
