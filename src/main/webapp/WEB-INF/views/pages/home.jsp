<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="spring"%>
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper" style="min-height: 1172.56px;">

	<section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Calendar</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">Calendar</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <div class="row">
         
       <!--    <div class="col-md-3" style="display: none;">
            <div class="sticky-top mb-3">
              <div class="card">
                <div class="card-header">
                  <h4 class="card-title">Draggable Events</h4>
                </div>
                <div class="card-body">
                  <div id="external-events">
                    <div class="external-event bg-success ui-draggable ui-draggable-handle" style="position: relative;">Lunch</div>
                    <div class="external-event bg-warning ui-draggable ui-draggable-handle" style="position: relative;">Go home</div>
                    <div class="external-event bg-info ui-draggable ui-draggable-handle" style="position: relative;">Do homework</div>
                    <div class="external-event bg-primary ui-draggable ui-draggable-handle" style="position: relative;">Work on UI design</div>
                    <div class="external-event bg-danger ui-draggable ui-draggable-handle" style="position: relative;">Sleep tight</div>
                    <div class="checkbox">
                      <label for="drop-remove">
                        <input type="checkbox" id="drop-remove">
                        remove after drop
                      </label>
                    </div>
                  </div>
                </div>
              </div>
              
            <div class="card">
                <div class="card-header">
                  <h3 class="card-title">Create Event</h3>
                </div>
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
                  <div class="input-group">
                    <input id="new-event" type="text" class="form-control" placeholder="Event Title">

                    <div class="input-group-append">
                      <button id="add-new-event" type="button" class="btn btn-primary">Add</button>
                    </div>
                  </div>
                </div>
              </div> 
              
            </div>
          </div> -->
          
          <div class="col-md-12">
            <div class="card card-primary">
              <div class="card-body p-0">
                <!-- THE CALENDAR -->
					<div id="calendar"	class="fc fc-media-screen fc-direction-ltr fc-theme-bootstrap" >
						
					<!-- 	<div class="fc-header-toolbar fc-toolbar fc-toolbar-ltr">
							<div class="fc-toolbar-chunk">
								<div class="btn-group">
									<button type="button" title="Previous month"
										aria-pressed="false" class="fc-prev-button btn btn-primary">
										<span class="fa fa-chevron-left"></span>
									</button>
									<button type="button" title="Next month" aria-pressed="false"
										class="fc-next-button btn btn-primary">
										<span class="fa fa-chevron-right"></span>
									</button>
								</div>
								<button type="button" title="This month" disabled=""
									aria-pressed="false" class="fc-today-button btn btn-primary">today</button>
							</div>
							<div class="fc-toolbar-chunk">
								<h2 class="fc-toolbar-title" id="fc-dom-1">March 2025</h2>
							</div>
							<div class="fc-toolbar-chunk">
								<div class="btn-group">
									<button type="button" title="month view" aria-pressed="true"
										class="fc-dayGridMonth-button btn btn-primary active">month</button>
									<button type="button" title="week view" aria-pressed="false"
										class="fc-timeGridWeek-button btn btn-primary">week</button>
									<button type="button" title="day view" aria-pressed="false"
										class="fc-timeGridDay-button btn btn-primary">day</button>
								</div>
							</div>
						</div> -->
						
						<!-- <div aria-labelledby="fc-dom-1" class="fc-view-harness fc-view-harness-active" style="height: 265.926px;"><div class="fc-daygrid fc-dayGridMonth-view fc-view"><table role="grid" class="fc-scrollgrid table-bordered fc-scrollgrid-liquid"><thead role="rowgroup"><tr role="presentation" class="fc-scrollgrid-section fc-scrollgrid-section-header "><th role="presentation"><div class="fc-scroller-harness"><div class="fc-scroller" style="overflow: hidden scroll;"><table role="presentation" class="fc-col-header " style="width: 357px;"><colgroup></colgroup><thead role="presentation"><tr role="row"><th role="columnheader" class="fc-col-header-cell fc-day fc-day-sun"><div class="fc-scrollgrid-sync-inner"><a aria-label="Sunday" class="fc-col-header-cell-cushion ">Sun</a></div></th><th role="columnheader" class="fc-col-header-cell fc-day fc-day-mon"><div class="fc-scrollgrid-sync-inner"><a aria-label="Monday" class="fc-col-header-cell-cushion ">Mon</a></div></th><th role="columnheader" class="fc-col-header-cell fc-day fc-day-tue"><div class="fc-scrollgrid-sync-inner"><a aria-label="Tuesday" class="fc-col-header-cell-cushion ">Tue</a></div></th><th role="columnheader" class="fc-col-header-cell fc-day fc-day-wed"><div class="fc-scrollgrid-sync-inner"><a aria-label="Wednesday" class="fc-col-header-cell-cushion ">Wed</a></div></th><th role="columnheader" class="fc-col-header-cell fc-day fc-day-thu"><div class="fc-scrollgrid-sync-inner"><a aria-label="Thursday" class="fc-col-header-cell-cushion ">Thu</a></div></th><th role="columnheader" class="fc-col-header-cell fc-day fc-day-fri"><div class="fc-scrollgrid-sync-inner"><a aria-label="Friday" class="fc-col-header-cell-cushion ">Fri</a></div></th><th role="columnheader" class="fc-col-header-cell fc-day fc-day-sat"><div class="fc-scrollgrid-sync-inner"><a aria-label="Saturday" class="fc-col-header-cell-cushion ">Sat</a></div></th></tr></thead></table></div></div></th></tr></thead><tbody role="rowgroup"><tr role="presentation" class="fc-scrollgrid-section fc-scrollgrid-section-body  fc-scrollgrid-section-liquid"><td role="presentation"><div class="fc-scroller-harness fc-scroller-harness-liquid"><div class="fc-scroller fc-scroller-liquid-absolute" style="overflow: hidden scroll;"><div class="fc-daygrid-body fc-daygrid-body-unbalanced " style="width: 357px;"><table role="presentation" class="fc-scrollgrid-sync-table" style="width: 357px; height: 234px;"><colgroup></colgroup><tbody role="presentation"><tr role="row"><td role="gridcell" class="fc-daygrid-day fc-day fc-day-sun fc-day-past fc-day-other" data-date="2025-02-23" aria-labelledby="fc-dom-2"><div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner"><div class="fc-daygrid-day-top"><a id="fc-dom-2" class="fc-daygrid-day-number" aria-label="February 23, 2025">23</a></div><div class="fc-daygrid-day-events"><div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div></div><div class="fc-daygrid-day-bg"></div></div></td><td role="gridcell" class="fc-daygrid-day fc-day fc-day-mon fc-day-past fc-day-other" data-date="2025-02-24" aria-labelledby="fc-dom-4"><div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner"><div class="fc-daygrid-day-top"><a id="fc-dom-4" class="fc-daygrid-day-number" aria-label="February 24, 2025">24</a></div><div class="fc-daygrid-day-events"><div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div></div><div class="fc-daygrid-day-bg"></div></div></td><td role="gridcell" class="fc-daygrid-day fc-day fc-day-tue fc-day-past fc-day-other" data-date="2025-02-25" aria-labelledby="fc-dom-6"><div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner"><div class="fc-daygrid-day-top"><a id="fc-dom-6" class="fc-daygrid-day-number" aria-label="February 25, 2025">25</a></div><div class="fc-daygrid-day-events"><div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div></div><div class="fc-daygrid-day-bg"></div></div></td><td role="gridcell" class="fc-daygrid-day fc-day fc-day-wed fc-day-past fc-day-other" data-date="2025-02-26" aria-labelledby="fc-dom-8"><div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner"><div class="fc-daygrid-day-top"><a id="fc-dom-8" class="fc-daygrid-day-number" aria-label="February 26, 2025">26</a></div><div class="fc-daygrid-day-events"><div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div></div><div class="fc-daygrid-day-bg"></div></div></td><td role="gridcell" class="fc-daygrid-day fc-day fc-day-thu fc-day-past fc-day-other" data-date="2025-02-27" aria-labelledby="fc-dom-10"><div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner"><div class="fc-daygrid-day-top"><a id="fc-dom-10" class="fc-daygrid-day-number" aria-label="February 27, 2025">27</a></div><div class="fc-daygrid-day-events"><div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div></div><div class="fc-daygrid-day-bg"></div></div></td><td role="gridcell" class="fc-daygrid-day fc-day fc-day-fri fc-day-past fc-day-other" data-date="2025-02-28" aria-labelledby="fc-dom-12"><div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner"><div class="fc-daygrid-day-top"><a id="fc-dom-12" class="fc-daygrid-day-number" aria-label="February 28, 2025">28</a></div><div class="fc-daygrid-day-events"><div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div></div><div class="fc-daygrid-day-bg"></div></div></td><td role="gridcell" class="fc-daygrid-day fc-day fc-day-sat fc-day-past" data-date="2025-03-01" aria-labelledby="fc-dom-14"><div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner"><div class="fc-daygrid-day-top"><a id="fc-dom-14" class="fc-daygrid-day-number" aria-label="March 1, 2025">1</a></div><div class="fc-daygrid-day-events"><div class="fc-daygrid-event-harness" style="margin-top: 0px;"><a class="fc-daygrid-event fc-daygrid-block-event fc-h-event fc-event fc-event-draggable fc-event-resizable fc-event-start fc-event-end fc-event-past" style="border-color: rgb(245, 105, 84); background-color: rgb(245, 105, 84);"><div class="fc-event-main"><div class="fc-event-main-frame"><div class="fc-event-title-container"><div class="fc-event-title fc-sticky">All Day Event</div></div></div></div><div class="fc-event-resizer fc-event-resizer-end"></div></a></div><div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div></div><div class="fc-daygrid-day-bg"></div></div></td></tr><tr role="row"><td role="gridcell" class="fc-daygrid-day fc-day fc-day-sun fc-day-past" data-date="2025-03-02" aria-labelledby="fc-dom-16"><div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner"><div class="fc-daygrid-day-top"><a id="fc-dom-16" class="fc-daygrid-day-number" aria-label="March 2, 2025">2</a></div><div class="fc-daygrid-day-events"><div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div></div><div class="fc-daygrid-day-bg"></div></div></td><td role="gridcell" class="fc-daygrid-day fc-day fc-day-mon fc-day-past" data-date="2025-03-03" aria-labelledby="fc-dom-18"><div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner"><div class="fc-daygrid-day-top"><a id="fc-dom-18" class="fc-daygrid-day-number" aria-label="March 3, 2025">3</a></div><div class="fc-daygrid-day-events"><div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div></div><div class="fc-daygrid-day-bg"></div></div></td><td role="gridcell" class="fc-daygrid-day fc-day fc-day-tue fc-day-past" data-date="2025-03-04" aria-labelledby="fc-dom-20"><div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner"><div class="fc-daygrid-day-top"><a id="fc-dom-20" class="fc-daygrid-day-number" aria-label="March 4, 2025">4</a></div><div class="fc-daygrid-day-events"><div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div></div><div class="fc-daygrid-day-bg"></div></div></td><td role="gridcell" class="fc-daygrid-day fc-day fc-day-wed fc-day-past" data-date="2025-03-05" aria-labelledby="fc-dom-22"><div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner"><div class="fc-daygrid-day-top"><a id="fc-dom-22" class="fc-daygrid-day-number" aria-label="March 5, 2025">5</a></div><div class="fc-daygrid-day-events"><div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div></div><div class="fc-daygrid-day-bg"></div></div></td><td role="gridcell" class="fc-daygrid-day fc-day fc-day-thu fc-day-past" data-date="2025-03-06" aria-labelledby="fc-dom-24"><div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner"><div class="fc-daygrid-day-top"><a id="fc-dom-24" class="fc-daygrid-day-number" aria-label="March 6, 2025">6</a></div><div class="fc-daygrid-day-events"><div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div></div><div class="fc-daygrid-day-bg"></div></div></td><td role="gridcell" class="fc-daygrid-day fc-day fc-day-fri fc-day-past" data-date="2025-03-07" aria-labelledby="fc-dom-26"><div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner"><div class="fc-daygrid-day-top"><a id="fc-dom-26" class="fc-daygrid-day-number" aria-label="March 7, 2025">7</a></div><div class="fc-daygrid-day-events"><div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div></div><div class="fc-daygrid-day-bg"></div></div></td><td role="gridcell" class="fc-daygrid-day fc-day fc-day-sat fc-day-past" data-date="2025-03-08" aria-labelledby="fc-dom-28"><div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner"><div class="fc-daygrid-day-top"><a id="fc-dom-28" class="fc-daygrid-day-number" aria-label="March 8, 2025">8</a></div><div class="fc-daygrid-day-events"><div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div></div><div class="fc-daygrid-day-bg"></div></div></td></tr><tr role="row"><td role="gridcell" class="fc-daygrid-day fc-day fc-day-sun fc-day-past" data-date="2025-03-09" aria-labelledby="fc-dom-30"><div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner"><div class="fc-daygrid-day-top"><a id="fc-dom-30" class="fc-daygrid-day-number" aria-label="March 9, 2025">9</a></div><div class="fc-daygrid-day-events"><div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div></div><div class="fc-daygrid-day-bg"></div></div></td><td role="gridcell" class="fc-daygrid-day fc-day fc-day-mon fc-day-past" data-date="2025-03-10" aria-labelledby="fc-dom-32"><div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner"><div class="fc-daygrid-day-top"><a id="fc-dom-32" class="fc-daygrid-day-number" aria-label="March 10, 2025">10</a></div><div class="fc-daygrid-day-events"><div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div></div><div class="fc-daygrid-day-bg"></div></div></td><td role="gridcell" class="fc-daygrid-day fc-day fc-day-tue fc-day-past" data-date="2025-03-11" aria-labelledby="fc-dom-34"><div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner"><div class="fc-daygrid-day-top"><a id="fc-dom-34" class="fc-daygrid-day-number" aria-label="March 11, 2025">11</a></div><div class="fc-daygrid-day-events"><div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div></div><div class="fc-daygrid-day-bg"></div></div></td><td role="gridcell" class="fc-daygrid-day fc-day fc-day-wed fc-day-past" data-date="2025-03-12" aria-labelledby="fc-dom-36"><div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner"><div class="fc-daygrid-day-top"><a id="fc-dom-36" class="fc-daygrid-day-number" aria-label="March 12, 2025">12</a></div><div class="fc-daygrid-day-events"><div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div></div><div class="fc-daygrid-day-bg"></div></div></td><td role="gridcell" class="fc-daygrid-day fc-day fc-day-thu fc-day-past" data-date="2025-03-13" aria-labelledby="fc-dom-38"><div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner"><div class="fc-daygrid-day-top"><a id="fc-dom-38" class="fc-daygrid-day-number" aria-label="March 13, 2025">13</a></div><div class="fc-daygrid-day-events"><div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div></div><div class="fc-daygrid-day-bg"></div></div></td><td role="gridcell" class="fc-daygrid-day fc-day fc-day-fri fc-day-past" data-date="2025-03-14" aria-labelledby="fc-dom-40"><div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner"><div class="fc-daygrid-day-top"><a id="fc-dom-40" class="fc-daygrid-day-number" aria-label="March 14, 2025">14</a></div><div class="fc-daygrid-day-events"><div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div></div><div class="fc-daygrid-day-bg"></div></div></td><td role="gridcell" class="fc-daygrid-day fc-day fc-day-sat fc-day-past" data-date="2025-03-15" aria-labelledby="fc-dom-42"><div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner"><div class="fc-daygrid-day-top"><a id="fc-dom-42" class="fc-daygrid-day-number" aria-label="March 15, 2025">15</a></div><div class="fc-daygrid-day-events"><div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div></div><div class="fc-daygrid-day-bg"></div></div></td></tr><tr role="row"><td role="gridcell" class="fc-daygrid-day fc-day fc-day-sun fc-day-past" data-date="2025-03-16" aria-labelledby="fc-dom-44"><div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner"><div class="fc-daygrid-day-top"><a id="fc-dom-44" class="fc-daygrid-day-number" aria-label="March 16, 2025">16</a></div><div class="fc-daygrid-day-events"><div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div></div><div class="fc-daygrid-day-bg"></div></div></td><td role="gridcell" class="fc-daygrid-day fc-day fc-day-mon fc-day-past" data-date="2025-03-17" aria-labelledby="fc-dom-46"><div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner"><div class="fc-daygrid-day-top"><a id="fc-dom-46" class="fc-daygrid-day-number" aria-label="March 17, 2025">17</a></div><div class="fc-daygrid-day-events"><div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div></div><div class="fc-daygrid-day-bg"></div></div></td><td role="gridcell" class="fc-daygrid-day fc-day fc-day-tue fc-day-past" data-date="2025-03-18" aria-labelledby="fc-dom-48"><div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner"><div class="fc-daygrid-day-top"><a id="fc-dom-48" class="fc-daygrid-day-number" aria-label="March 18, 2025">18</a></div><div class="fc-daygrid-day-events"><div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div></div><div class="fc-daygrid-day-bg"></div></div></td><td role="gridcell" class="fc-daygrid-day fc-day fc-day-wed fc-day-past" data-date="2025-03-19" aria-labelledby="fc-dom-50"><div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner"><div class="fc-daygrid-day-top"><a id="fc-dom-50" class="fc-daygrid-day-number" aria-label="March 19, 2025">19</a></div><div class="fc-daygrid-day-events"><div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div></div><div class="fc-daygrid-day-bg"></div></div></td><td role="gridcell" class="fc-daygrid-day fc-day fc-day-thu fc-day-past" data-date="2025-03-20" aria-labelledby="fc-dom-52"><div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner"><div class="fc-daygrid-day-top"><a id="fc-dom-52" class="fc-daygrid-day-number" aria-label="March 20, 2025">20</a></div><div class="fc-daygrid-day-events"><div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div></div><div class="fc-daygrid-day-bg"></div></div></td><td role="gridcell" class="fc-daygrid-day fc-day fc-day-fri fc-day-past" data-date="2025-03-21" aria-labelledby="fc-dom-54"><div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner"><div class="fc-daygrid-day-top"><a id="fc-dom-54" class="fc-daygrid-day-number" aria-label="March 21, 2025">21</a></div><div class="fc-daygrid-day-events"><div class="fc-daygrid-event-harness fc-daygrid-event-harness-abs" style="top: 0px; left: 0px; right: -51.3333px;"><a class="fc-daygrid-event fc-daygrid-block-event fc-h-event fc-event fc-event-draggable fc-event-start fc-event-past" style="border-color: rgb(243, 156, 18); background-color: rgb(243, 156, 18);"><div class="fc-event-main"><div class="fc-event-main-frame"><div class="fc-event-time">12a</div><div class="fc-event-title-container"><div class="fc-event-title fc-sticky">Long Event</div></div></div></div></a></div><div class="fc-daygrid-day-bottom" style="margin-top: 25px;"></div></div><div class="fc-daygrid-day-bg"></div></div></td><td role="gridcell" class="fc-daygrid-day fc-day fc-day-sat fc-day-past" data-date="2025-03-22" aria-labelledby="fc-dom-56"><div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner"><div class="fc-daygrid-day-top"><a id="fc-dom-56" class="fc-daygrid-day-number" aria-label="March 22, 2025">22</a></div><div class="fc-daygrid-day-events"><div class="fc-daygrid-day-bottom" style="margin-top: 25px;"></div></div><div class="fc-daygrid-day-bg"></div></div></td></tr><tr role="row"><td role="gridcell" class="fc-daygrid-day fc-day fc-day-sun fc-day-past" data-date="2025-03-23" aria-labelledby="fc-dom-58"><div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner"><div class="fc-daygrid-day-top"><a id="fc-dom-58" class="fc-daygrid-day-number" aria-label="March 23, 2025">23</a></div><div class="fc-daygrid-day-events"><div class="fc-daygrid-event-harness" style="margin-top: 0px;"><a class="fc-daygrid-event fc-daygrid-block-event fc-h-event fc-event fc-event-draggable fc-event-end fc-event-past" style="border-color: rgb(243, 156, 18); background-color: rgb(243, 156, 18);"><div class="fc-event-main"><div class="fc-event-main-frame"><div class="fc-event-time">12a</div><div class="fc-event-title-container"><div class="fc-event-title fc-sticky">Long Event</div></div></div></div></a></div><div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div></div><div class="fc-daygrid-day-bg"></div></div></td><td role="gridcell" class="fc-daygrid-day fc-day fc-day-mon fc-day-past" data-date="2025-03-24" aria-labelledby="fc-dom-60"><div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner"><div class="fc-daygrid-day-top"><a id="fc-dom-60" class="fc-daygrid-day-number" aria-label="March 24, 2025">24</a></div><div class="fc-daygrid-day-events"><div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div></div><div class="fc-daygrid-day-bg"></div></div></td><td role="gridcell" class="fc-daygrid-day fc-day fc-day-tue fc-day-past" data-date="2025-03-25" aria-labelledby="fc-dom-62"><div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner"><div class="fc-daygrid-day-top"><a id="fc-dom-62" class="fc-daygrid-day-number" aria-label="March 25, 2025">25</a></div><div class="fc-daygrid-day-events"><div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div></div><div class="fc-daygrid-day-bg"></div></div></td><td role="gridcell" class="fc-daygrid-day fc-day fc-day-wed fc-day-today " data-date="2025-03-26" aria-labelledby="fc-dom-64"><div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner"><div class="fc-daygrid-day-top"><a id="fc-dom-64" class="fc-daygrid-day-number" aria-label="March 26, 2025">26</a></div><div class="fc-daygrid-day-events"><div class="fc-daygrid-event-harness" style="margin-top: 0px;"><a class="fc-daygrid-event fc-daygrid-dot-event fc-event fc-event-draggable fc-event-resizable fc-event-start fc-event-end fc-event-today"><div class="fc-daygrid-event-dot" style="border-color: rgb(0, 115, 183);"></div><div class="fc-event-time">10:30a</div><div class="fc-event-title">Meeting</div></a></div><div class="fc-daygrid-event-harness" style="margin-top: 0px;"><a class="fc-daygrid-event fc-daygrid-dot-event fc-event fc-event-draggable fc-event-resizable fc-event-start fc-event-end fc-event-today"><div class="fc-daygrid-event-dot" style="border-color: rgb(0, 192, 239);"></div><div class="fc-event-time">12p</div><div class="fc-event-title">Lunch</div></a></div><div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div></div><div class="fc-daygrid-day-bg"></div></div></td><td role="gridcell" class="fc-daygrid-day fc-day fc-day-thu fc-day-future" data-date="2025-03-27" aria-labelledby="fc-dom-66"><div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner"><div class="fc-daygrid-day-top"><a id="fc-dom-66" class="fc-daygrid-day-number" aria-label="March 27, 2025">27</a></div><div class="fc-daygrid-day-events"><div class="fc-daygrid-event-harness" style="margin-top: 0px;"><a class="fc-daygrid-event fc-daygrid-dot-event fc-event fc-event-draggable fc-event-resizable fc-event-start fc-event-end fc-event-future"><div class="fc-daygrid-event-dot" style="border-color: rgb(0, 166, 90);"></div><div class="fc-event-time">7p</div><div class="fc-event-title">Birthday Party</div></a></div><div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div></div><div class="fc-daygrid-day-bg"></div></div></td><td role="gridcell" class="fc-daygrid-day fc-day fc-day-fri fc-day-future" data-date="2025-03-28" aria-labelledby="fc-dom-68"><div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner"><div class="fc-daygrid-day-top"><a id="fc-dom-68" class="fc-daygrid-day-number" aria-label="March 28, 2025">28</a></div><div class="fc-daygrid-day-events"><div class="fc-daygrid-event-harness" style="margin-top: 0px;"><a class="fc-daygrid-event fc-daygrid-dot-event fc-event fc-event-draggable fc-event-resizable fc-event-start fc-event-end fc-event-future" href="https://www.google.com/"><div class="fc-daygrid-event-dot" style="border-color: rgb(60, 141, 188);"></div><div class="fc-event-time">12a</div><div class="fc-event-title">Click for Google</div></a></div><div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div></div><div class="fc-daygrid-day-bg"></div></div></td><td role="gridcell" class="fc-daygrid-day fc-day fc-day-sat fc-day-future" data-date="2025-03-29" aria-labelledby="fc-dom-70"><div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner"><div class="fc-daygrid-day-top"><a id="fc-dom-70" class="fc-daygrid-day-number" aria-label="March 29, 2025">29</a></div><div class="fc-daygrid-day-events"><div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div></div><div class="fc-daygrid-day-bg"></div></div></td></tr><tr role="row"><td role="gridcell" class="fc-daygrid-day fc-day fc-day-sun fc-day-future" data-date="2025-03-30" aria-labelledby="fc-dom-72"><div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner"><div class="fc-daygrid-day-top"><a id="fc-dom-72" class="fc-daygrid-day-number" aria-label="March 30, 2025">30</a></div><div class="fc-daygrid-day-events"><div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div></div><div class="fc-daygrid-day-bg"></div></div></td><td role="gridcell" class="fc-daygrid-day fc-day fc-day-mon fc-day-future" data-date="2025-03-31" aria-labelledby="fc-dom-74"><div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner"><div class="fc-daygrid-day-top"><a id="fc-dom-74" class="fc-daygrid-day-number" aria-label="March 31, 2025">31</a></div><div class="fc-daygrid-day-events"><div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div></div><div class="fc-daygrid-day-bg"></div></div></td><td role="gridcell" class="fc-daygrid-day fc-day fc-day-tue fc-day-future fc-day-other" data-date="2025-04-01" aria-labelledby="fc-dom-76"><div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner"><div class="fc-daygrid-day-top"><a id="fc-dom-76" class="fc-daygrid-day-number" aria-label="April 1, 2025">1</a></div><div class="fc-daygrid-day-events"><div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div></div><div class="fc-daygrid-day-bg"></div></div></td><td role="gridcell" class="fc-daygrid-day fc-day fc-day-wed fc-day-future fc-day-other" data-date="2025-04-02" aria-labelledby="fc-dom-78"><div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner"><div class="fc-daygrid-day-top"><a id="fc-dom-78" class="fc-daygrid-day-number" aria-label="April 2, 2025">2</a></div><div class="fc-daygrid-day-events"><div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div></div><div class="fc-daygrid-day-bg"></div></div></td><td role="gridcell" class="fc-daygrid-day fc-day fc-day-thu fc-day-future fc-day-other" data-date="2025-04-03" aria-labelledby="fc-dom-80"><div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner"><div class="fc-daygrid-day-top"><a id="fc-dom-80" class="fc-daygrid-day-number" aria-label="April 3, 2025">3</a></div><div class="fc-daygrid-day-events"><div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div></div><div class="fc-daygrid-day-bg"></div></div></td><td role="gridcell" class="fc-daygrid-day fc-day fc-day-fri fc-day-future fc-day-other" data-date="2025-04-04" aria-labelledby="fc-dom-82"><div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner"><div class="fc-daygrid-day-top"><a id="fc-dom-82" class="fc-daygrid-day-number" aria-label="April 4, 2025">4</a></div><div class="fc-daygrid-day-events"><div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div></div><div class="fc-daygrid-day-bg"></div></div></td><td role="gridcell" class="fc-daygrid-day fc-day fc-day-sat fc-day-future fc-day-other" data-date="2025-04-05" aria-labelledby="fc-dom-84"><div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner"><div class="fc-daygrid-day-top"><a id="fc-dom-84" class="fc-daygrid-day-number" aria-label="April 5, 2025">5</a></div><div class="fc-daygrid-day-events"><div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div></div><div class="fc-daygrid-day-bg"></div></div></td></tr></tbody></table></div></div></div></td></tr></tbody></table></div></div> -->
						
					</div>
					
					
				</div>
              <!-- /.card-body -->
            </div>
            <!-- /.card -->
          </div>
          <!-- /.col -->
        </div>
        <!-- /.row -->
      </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
    
    
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
	                      <h2 class="lead"><b>qrcode</b></h2>
	                      <p class="text-muted text-sm"><b>About: </b> 제품등록 </p>
	                    </div>
	                    <div class="col-5 text-center">
	                      <div id="new_canvas"></div>
	                    </div>
	                  </div>
	                </div>
	                <div class="card-footer">
	                  <div class="text-right">
	                    <a href="#" class="btn btn-sm bg-teal">
	                      <i class="fas fa-comments"></i>
	                    </a>
	                    <a href="#" class="btn btn-sm btn-primary" id="btnQrAdd">
	                      <i class="fas fa-user"></i> 제품 등록하기
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
    
  
  </div>
  <!-- /.content-wrapper -->

<!-- <script src="/resources/plugins/jquery/jquery.min.js"></script>
<script src="/resources/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="/resources/plugins/jquery-ui/jquery-ui.min.js"></script>
<script src="/resources/dist/js/adminlte.min.js"></script>
<script src="/resources/plugins/moment/moment.min.js"></script>
<script src="/resources/plugins/fullcalendar/main.js"></script> -->



<script>
  $(function () {
	  fn_qrcodeMake();
	  

	  
    /* initialize the external events
     -----------------------------------------------------------------*/
    function ini_events(ele) {
      ele.each(function () {

        // create an Event Object (https://fullcalendar.io/docs/event-object)
        // it doesn't need to have a start or end
        var eventObject = {
          title: $.trim($(this).text()) // use the element's text as the event title
        }

        // store the Event Object in the DOM element so we can get to it later
        $(this).data('eventObject', eventObject)

        // make the event draggable using jQuery UI
        $(this).draggable({
          zIndex        : 1070,
          revert        : true, // will cause the event to go back to its
          revertDuration: 0  //  original position after the drag
        })

      })
    }

    ini_events($('#external-events div.external-event'))

    /* initialize the calendar
     -----------------------------------------------------------------*/
    //Date for the calendar events (dummy data)
    var date = new Date()
    var d    = date.getDate(),
        m    = date.getMonth(),
        y    = date.getFullYear()

    var Calendar = FullCalendar.Calendar;
    var Draggable = FullCalendar.Draggable;

  //  var containerEl = document.getElementById('external-events');
    var checkbox = document.getElementById('drop-remove');
    var calendarEl = document.getElementById('calendar');

    // initialize the external events
    // -----------------------------------------------------------------
 /*
    new Draggable(containerEl, {
      itemSelector: '.external-event',
      eventData: function(eventEl) {
        return {
          title: eventEl.innerText,
          backgroundColor: window.getComputedStyle( eventEl ,null).getPropertyValue('background-color'),
          borderColor: window.getComputedStyle( eventEl ,null).getPropertyValue('background-color'),
          textColor: window.getComputedStyle( eventEl ,null).getPropertyValue('color'),
        };
      }
    });
*/


// https://junesker.tistory.com/105?category=1238556 여기서 확인중 기본만
		
// https://greed-yb.tistory.com/274  여긴 crud		
    var calendar = new Calendar(calendarEl, {
   /*    headerToolbar: {
        left  : 'prev,next today',
        center: 'title',
        right : 'dayGridMonth,timeGridWeek,timeGridDay'
      }, */
      initialView: 'dayGridMonth' ,   	  
      //locale:'ko',
      timeZone: 'UTC',
      themeSystem: 'bootstrap',
      //Random default events
       //height: 572, //
      // height: 'auto', //
      contentHeight:'auto',
      events: [
        {
          title          : 'All Day Event',
          start          : new Date(y, m, 1),
          backgroundColor: '#f56954', //red
          borderColor    : '#f56954', //red
          allDay         : true
        },
        {
          title          : 'Long Event',
          start          : new Date(y, m, d - 5),
          end            : new Date(y, m, d - 2),
          backgroundColor: '#f39c12', //yellow
          borderColor    : '#f39c12' //yellow
        },
        {
          title          : 'Meeting',
          start          : new Date(y, m, d, 10, 30),
          allDay         : false,
          backgroundColor: '#0073b7', //Blue
          borderColor    : '#0073b7' //Blue
        },
        {
          title          : 'Lunch',
          start          : new Date(y, m, d, 12, 0),
          end            : new Date(y, m, d, 14, 0),
          allDay         : false,
          backgroundColor: '#00c0ef', //Info (aqua)
          borderColor    : '#00c0ef' //Info (aqua)
        },
        {
          title          : 'Birthday Party',
          start          : new Date(y, m, d + 1, 19, 0),
          end            : new Date(y, m, d + 1, 22, 30),
          allDay         : false,
          backgroundColor: '#00a65a', //Success (green)
          borderColor    : '#00a65a' //Success (green)
        },
        {
          title          : 'Click for Google',
          start          : new Date(y, m, 28),
          end            : new Date(y, m, 29),
          url            : 'https://www.google.com/',
          backgroundColor: '#3c8dbc', //Primary (light-blue)
          borderColor    : '#3c8dbc' //Primary (light-blue)
        }
      ],
      dayMaxEvents:1,
      editable  : true,
      droppable : true, // this allows things to be dropped onto the calendar !!!
      drop      : function(info) {
        // is the "remove after drop" checkbox checked?
        if (checkbox.checked) {
          // if so, remove the element from the "Draggable Events" list
          info.draggedEl.parentNode.removeChild(info.draggedEl);
        }
      },
      dateClick:function(info){
    	 
    	  
  		fetch('/modal/modal_cal_reg', {
			  method: 'post',
			  headers: {
	                'Content-Type': 'application/json',
	                [csrfHeader]: csrfToken  // CSRF 토큰을 헤더에 추가
	            },
	            credentials: 'same-origin',  // 세션 쿠키 사용
			  
			  body: JSON.stringify({})
			}).then(response => response.text())
			  .then(html => {
				  	console.log(info.dateStr);
				       
				  	
			        $('#modal-default').append(html).modal({keyboard:false, mouse:false});
			        
			        
			});
    	  
    	  
    	  
      },
      eventClick: function(info) {
    	    var newTitle = prompt('새로운 제목을 입력하세요:', info.event.title);
    	    if (newTitle) {
    	      info.event.setProp('title', newTitle);  // 제목 변경
    	    }
    	  }
    });

    calendar.render();
    // $('#calendar').fullCalendar()
    
  });// $ jquery
  
  
  
  
  
//add 달력이벤트
$(document).on('click', '#add-new-event', function() {

	var event = {
			  title: 'Meeting',  // 이벤트 제목
			  start: '2023-05-01T10:00:00',    // 이벤트 시작 날짜/시간
			  end: '2023-05-01T12:00:00'       // 이벤트 종료 날짜/시간
			};

			calendar.addEvent(event);

});

$(document).on('click', '#btnQrAdd', function(event) {
	 event.preventDefault();
	 var newWindowName = 'qrcdoeWindow' 
	 
	 newWindow = window.open('http://172.30.1.98:8089/qrcode/scan?data=123456677', newWindowName);
	 
	

});

function fn_qrcodeMake(){
	
	const qrCode = new QRCodeStyling({
	    width: 125,
	    height: 125,
	    type: "svg",
	    data: "http://172.30.1.98:8089/qrcode/scan?data=123456677",
	    //image: "https://upload.wikimedia.org/wikipedia/commons/5/51/Facebook_f_logo_%282019%29.svg",
	   
	    /*
	    dotsOptions: {    //color: "#4267b2",
	        type: "rounded"
	    },
	    backgroundOptions: {
	       // color: "#e9ebee",
	    },
	    imageOptions: {
	        crossOrigin: "anonymous",
	        margin: 20
	    }
	    */
		dotsOptions: { color: '#000', type: 'rounded' },
		backgroundOptions: { color: '#fff' },
		cornersSquareOptions: { type: 'extra-rounded' }
	});

	qrCode.append(document.getElementById("new_canvas"));
}


</script>
    

</body>