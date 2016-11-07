<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>JV Smartwatches</title>
<meta name="viewport" content="width= device-width,initial-scale= 1.0">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">

<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet" media="all">

<link rel="stylesheet"
	href="<c:url value="/resources/css/Hover-master/css/hover-min.css"/>" rel="stylesheet">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

<script
	src="http://ajax.googleapis.com/ajax/libs/angularjs/1.2.23/angular.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.2.7/angular-resource.min.js"></script>

<!-- Website Font style -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css">
<link
	href="//netdna.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css"
	rel="stylesheet">
<!-- Google Fonts -->
<link href='https://fonts.googleapis.com/css?family=Passion+One'
	rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Oxygen'
	rel='stylesheet' type='text/css'>


</head>
<body>

	<style>
#the-slider img {
	width: 100%;
}

hr {
	border-top: 1px solid #695b5b;
}

.navbar-brand {
	padding: 1px 10px;
}

a {
	color: #080808;
}

body {
	line-height: 1;
}

.navbar-brand {
	height: 5px;
	padding: 05px 10px;
}



.navbar-right {
	float: right !important;
	margin-right: 10px;
}

body, html {
	height: 100%;
	background-repeat: no-repeat;
	font-family: 'Oxygen', sans-serif;
}

.box:hover {
	border: 2px solid #ffff00;
	cursor: pointer
}

#cart-badge {
	font-size: 14px;
	background: #fcf8e3;
	color: #080808;
	padding: 5px 10px;
	vertical-align: middle;
	padding-top: 10px;
	border-top: 10px;
}

.badge {
	padding-top: 10px;
	padding-left: 9px;
	padding-right: 9px;
	-webkit-border-radius: 9px;
	-moz-border-radius: 9px;
	border-radius: 100px;
}

ul.menu {
	vertical-align: bottom;
}

ul.menu li {
	display: inline-block;
	text-align: center;
}

#bottom {
	position: absolute;
	bottom: 0;
	position: relative;
}

.navbar-collapse.collapse {
	padding-top: 75px;
	.a>hover{
	background-color:white
	}
}

.hvr-underline-from-center {
 
  vertical-align: middle;
  -webkit-transform: translateZ(0);
  transform: translateZ(0);
  box-shadow: 0 0 1px rgba(0, 0, 0, 0);
  -webkit-backface-visibility: hidden;
  backface-visibility: hidden;
  -moz-osx-font-smoothing: grayscale;
  position: relative;
  overflow: hidden;
}
.hvr-underline-from-center:before {
  content: "";
  position: absolute;
  z-index: -1;
  left: 50%;
  right: 50%;
  bottom: 0;
  background: #FF6347;
  height: 4px;
  -webkit-transition-property: left, right;
  transition-property: left, right;
  -webkit-transition-duration: 0.3s;
  transition-duration: 0.3s;
  -webkit-transition-timing-function: ease-out;
  transition-timing-function: ease-out;
}
.hvr-underline-from-center:hover:before, .hvr-underline-from-center:focus:before, .hvr-underline-from-center:active:before {
  left: 0;
  right: 0;
}

/* Float Shadow */
.hvr-float-shadow {
  display: inline-block;
  vertical-align: middle;
  -webkit-transform: translateZ(0);
  transform: translateZ(0);
  box-shadow: 0 0 1px rgba(0, 0, 0, 0);
  -webkit-backface-visibility: hidden;
  backface-visibility: hidden;
  -moz-osx-font-smoothing: grayscale;
  position: relative;
  -webkit-transition-duration: 0.3s;
  transition-duration: 0.3s;
  -webkit-transition-property: transform;
  transition-property: transform;
}
.hvr-float-shadow:before {
  pointer-events: none;
  position: absolute;
  z-index: -1;
  content: '';
  top: 100%;
  left: 5%;
  height: 10px;
  width: 90%;
  opacity: 0;
  background: -webkit-radial-gradient(center, ellipse, rgba(0, 0, 0, 0.35) 0%, rgba(0, 0, 0, 0) 80%);
  background: radial-gradient(ellipse at center, rgba(0, 0, 0, 0.35) 0%, rgba(0, 0, 0, 0) 80%);
  /* W3C */
  -webkit-transition-duration: 0.3s;
  transition-duration: 0.3s;
  -webkit-transition-property: transform, opacity;
  transition-property: transform, opacity;
}
.hvr-float-shadow:hover, .hvr-float-shadow:focus, .hvr-float-shadow:active {
  -webkit-transform: translateY(-5px);
  transform: translateY(-5px);
  /* move the element up by 5px */
}
.hvr-float-shadow:hover:before, .hvr-float-shadow:focus:before, .hvr-float-shadow:active:before {
  opacity: 1;
  -webkit-transform: translateY(5px);
  transform: translateY(5px);
  /* move the element down by 5px (it will stay in place because it's attached to the element that also moves up 5px) */
}

ul {
    
    background-color: white;
}

li a {
   
    color: #000;
    padding: 8px 16px;
    text-decoration: none;
}


li a:hover {
    background-color: white;
    color: black;
}

/* #addtocart {
	background-color: white; /* Green */
	border: none;
	color: white;
	padding: 18px 8px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 16px;
	width: 98%;
} */

</style>

	<script>
		function formSubmit() {

			document.getElementById("logoutForm").submit();
		}
	</script>



	<c:url value='logout' var="logoutUrl" />
	<form action="${logoutUrl}" method='POST' id="logoutForm"></form>

	
	
	<div class="container">
		 <div class="row top-buffer"> 
			
			<nav class="navbar ">

			<div class="navbar-header">
				<a class="navbar-brand" href="#"><img
					src="<c:url value="/resources/img/jv1.jpg" />"></a>
			</div>

			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav navbar-right">

					
<h6 align="right">
			<c:if test="${!empty pageContext.request.userPrincipal.name}">
						<a href="<c:url value="#"/>">Welcome ${pageContext.request.userPrincipal.name}</a>
					</c:if></h6>
					<li><a href="<c:url value="/index"/>" class="hvr-underline-from-center">HOME</a></li>
					<!-- <li><a href="#services" class="hvr-underline-from-center">ABOUT US</a></li> -->

					<li><a href="<c:url value="/viewallproducts"/>" class="hvr-underline-from-center">VIEW ALL</a></li>

					<c:if test="${empty pageContext.request.userPrincipal.name}">
						<li><a href="<c:url value="/memberShip"/>" class="hvr-underline-from-center"> SIGN UP</a></li>
						<li><a href="<c:url value="/login"/>" class="hvr-underline-from-center"> LOGIN</a></li>
					</c:if>

					 <sec:authorize access="hasRole('ROLE_USER')">
						<li><a href="<c:url value="/mycart"/>" class="hvr-underline-from-center"> MY CART</a></li>
						<li id="cart-badge" class="badge badge-warning">${cartNumber}</li>
						<li><a href="<c:url value="/myorder"/>" class="hvr-underline-from-center"> ORDERS</a></li>
						
					</sec:authorize> 

					<sec:authorize access="hasRole('ROLE_ADMIN')">
						<li><a href="<c:url value="/manage" />" class="hvr-underline-from-center"> MANAGE PRODUCTS</a></li>
					</sec:authorize>


					<c:if test="${!empty pageContext.request.userPrincipal.name}">
						<li><a href="javascript:formSubmit()" class="hvr-underline-from-center"> LOGOUT</a></li>
					</c:if>
				</ul>


			</div>
			</nav>
			<hr>
		</div>

	</div>