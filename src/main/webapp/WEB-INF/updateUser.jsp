<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    	<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html lang="en">
  <head>
        <meta charset="utf-8">
        
     <title>Bootstrap E-commerce Templates</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta name="description" content="">
		<!--[if ie]><meta content='IE=8' http-equiv='X-UA-Compatible'/><![endif]-->
		<!-- bootstrap -->
		<link href="https://dl.dropbox.com/s/6n8j8uzy4w6hko2/bootstrap-responsive.min.css" rel="stylesheet">      
		<link href="https://dl.dropbox.com/s/9yqutwixvzx6ajp/bootstrap.min.css" rel="stylesheet">		
		<link href="https://dl.dropbox.com/s/8cheooifkjrqgla/bootstrappage.css" rel="stylesheet"/>
		
		<!-- global styles -->
		<link href="https://dl.dropbox.com/s/fy3lkvu3yrcslxa/flexslider.css" rel="stylesheet"/>
		<link href="https://dl.dropbox.com/s/mspppiyyft3yr2m/main.css" rel="stylesheet"/>
	<link href="https://dl.dropbox.com/s/pfcsklkatvmww5m/jquery.fancybox.css" rel="stylesheet"/>
		<!-- scripts -->
		<script src="https://dl.dropbox.com/s/3l9dido32zkrpqk/jquery-1.7.2.min.js"></script>
		<script src="https://dl.dropbox.com/s/2ib0dcmdm8o9xj7/jquery.fancybox.js"></script>
		<script src="https://dl.dropbox.com/s/0a77boex2axj7ub/bootstrap.min.js"></script>				
		<script src="https://dl.dropbox.com/s/hi08hsdmq38nkko/superfish.js"></script>	
		<script src="https://dl.dropbox.com/s/xts35cvn08n1yca/jquery.scrolltotop.js"></script>
		<!--[if lt IE 9]>			
			<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
			<script src="themes/js/respond.min.js"></script>
		<![endif]-->
	</head>
        
    <body>	
           
        
      
		<div id="top-bar" class="container">
			<div class="row">
				<div class="span4">
					<form method="POST" class="search_form">
						<input type="text" class="input-block-level search-query" Placeholder="eg. T-sirt">
					</form>
				</div>
				<div class="span8">
					<div class="account pull-right">
                                            <ul class="user-menu"> Welcome!<% if(session.getAttribute("Welcome")==null){}
                                            else{
                                                 out.println(" " +session.getAttribute("Welcome"));}%>
                                                   	<li><a href="">My Account</a></li>
							<li><a href="cart.html">Your Cart</a></li>
							<li><a href="checkout.html">Checkout</a></li>
                                                        
                                                        
                                                        <li><a href="loginNreg.jsp.html"></a></li>
                                                        <li><a href="logout"></a>log out</li>	
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div id="wrapper" class="container">
			<section class="navbar main-menu">
				<div class="navbar-inner main-menu">				
					<a href="index.html" class="logo pull-left"><img src="themes/images//logo.png" class="site_logo" alt=""></a>
					<nav id="menu" class="pull-right">
						<ul>
							<li><a href="./products.html">Woman</a>					
								<ul>
									<li><a href="./products.html">Lacinia nibh</a></li>									
									<li><a href="./products.html">Eget molestie</a></li>
									<li><a href="./products.html">Varius purus</a></li>									
								</ul>
							</li>															
							<li><a href="./products.html">Man</a></li>			
							<li><a href="./products.html">Sport</a>
								<ul>									
									<li><a href="./products.html">Gifts and Tech</a></li>
									<li><a href="./products.html">Ties and Hats</a></li>
									<li><a href="./products.html">Cold Weather</a></li>
								</ul>
							</li>							
							<li><a href="./products.html">Hangbag</a></li>
							<li><a href="./products.html">Best Seller</a></li>
							<li><a href="./products.html">Top Seller</a></li>
						</ul>
					</nav>
				</div>
			</section>			
			<section class="header_text sub">
			<img class="pageBanner" src="themes/images/pageBanner.png" alt="New products" >
				<h4><span>Update Account</span></h4>
			</section>			
			<section class="main-content">				
				<div class="row">
					<div class="span5">		
                                            
						<h4 class="title"><span class="text"><strong>Update</strong> Form</span></h4>
						<fieldset>
				 <form:form action="updatingUser" method="post" modelAttribute="user" name="" >
								<form:hidden path="User_id" />
								<div class="control-group">
								
									<label class="control-label">Username</label>
									<div class="controls">
										<form:input  path="f_name" placeholder="Enter your first name" cssClass="input-xlarge"/>
									</div>
								</div>
								<div class="control-group">
									<label class="control-label">Email address:</label>
									<div class="controls">
										<form:input  path="l_name" placeholder="Enter your last name"  cssClass="input-xlarge"/>
									</div>
								</div>
								<div class="control-group">
									<label class="control-label">Password:</label>
									<div class="controls">
										<form:input  path="email" type="password" placeholder="Enter your password" cssClass="input-xlarge"/>
									</div>
								</div>		
								<div class="control-group">
									<label class="control-label">Password:</label>
									<div class="controls">
										<form:input  path="password" type="password" placeholder="Enter your password" cssClass="input-xlarge"/>
									</div>
								</div>							   
								<div class="control-group">
									<label class="control-label">Password:</label>
									<div class="controls">
										<form:input  path="password2" type="password" placeholder="Enter your password" cssClass="input-xlarge"/>
									</div>
								</div>		                         
								<div class="control-group">
									<p>Now that we know who you are. I'm not a mistake! In a comic, you know how you can tell who the arch-villain's going to be?</p>
								</div>
								<hr>
								<div class="actions"><input tabindex="9" class="btn btn-inverse large" type="submit" value="Create your account"></div>
							</form:form>
							</fieldset>
											
					</div>
								
				</div>
			</section>			
			<section id="footer-bar">
				<div class="row">
					<div class="span3">
						<h4>Navigation</h4>
						<ul class="nav">
							<li><a href="./index.html">Homepage</a></li>  
							<li><a href="./about.html">About Us</a></li>
							<li><a href="./contact.html">Contact Us</a></li>
							<li><a href="./cart.html">Your Cart</a></li>
							<li><a href="./register.html">Login</a></li>							
						</ul>					
					</div>
					<div class="span4">
						<h4>My Account</h4>
						<ul class="nav">
							<li><a href="#">My Account</a></li>
							<li><a href="#">Order History</a></li>
							<li><a href="#">Wish List</a></li>
							<li><a href="#">Newsletter</a></li>
						</ul>
					</div>
					<div class="span5">
						<p class="logo"><img src="themes/images/logo.png" class="site_logo" alt=""></p>
						<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. the  Lorem Ipsum has been the industry's standard dummy text ever since the you.</p>
						<br/>
						<span class="social_icons">
							<a class="facebook" href="#">Facebook</a>
							<a class="twitter" href="#">Twitter</a>
							<a class="skype" href="#">Skype</a>
							<a class="vimeo" href="#">Vimeo</a>
						</span>
					</div>					
				</div>	
			</section>
			<section id="copyright">
				<span>Copyright 2013 bootstrappage template  All right reserved.</span>
			</section>
		</div>
		<script src="themes/js/common.js"></script>
		<script>
			$(document).ready(function() {
				$('#checkout').click(function (e) {
					document.location.href = "checkout.html";
				})
			});
		</script>		
    </body>
</html>