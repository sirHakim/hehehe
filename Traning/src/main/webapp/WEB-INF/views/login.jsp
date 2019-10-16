<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
	<link rel="stylesheet" type="text/css" href="resources/css/style.css">
	<link rel="stylesheet" type="text/css" href="resources/css/userlog.css">
	<script type="text/javascript" src="resources/js/userlog.js"></script>
	<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js" type="text/javascript"></script>
	<script type="text/javascript" src="http://code.jquery.com/jquery-1.7.1.min.js"></script>
</head>
<body>

<header>
   <a id="logo" href="#">Training</a>
  <nav>
    <ul>
      <li><a href="http://localhost:8080/training/" id="lalu" >Home</a></li>
      <li><a href="http://localhost:8080/training/About"id="lalu">About</a></li>
      <li><a href="http://localhost:8080/training/login" id="lalu"class="current">LogIn</a></li>
       <li><a href="http://localhost:8080/training/content" id="lalu">Content</a></li>
    </ul>
  </nav>
</header>
<div class="materialContainer">


   <div class="box">

      <div class="title">LOGIN</div>

      <div class="input">
         <label for="name">Username</label>
         <input type="text" name="name" id="name">
         <span class="spin"></span>
      </div>

      <div class="input">
         <label for="pass">Password</label>
         <input type="password" name="pass" id="pass">
         <span class="spin"></span>
      </div>

      <div class="button login">
         <button><span>GO</span> <i class="fa fa-check"></i></button>
      </div>

      <a href="" class="pass-forgot">Forgot your password?</a>

   </div>

   <div class="overbox">
      <div class="material-button alt-2"><span class="shape"></span></div>

      <div class="title">REGISTER</div>

      <div class="input">
         <label for="regname">Username</label>
         <input type="text" name="regname" id="regname">
         <span class="spin"></span>
      </div>

      <div class="input">
         <label for="regpass">Password</label>
         <input type="password" name="regpass" id="regpass">
         <span class="spin"></span>
      </div>

      <div class="input">
         <label for="reregpass">Repeat Password</label>
         <input type="password" name="reregpass" id="reregpass">
         <span class="spin"></span>
      </div>

      <div class="button">
         <button><span>NEXT</span></button>
      </div>
   </div>
</div>
	<script>
	$(function() {

		   $(".input input").focus(function() {

		      $(this).parent(".input").each(function() {
		         $("label", this).css({
		            "line-height": "18px",
		            "font-size": "18px",
		            "font-weight": "100",
		            "top": "0px"
		         })
		         $(".spin", this).css({
		            "width": "100%"
		         })
		      });
		   }).blur(function() {
		      $(".spin").css({
		         "width": "0px"
		      })
		      if ($(this).val() == "") {
		         $(this).parent(".input").each(function() {
		            $("label", this).css({
		               "line-height": "60px",
		               "font-size": "24px",
		               "font-weight": "300",
		               "top": "10px"
		            })
		         });

		      }
		   });

		   $(".button").click(function(e) {
		      var pX = e.pageX,
		         pY = e.pageY,
		         oX = parseInt($(this).offset().left),
		         oY = parseInt($(this).offset().top);

		      $(this).append('<span class="click-efect x-' + oX + ' y-' + oY + '" style="margin-left:' + (pX - oX) + 'px;margin-top:' + (pY - oY) + 'px;"></span>')
		      $('.x-' + oX + '.y-' + oY + '').animate({
		         "width": "500px",
		         "height": "500px",
		         "top": "-250px",
		         "left": "-250px",

		      }, 600);
		      $("button", this).addClass('active');
		   })

		   $(".alt-2").click(function() {
		      if (!$(this).hasClass('material-button')) {
		         $(".shape").css({
		            "width": "100%",
		            "height": "100%",
		            "transform": "rotate(0deg)"
		         })

		         setTimeout(function() {
		            $(".overbox").css({
		               "overflow": "initial"
		            })
		         }, 600)

		         $(this).animate({
		            "width": "140px",
		            "height": "140px"
		         }, 500, function() {
		            $(".box").removeClass("back");

		            $(this).removeClass('active')
		         });

		         $(".overbox .title").fadeOut(300);
		         $(".overbox .input").fadeOut(300);
		         $(".overbox .button").fadeOut(300);

		         $(".alt-2").addClass('material-buton');
		      }

		   })

		   $(".material-button").click(function() {

		      if ($(this).hasClass('material-button')) {
		         setTimeout(function() {
		            $(".overbox").css({
		               "overflow": "hidden"
		            })
		            $(".box").addClass("back");
		         }, 200)
		         $(this).addClass('active').animate({
		            "width": "700px",
		            "height": "700px"
		         });

		         setTimeout(function() {
		            $(".shape").css({
		               "width": "50%",
		               "height": "50%",
		               "transform": "rotate(45deg)"
		            })

		            $(".overbox .title").fadeIn(300);
		            $(".overbox .input").fadeIn(300);
		            $(".overbox .button").fadeIn(300);
		         }, 700)

		         $(this).removeClass('material-button');

		      }

		      if ($(".alt-2").hasClass('material-buton')) {
		         $(".alt-2").removeClass('material-buton');
		         $(".alt-2").addClass('material-button');
		      }

		   });

		});
	</script>
</body>
</html>
