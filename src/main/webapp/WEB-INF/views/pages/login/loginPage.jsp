
<div class="login-box">
  <div class="login-logo">
    <a href="/resources/index2.html"><b>Good</b>Luck</a>
  </div>
  <!-- /.login-logo -->
  <div class="card">
    <div class="card-body login-card-body">
      <p class="login-box-msg">Sign in to start your session</p>

      <form id="form" action="/loginCtr" method="post">
	        <div class="input-group mb-3">
	          <input type="text" class="form-control" placeholder="Email" name="username" id="username">
	          <div class="input-group-append">
	            <div class="input-group-text">
	              <span class="fas fa-envelope"></span>
	            </div>
	          </div>
	        </div>
	        
	        <div class="input-group mb-3">
	          <input type="password" class="form-control" placeholder="Password" name="password" id="password">
	          <div class="input-group-append">
	            <div class="input-group-text">
	              <span class="fas fa-lock"></span>
	            </div>
	          </div>
	        </div>
        
	        <div class="row">
	          <div class="col-8">
	            <div class="icheck-primary">
	              <input type="checkbox" id="remember">
	              <label for="remember">
	                Remember Me
	              </label>
	            </div>
	          </div>
	          
	          <div class="col-4">
	            <button type="button" class="btn btn-primary btn-block" id="btnLogin">Sign In</button>
	            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
	          </div>
	        </div>
      </form>

      <div class="social-auth-links text-center mb-3">
        <p>- OR -</p>
        <a href="#" class="btn btn-block btn-primary">
          <i class="fab fa-facebook mr-2"></i> Sign in using Facebook
        </a>
        <a href="#" class="btn btn-block btn-danger">
          <i class="fab fa-google-plus mr-2"></i> Sign in using Google+
        </a>
      </div>
      <!-- /.social-auth-links -->

      <p class="mb-1">
        <a href="forgot-password.html">I forgot my password</a>
      </p>
      <p class="mb-0">
        <a href="register.html" class="text-center">Register a new membership</a>
      </p>
    </div>
    <!-- /.login-card-body -->
  </div>
</div>
<!-- /.login-box -->

<script>

$(document).on('click', '#btnLogin', function(e){
	 
    // Get the form element
    var form = document.getElementById('form');
    console.log(form);
    console.log(form.action);
    // Submit the form
    form.submit();
	
});


/* 
 
$('#btnLogin').on("click", function() {
	 self.location = "lottoTotalDayList"
	          + '${lottoPageMaker.makeQuery(1)}'
	          + '&searchType=' + $("#searchType option:selected").val()
	          + '&keyword=' +  $("#keywordInput option:selected").val();
	
	self.location = "/";
        
}); */
</script>
