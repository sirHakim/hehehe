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
   <a id="logo" href="#">Training</a>
  <nav>
    <ul>
      <li><a href="http://localhost:8080/training/" id="lalu" class="current">Home</a></li>
      <li><a href="http://localhost:8080/training/About"id="lalu">About</a></li>
      <li><a href="http://localhost:8080/training/login" id="lalu">LogIn</a></li>
      <li><a href="http://localhost:8080/training/content" id="lalu">Content</a></li>
    </ul>
  </nav>
</header>
</div>
<div class="layer1">
 <table>
  <tr>
    <th>AKB48</th>
    <th>SNH48</th>
  </tr>
  <tr>
    <td><iframe width="560" height="315" src="https://www.youtube.com/embed/B4IdfFfMMNA" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe></td>
    <td><iframe width="560" height="315" src="https://www.youtube.com/embed/wVZbHrI0q24" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe></td>
  </tr>
  <tr>
    <td><iframe width="560" height="315" src="https://www.youtube.com/embed/c9d9g56Jug8" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe></td>
    <td><iframe width="560" height="315" src="https://www.youtube.com/embed/JLhVFmJCqoY" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe></td>
  </tr>
  <tr>
  <td><iframe width="560" height="315" src="https://www.youtube.com/embed/vxHUkJQ-HzM" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe></td>
  <td><iframe width="560" height="315" src="https://www.youtube.com/embed/wGGpYw9Iyf0" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe></td>
  </tr>
</table>
</div>
</body>
</html>
