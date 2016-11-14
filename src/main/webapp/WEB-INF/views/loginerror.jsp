<%@include file="/WEB-INF/views/header.jsp"%>
<br>
<br>
 <div align="center">
 <img src="<c:url value="/resources/img/invalid.jpg"/>">
 
 <h1>Please enter valid credentials</h1>
<a href="<c:url value="/login"/>" style="padding-right: 20px"><button class="btn btn-primary" >Login</button></a> <a href="<c:url value="/memberShip.obj"/>"> <button class="btn btn-success">Register</button></a> 
 </div>
 <%@include file="/WEB-INF/views/footer.jsp"%>