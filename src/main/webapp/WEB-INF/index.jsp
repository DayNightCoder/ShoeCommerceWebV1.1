<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE HTML>
<html>
	<head>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    	<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
		<title>Spike shoes Website Template | Home :: w3layouts</title>
		<link href="https://dl.dropbox.com/s/ti90rvc22244zj8/style.css" rel='stylesheet' type='text/css' />
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
		</script>
		<!----webfonts---->
		<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text/css'>
		<!----//webfonts---->
		<!----start-alert-scroller---->
		
		<script src="https://dl.dropbox.com/s/0kh05gyhsd6fgxb/jquery.min.js"></script>
		<script type="text/javascript" src="https://dl.dropbox.com/s/upb6po19ldngghe/jquery.easy-ticker.js"></script>
		<script type="text/javascript">
		$(document).ready(function(){
			$('#demo').hide();
			$('.vticker').easyTicker();
		});
		</script>
		<!----start-alert-scroller---->
		<!-- start menu -->
		<link href="https://dl.dropbox.com/s/22rut1tgry2ha2g/megamenu.css" rel="stylesheet" type="text/css" media="all" />
		<script type="text/javascript" src="https://dl.dropbox.com/s/izaao9brmoscdha/megamenu.js"></script>
		<script>$(document).ready(function(){$(".megamenu").megamenu();});</script>
		<script src="https://dl.dropbox.com/s/r9pgc26jo4wl2v7/menu_jquery.jsr"></script>
		<!-- //End menu -->
		<!---slider---->
		<link rel="stylesheet" href="https://dl.dropboxusercontent.com/s/ejgirm4cul7w3oh/slippry.css">
		
		<script src="https://dl.dropboxusercontent.com/s/7o918dsuh2sf5z1/jquery-ui.js" type="text/javascript"></script>
		<script src="https://dl.dropboxusercontent.com/s/8evukcdkzx566mu/scripts-f0e4e0c2.js" type="text/javascript"></script>
		<script>
			  jQuery('#jquery-demo').slippry({
			  // general elements & wrapper
			  slippryWrapper: '<div class="sy-box jquery-demo" />', // wrapper to wrap everything, including pager
			  // options
			  adaptiveHeight: false, // height of the sliders adapts to current slide
			  useCSS: false, // true, false -> fallback to js if no browser support
			  autoHover: false,
			  transition: 'fade'
			});
		</script>
		<!----start-pricerage-seletion---->
		<script type="text/javascript" src="https://dl.dropboxusercontent.com/s/0kh05gyhsd6fgxb/jquery.min.js"></script>
		<link rel="stylesheet" type="text/css" href="https://dl.dropboxusercontent.com/s/5uvqhero4p8w2fe/jquery-ui.css">
		<script type='text/javascript'>//<![CDATA[ 
			$(window).load(function(){
			 $( "#slider-range" ).slider({
			            range: true,
			            min: 0,
			            max: 500,
			            values: [ 100, 400 ],
			            slide: function( event, ui ) {  $( "#amount" ).val( "$" + ui.values[ 0 ] + " - $" + ui.values[ 1 ] );
			            }
			 });
			$( "#amount" ).val( "$" + $( "#slider-range" ).slider( "values", 0 ) + " - $" + $( "#slider-range" ).slider( "values", 1 ) );
			
			});//]]>  
		</script>
		<!----//End-pricerage-seletion---->
		<!---move-top-top---->
		
		<script type="text/javascript" src="https://dl.dropboxusercontent.com/s/700h61ifd60erwm/move-top.js"></script>
		<script type="text/javascript" src="https://dl.dropbox.com/s/ikg9gxgxh7dbc0u/easing.js"></script>
		<script type="text/javascript">
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event){		
					event.preventDefault();
					$('html,body').animate({scrollTop:$(this.hash).offset().top},1200);
				});
			});
		</script>
		<!---//move-top-top---->
	</head>
	<body>
		<!---start-wrap---->
			<!---start-header---->
			<div class="header">
				<div class="top-header">
					<div class="wrap">
						<div class="top-header-left">
							<ul>
								<!---cart-tonggle-script---->
								<script type="text/javascript">
									$(function(){
									    var $cart = $('#cart');
									        $('#clickme').click(function(e) {
									         e.stopPropagation();
									       if ($cart.is(":hidden")) {
									           $cart.slideDown("slow");
									       } else {
									           $cart.slideUp("slow");
									       }
									    });
									    $(document.body).click(function () {
									       if ($cart.not(":hidden")) {
									           $cart.slideUp("slow");
									       } 
									    });
									    });
								</script>
								<!---//cart-tonggle-script---->
								<li><a class="cart" href="#"><span id="clickme"> </span></a></li>
								<!---start-cart-bag---->
								<div id="cart">Your Cart is Empty <span>(0)</span></div>
								<!---start-cart-bag---->
								<li><a class="info" href="#"><span> </span></a></li>
							</ul>
						</div>
						<div class="top-header-center">
							<div class="top-header-center-alert-left">
								<h3>FREE DELIVERY</h3>
							</div>
							<div class="top-header-center-alert-right">
								<div class="vticker">
								  <ul>
									  <li>Applies to orders of $50 or more. <label>Returns are always free.</label></li>
								  </ul>
								</div>
							</div>
							<div class="clear"> </div>
						</div>
						<div class="top-header-right">
							<ul>
								<li><a href="login.html">Login</a><span> </span></li>
								<li><a href="register.html">Join</a></li>
							</ul>
						</div>
						<div class="clear"> </div>
					</div>
				</div>
				<!----start-mid-head---->
				<div class="mid-header">
					<div class="wrap">
						<div class="mid-grid-left">
							<form>
								<input type="text" placeholder="What Are You Looking for?" />
							</form>
						</div>
						<div class="mid-grid-right">
							<a class= "logo" href="index.html"><span></span></a>
						</div>
						<div class="clear"> </div>
					</div>
				</div>
				<!----//End-mid-head---->
				<!----start-bottom-header---->
				<div class="header-bottom">
					<div class="wrap">
					<!-- start header menu -->
							<ul class="megamenu skyblue">
								<li class="grid"><a class="color2" href="#">MEN</a>
									<div class="megapanel">
										<div class="row">
											<div class="col1">
												<div class="h_nav">
													<h4>popular</h4>
													<ul>
														<li><a href="products.html">new arrivals</a></li>
														<li><a href="products.html">men</a></li>
														<li><a href="products.html">women</a></li>
														<li><a href="products.html">accessories</a></li>
														<li><a href="products.html">kids</a></li>
														<li><a href="products.html">login</a></li>
													</ul>	
												</div>
												<div class="h_nav">
													<h4 class="top">man</h4>
													<ul>
														<li><a href="products.html">new arrivals</a></li>
														<li><a href="products.html">men</a></li>
														<li><a href="products.html">women</a></li>
														<li><a href="#">accessories</a></li>
														<li><a href="#">kids</a></li>
														<li><a href="#">style videos</a></li>
													</ul>	
												</div>
											</div>
											<div class="col1">
												<div class="h_nav">
													<h4>style zone</h4>
													<ul>
														<li><a href="products.html">men</a></li>
														<li><a href="products.html">women</a></li>
														<li><a href="products.html">accessories</a></li>
														<li><a href="products.html">kids</a></li>
														<li><a href="products.html">brands</a></li>
													</ul>	
												</div>							
											</div>
											<div class="col1">
												<div class="h_nav">
													<h4>style zone</h4>
													<ul>
														<li><a href="products.html">men</a></li>
														<li><a href="products.html">women</a></li>
														<li><a href="products.html">accessories</a></li>
														<li><a href="products.html">kids</a></li>
														<li><a href="products.html">brands</a></li>
													</ul>	
												</div>							
											</div>
											<div class="col1 men">
												<div class="men-pic">
													<img src="images/men.png" title="" />
												</div>
											</div>
										</div>
									</div>
									</li>
					  			<li class="active grid"><a class="color4" href="#">women</a>
									<div class="megapanel">
										<div class="row">
											<div class="col1">
												<div class="h_nav">
													<h4>shop</h4>
													<ul>
														<li><a href="products.html">new arrivals</a></li>
														<li><a href="products.html">men</a></li>
														<li><a href="products.html">women</a></li>
														<li><a href="products.html">accessories</a></li>
														<li><a href="products.html">kids</a></li>
														<li><a href="products.html">brands</a></li>
													</ul>	
												</div>	
												<div class="h_nav">
													<h4>help</h4>
													<ul>
														<li><a href="products.html">trends</a></li>
														<li><a href="products.html">sale</a></li>
														<li><a href="products.html">style videos</a></li>
														<li><a href="products.html">accessories</a></li>
														<li><a href="products.html">kids</a></li>
														<li><a href="products.html">style videos</a></li>
													</ul>	
												</div>							
											</div>
											<div class="col1">
												<div class="h_nav">
													<h4>my company</h4>
													<ul>
														<li><a href="products.html">trends</a></li>
														<li><a href="products.html">sale</a></li>
														<li><a href="products.html">style videos</a></li>
														<li><a href="products.html">accessories</a></li>
														<li><a href="products.html">kids</a></li>
														<li><a href="products.html">style videos</a></li>
													</ul>	
												</div>												
											</div>
											<div class="col1">
												<div class="h_nav">
													<h4>account</h4>
													<ul>
														<li><a href="products.html">login</a></li>
														<li><a href="products.html">create an account</a></li>
														<li><a href="products.html">create wishlist</a></li>
														<li><a href="products.html">my shopping bag</a></li>
														<li><a href="products.html">brands</a></li>
														<li><a href="products.html">create wishlist</a></li>
													</ul>	
												</div>						
											</div>
											<div class="col1">
												<div class="h_nav">
													<h4>my company</h4>
													<ul>
														<li><a href="products.html">trends</a></li>
														<li><a href="products.html">sale</a></li>
														<li><a href="products.html">style videos</a></li>
														<li><a href="products.html">accessories</a></li>
														<li><a href="products.html">kids</a></li>
														<li><a href="products.html">style videos</a></li>
													</ul>	
												</div>
											</div>
											<div class="col1">
												<div class="h_nav">
													<h4>popular</h4>
													<ul>
														<li><a href="products.html">new arrivals</a></li>
														<li><a href="products.html">men</a></li>
														<li><a href="products.html">women</a></li>
														<li><a href="products.html">accessories</a></li>
														<li><a href="products.html">kids</a></li>
														<li><a href="products.html">style videos</a></li>
													</ul>	
												</div>
											</div>
											<div class="col1 women">
												<div class="women-pic">
													<img src="images/women.png" title="" />
												</div>
											</div>
										</div>
										<div class="row">
											<div class="col2"></div>
											<div class="col1"></div>
											<div class="col1"></div>
											<div class="col1"></div>
											<div class="col1"></div>
										</div>
					    				</div>
									</li>				
									<li><a class="color5" href="#">KIDS</a>
									<div class="megapanel">
										<div class="row">
											<div class="col1">
												<div class="h_nav">
													<h4>popular</h4>
													<ul>
														<li><a href="products.html">new arrivals</a></li>
														<li><a href="products.html">men</a></li>
														<li><a href="products.html">women</a></li>
														<li><a href="products.html">accessories</a></li>
														<li><a href="products.html">kids</a></li>
														<li><a href="products.html">login</a></li>
													</ul>	
												</div>
												<div class="h_nav">
													<h4 class="top">man</h4>
													<ul>
														<li><a href="products.html">new arrivals</a></li>
														<li><a href="products.html">men</a></li>
														<li><a href="products.html">women</a></li>
														<li><a href="products.html">accessories</a></li>
														<li><a href="products.html">kids</a></li>
														<li><a href="products.html">style videos</a></li>
													</ul>	
												</div>
											</div>
											<div class="col1">
												<div class="h_nav">
													<h4>style zone</h4>
													<ul>
														<li><a href="products.html">men</a></li>
														<li><a href="products.html">women</a></li>
														<li><a href="products.html">accessories</a></li>
														<li><a href="products.html">kids</a></li>
														<li><a href="products.html">brands</a></li>
													</ul>	
												</div>							
											</div>
											<div class="col1 kids">
												<div class="kids-pic">
													<img src="images/kids1.png" title="" />
												</div>
											</div>
											<div class="col1"></div>
											<div class="col1"></div>
											<div class="col1"></div>
											<div class="col1"></div>
										</div>
									</div>
									</li>
									<li><a class="color6" href="#">SPORTS</a>
									<div class="megapanel">
										<div class="row">
											<div class="col1">
												<div class="h_nav">
													<h4>shop</h4>
													<ul>
														<li><a href="products.html">new arrivals</a></li>
														<li><a href="products.html">men</a></li>
														<li><a href="products.html">women</a></li>
														<li><a href="products.html">accessories</a></li>
														<li><a href="products.html">kids</a></li>
														<li><a href="products.html">brands</a></li>
													</ul>	
												</div>	
												<div class="h_nav">
													<h4 class="top">my company</h4>
													<ul>
														<li><a href="products.html">trends</a></li>
														<li><a href="products.html">sale</a></li>
														<li><a href="products.html">style videos</a></li>
														<li><a href="products.html">accessories</a></li>
														<li><a href="products.html">kids</a></li>
														<li><a href="products.html">style videos</a></li>
													</ul>	
												</div>												
											</div>
											<div class="col1">
												<div class="h_nav">
													<h4>man</h4>
													<ul>
														<li><a href="products.html">new arrivals</a></li>
														<li><a href="products.html">men</a></li>
														<li><a href="products.html">women</a></li>
														<li><a href="products.html">accessories</a></li>
														<li><a href="products.html">kids</a></li>
														<li><a href="products.html">style videos</a></li>
													</ul>	
												</div>						
											</div>
											<div class="col1">
												<div class="h_nav">
													<h4>help</h4>
													<ul>
														<li><a href="products.html">trends</a></li>
														<li><a href="products.html">sale</a></li>
														<li><a href="products.html">style videos</a></li>
														<li><a href="products.html">accessories</a></li>
														<li><a href="products.html">kids</a></li>
														<li><a href="products.html">style videos</a></li>
													</ul>	
												</div>							
											</div>
											<div class="col1 sports">
												<div class="sports-pic">
													<img src="images/sport.png" title="" />
												</div>
											</div>
										</div>
										<div class="row">
											<div class="col2"></div>
											<div class="col1"></div>
											<div class="col1"></div>
											<div class="col1"></div>
											<div class="col1"></div>
										</div>
									</div>
									</li>
									<li><a class="color7" href="#">NIKE SPORTSWEAR</a>
									<div class="megapanel">
										<div class="row">
											<div class="col1">
												<div class="h_nav">
													<h4>shop</h4>
													<ul>
														<li><a href="products.html">new arrivals</a></li>
														<li><a href="products.html">men</a></li>
														<li><a href="products.html">women</a></li>
														<li><a href="products.html">accessories</a></li>
														<li><a href="products.html">kids</a></li>
														<li><a href="products.html">brands</a></li>
													</ul>	
												</div>		
												<div class="h_nav">
													<h4>my company</h4>
													<ul>
														<li><a href="products.html">trends</a></li>
														<li><a href="products.html">sale</a></li>
														<li><a href="products.html">style videos</a></li>
														<li><a href="products.html">accessories</a></li>
														<li><a href="products.html">kids</a></li>
														<li><a href="products.html">style videos</a></li>
													</ul>	
												</div>					
											</div>
											<div class="col1">
												<div class="h_nav">
													<h4>help</h4>
													<ul>
														<li><a href="products.html">trends</a></li>
														<li><a href="products.html">sale</a></li>
														<li><a href="products.html">style videos</a></li>
														<li><a href="products.html">accessories</a></li>
														<li><a href="products.html">kids</a></li>
														<li><a href="products.html">style videos</a></li>
													</ul>	
												</div>							
											</div>
											<div class="col1">
												<div class="h_nav">
													<h4>my company</h4>
													<ul>
														<li><a href="products.html">trends</a></li>
														<li><a href="products.html">sale</a></li>
														<li><a href="products.html">style videos</a></li>
														<li><a href="products.html">accessories</a></li>
														<li><a href="products.html">kids</a></li>
														<li><a href="products.html">style videos</a></li>
													</ul>	
												</div>												
											</div>
											<div class="col1">
												<div class="h_nav">
													<h4>account</h4>
													<ul>
														<li><a href="products.html">login</a></li>
														<li><a href="products.html">create an account</a></li>
														<li><a href="products.html">create wishlist</a></li>
														<li><a href="products.html">my shopping bag</a></li>
														<li><a href="products.html">brands</a></li>
														<li><a href="products.html">create wishlist</a></li>
													</ul>	
												</div>						
											</div>
											<div class="col1 nike">
												<div class="nike-pic">
													<img src="images/nike.png" title="" />
												</div>
											</div>
										</div>
										<div class="row">
											<div class="col2"></div>
											<div class="col1"></div>
											<div class="col1"></div>
											<div class="col1"></div>
											<div class="col1"></div>
										</div>
					    				</div>
									</li>
									<li><a class="color8" href="#">NIKEiD</a>
									<div class="megapanel">
										<div class="row">
											<div class="col1">
												<div class="h_nav">
													<h4>style zone</h4>
													<ul>
														<li><a href="products.html">men</a></li>
														<li><a href="products.html">women</a></li>
														<li><a href="products.html">accessories</a></li>
														<li><a href="products.html">kids</a></li>
														<li><a href="products.html">brands</a></li>
													</ul>	
												</div>							
											</div>
											<div class="col1">
												<div class="h_nav">
													<h4>popular</h4>
													<ul>
														<li><a href="products.html">new arrivals</a></li>
														<li><a href="products.html">men</a></li>
														<li><a href="products.html">kids</a></li>
														<li><a href="products.html">accessories</a></li>
														<li><a href="products.html">login</a></li>
													</ul>	
												</div>
												<div class="h_nav">
													<h4 class="top">man</h4>
													<ul>
														<li><a href="products.html">new arrivals</a></li>
														<li><a href="products.html">accessories</a></li>
														<li><a href="products.html">kids</a></li>
														<li><a href="products.html">style videos</a></li>
													</ul>	
												</div>
											<div class="col1"></div>
											<div class="col1"></div>
											<div class="col1"></div>
											<div class="col1"></div>
										</div>
									</div>
									</li>
							</ul>

					</div>
				</div>
				</div>
				<!----//End-bottom-header---->
			<!---//End-header---->
		<!----start-image-slider---->
		<div class="img-slider">
			<div class="wrap">
			<ul id="jquery-demo">
			  <li>
			    <a href="#slide1">
			      <img src="images/slide-1.jpg" alt="" />
			    </a>
			    <div class="slider-detils">
			    	<h3>MENS FOOT BALL <label>BOOTS</label></h3>
			    	<span>Stay true to your team all day, every day, game day.</span>
			    	<a class="slide-btn" href="details.html"> Shop Now</a>
			    </div>
			  </li>
			  <li>
			    <a href="#slide2">
			      <img src="images/slide-4.jpg"  alt="" />
			    </a>
			     <div class="slider-detils">
			    	<h3>MENS FOOT BALL <label>BOOTS</label></h3>
			    	<span>Stay true to your team all day, every day, game day.</span>
			    	<a class="slide-btn" href="details.html"> Shop Now</a>
			    </div>
			  </li>
			  <li>
			    <a href="#slide3">
			      <img src="images/slide-1.jpg" alt="" />
			    </a>
			     <div class="slider-detils">
			    	<h3>MENS FOOT BALL <label>BOOTS</label></h3>
			    	<span>Stay true to your team all day, every day, game day.</span>
			    	<a class="slide-btn" href="details.html"> Shop Now</a>
			    </div>
			  </li>
			</ul>
			</div>
		</div>
		<div class="clear"> </div>
		<!----//End-image-slider---->
		<!----start-price-rage--->
		<div class="wrap">
			<div class="price-rage">
				<h3>Weekly selection:</h3>
				<div id="slider-range">
				</div>
			</div>
		</div>
		<!----//End-price-rage--->
		<!--- start-content---->
		<div class="content">
			<div class="wrap">
				<div class="content-left">
						<div class="content-left-top-grid">
							<div class="content-left-price-selection">
								<h4>Select Price:</h4>
								<div class="price-selection-tree">
									<span class="col_checkbox">
										<input id="10" class="css-checkbox10" type="checkbox">
										<label class="normal"><i for="10" name="demo_lbl_10"  class="css-label10"> </i> 400</label>
									</span>
									<span class="col_checkbox">
										<input id="11" class="css-checkbox11" type="checkbox">
										<label class="active1"><i for="11" name="demo_lbl_11"  class="css-label11"> </i>350</label>
									</span>
									<span class="col_checkbox">
										<input id="12" class="css-checkbox12" type="checkbox">
										<label class="normal"><i for="12" name="demo_lbl_12"  class="css-label12"> </i> 300</label>
									</span>
									<span class="col_checkbox">
										<input id="13" class="css-checkbox13" type="checkbox">
										<label class="normal"><i for="13" name="demo_lbl_13"  class="css-label13"> </i>250</label>
									</span>
									<span class="col_checkbox">
										<input id="14" class="css-checkbox14" type="checkbox">
										<label class="normal"><i for="14" name="demo_lbl_14"  class="css-label14"> </i> 200</label>
									</span>
									<span class="col_checkbox">
										<input id="15" class="css-checkbox15" type="checkbox">
										<label class="normal"><i for="15" name="demo_lbl_15"  class="css-label15"> </i>150</label>
									</span>
								</div>
								
						</div>
						</div>
						<div class="content-left-bottom-grid">
							<h4>Boys Football:</h4>
							<div class="content-left-bottom-grids">
								<div class="content-left-bottom-grid1">
									<img src="images/foot-ball.jpg" title="football" />
									<h5><a href="details.html">Nike Strike PL Hi-Vis</a></h5>
									<span> Football</span>
									<label>&#163; 375</label>
								</div>
								<div class="content-left-bottom-grid1">
									<img src="images/jarse.jpg" title="jarse" />
									<h5><a href="details.html">Nike Strike PL Hi-Vis</a></h5>
									<span> Football</span>
									<label>&#163; 375</label>
								</div>
							</div>
						</div>
				</div>
				<form:form action="addToCart" method="post" modelAttribute="cart" name="" >
								<form:hidden path="cart_id" />
								<form:hidden path="cart_user_id"  />
							<form:hidden path="cart_pro_id"/>
								
								
										<form:input path="cart_quantity" />
										<form:input path="cart_size" />
										
										
										
										<div class="clear"> </div>
											
										<div class="clear"> </div>
								
								<div class="clear"> </div>
								
								<div class="clear"> </div>
								<input type="submit" name="submit" value="Add to cart" /> 
								
					</form:form>
				<div class="content-right">
					<div class="product-grids">
						<!--- start-rate---->
							<script src="js/jstarbox.js"></script>
							<link rel="stylesheet" href="https://dl.dropboxusercontent.com/s/4ekuk0j97f4r4iv/jstarbox.css" type="text/css" media="screen" charset="utf-8" />
							<script type="text/javascript">
								jQuery(function() {
									jQuery('.starbox').each(function() {
										var starbox = jQuery(this);
										starbox.starbox({
											average: starbox.attr('data-start-value'),
											changeable: starbox.hasClass('unchangeable') ? false : starbox.hasClass('clickonce') ? 'once' : true,
											ghosting: starbox.hasClass('ghosting'),
											autoUpdateAverage: starbox.hasClass('autoupdate'),
											buttons: starbox.hasClass('smooth') ? false : starbox.attr('data-button-count') || 5,
											stars: starbox.attr('data-star-count') || 5
										}).bind('starbox-value-changed', function(event, value) {
											if(starbox.hasClass('random')) {
												var val = Math.random();
												starbox.next().text(' '+val);
												return val;
											} 
										})
									});
								});
							</script>
							<!---//End-rate---->
							<!---caption-script---->
							<!---//caption-script---->
							 
       
							<!-- Repeat block -->
						
							<c:set var="count" value="0"></c:set>
							<c:forEach var="product" items="${list}">
							<c:set var="count" value="${count+1}"></c:set>
							<c:if test="${count mod 3 !=0}">
					
						<div onclick="location.href='ProductDetails?id=${product.id}';" class="product-grid fade">
					</c:if>
					<c:if test="${count mod 3 ==0}">
					
						<div onclick="location.href='ProductDetails?id=${product.id}';" class="product-grid fade last-grid">
					</c:if>
						
							
							<div class="product-pic">
								<a href="#"><img src="${product.img}" title="product-name" /></a>
								<p>
								<a href="#">${product.name}</a>
								<span>${product.type}</span>
								</p>
							</div>
							<div class="product-info">
								<div class="product-info-cust">
									<a href="ProductDetails?id=${product.id}">Details</a>
								</div>
								<div class="product-info-price">
									<a href="ProductDetails?id=${product.id}">${product.price}</a>
								</div>
								<div class="clear"> </div>
							</div>
							<div class="more-product-info">
								<span> </span>
							</div>
						</div>
							
						</c:forEach>
												<div class="clear"> </div>
					</div>
				</div>
				<div class="clear"> </div>
			</div>
		</div>
		<!---- start-bottom-grids---->
		<div class="bottom-grids">
			<div class="bottom-top-grids">
				<div class="wrap">
					<div class="bottom-top-grid">
						<h4>GET HELP</h4>
						<ul>
							<li><a href="contact.html">Contact us</a></li>
							<li><a href="#">Shopping</a></li>
							<li><a href="#">NIKEiD</a></li>
							<li><a href="#">Nike+</a></li>
						</ul>
					</div>
					<div class="bottom-top-grid">
						<h4>ORDERS</h4>
						<ul>
							<li><a href="#">Payment options</a></li>
							<li><a href="#">Shipping and delivery</a></li>
							<li><a href="#">Returns</a></li>
						</ul>
					</div>
					<div class="bottom-top-grid last-bottom-top-grid">
						<h4>REGISTER</h4>
						<p>Create one account to manage everything you do with Nike, from your shopping preferences to your Nike+ activity.</p>
						<a class="learn-more" href="#">Learn more</a>
					</div>
					<div class="clear"> </div>
				</div>
			</div>
			<div class="bottom-bottom-grids">
				<div class="wrap">
					<div class="bottom-bottom-grid">
						<h6>EMAIL SIGN UP</h6>
						<p>Be the first to know about new products and special offers.</p>
						<a class="learn-more" href="#">Sign up now</a>
					</div>
					<div class="bottom-bottom-grid">
						<h6>GIFT CARDS</h6>
						<p>Give the gift that always fits.</p>
						<a class="learn-more" href="#">View cards</a>
					</div>
					<div class="bottom-bottom-grid last-bottom-bottom-grid">
						<h6>STORES NEAR YOU</h6>
						<p>Locate a Nike retail store or authorized retailer.</p>
						<a class="learn-more" href="#">Search</a>
					</div>
					<div class="clear"> </div>
				</div>
			</div>
		</div>
		<!---- //End-bottom-grids---->
		<!--- //End-content---->
		<!---start-footer---->
		<div class="footer">
			<div class="wrap">
				<div class="footer-left">
					<ul>
						<li><a href="#">United Kingdom</a> <span> </span></li>
						<li><a href="#">Terms of Use</a> <span> </span></li>
						<li><a href="#">Nike Inc.</a> <span> </span></li>
						<li><a href="#">Launch Calendar</a> <span> </span></li>
						<li><a href="#">Privacy & Cookie Policy</a> <span> </span></li>
						<li><a href="#">Cookie Settings</a></li>
						<div class="clear"> </div>
					</ul>
				</div>
				<div class="footer-right">
					<p>Template by <a href="http://w3layouts.com/">W3layouts</a></p>
					<script type="text/javascript">
						$(document).ready(function() {
							/*
							var defaults = {
					  			containerID: 'toTop', // fading element id
								containerHoverID: 'toTopHover', // fading element hover id
								scrollSpeed: 1200,
								easingType: 'linear' 
					 		};
							*/
							
							$().UItoTop({ easingType: 'easeOutQuart' });
							
						});
					</script>
			    <a href="#" id="toTop" style="display: block;"><span id="toTopHover" style="opacity: 1;"></span></a>
				</div>
				<div class="clear"> </div>
			</div>
		</div>
		<!---//End-footer---->
		<!---//End-wrap---->
	</body>
</html>

