<%@include file="/WEB-INF/views/header.jsp"%>
<div class="container">

  <div class="row">
    <div class="col-md-6 col-md-offset-3 text-center">
      <br>
     
      <p><img src="<c:url value="/resources/img/404.jpg"/>" alt=""></p>

      <h2><i class="fa fa-exclamation-triangle" style="color:red"></i>
     
 Page not found <small>404 error</small></h2>
     

      <p><a href="<c:url value="/index"/>"><button class="btn btn-primary">Return to homepage</button></a> </p>

     
    </div>

  </div>
  </div>
<%@include file="/WEB-INF/views/footer.jsp"%>