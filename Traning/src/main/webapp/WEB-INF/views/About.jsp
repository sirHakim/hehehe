<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
	<link rel="stylesheet" type="text/css" href="resources/css/style.css">
</head>
<body>
<div>
<header>
   <a id="logo" href="#">Traning</a>
  <nav>
    <ul>
      <li><a href="http://localhost:8080/training/" id="lalu" >Home</a></li>
      <li><a href="http://localhost:8080/training/About"id="lalu" class="current">About</a></li>
      <li><a href="http://localhost:8080/training/login" id="lalu">LogIn</a></li>
      <li><a href="http://localhost:8080/training/content" id="lalu">Content</a></li>
    </ul>
  </nav>
</header>

</div>
<div>
<h1>1)This is About</h1>

</div>

<P>  The time on the server is ${msg}. </P>
</body>
</html>
