<%@page import="com.example.sample.UserDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="name" value="${dto.name }"/> 

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta charset="UTF-8">
<title>Company</title>

<!-- 반응형 웹 만들기 -->
<!-- 1. 모바일용 css -->
<link rel="stylesheet" href="/css/test1_2.css" media="(max-width:600px)">

<!-- 2. 데스크탑용 외부 스타일시트 적용 -->
<link rel="stylesheet" href="/css/test1_1.css" media="(min-width:600px)">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="/js/test.js" type="text/javascript" defer></script>


<script type="text/javascript">
	

</script>

</head>
<body>
${dto.name }
	<div id="page">
	
		<header>
			<div id="logo">
				<img src="/imgs/logo.png" alt="Logo">
			</div>

			<div id="top_menu">
				<a href="#">HOME</a> | <a href="#">NOTICE</a> |
				<!--  <a href="#">LOGIN</a> | -->
				<a href="#">JOIN</a> | ID <input type="text" class="login" id="id">
				PW <input type="password" class="login" id="pw">
				<button id="login_btn" >LOGIN</button>
			</div>

			<nav>
				<ul>
					<li><a href="#">COMPANY</a></li>
					<li><a href="#">PRODUCT</a></li>
					<li><a href="#">CUSTOMER</a></li>
					<li><a href="#">SERVICE</a></li>
					<li><a href="#">RECRUIT</a></li>
				</ul>
			</nav>

		</header>

		<article id="content">
			<section id="main">
				<img id="main_img" src="/imgs/main_img.png" alt="main img">
			</section>
			<section>
				<ul id="banner">
					<li><a href="#"><img src="/imgs/banner1.png" alt="banner1"></a></li>
					<li><a href="#"><img src="/imgs/banner2.png" alt="banner2"></a></li>
				</ul>

			</section>
			<section>
				<div>${message}</div>
			</section>

		</article>

		<footer>
			<img id="address_img" src="/imgs/address.png" alt="address">
		</footer>

	</div>

</body>
</html>