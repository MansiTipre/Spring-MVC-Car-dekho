<%@page import="com.jspiders.springMVC.dto.CarDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit car details</title>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">

<style type="text/css">
.nav{
   height: 50px;
   background-color:blue; 
   display: flex;
   justify-content: space-between;
}
body{
background-repeat:no-repeat;
background-size:cover;
background-position:fix;
height:100vh;
width:100%;
background-image: linear-gradient(rgba(0, 0, 0, 0.7), rgba(0, 0, 0, 0.7)), url("https://www.hdwallpapers.in/download/blue_mercedes_benz_glc_2023_car_4k_5k_hd_cars-5120x2880.jpg") ;
}
.cars{
   display:flex;
   width: 400px;
   justify-content: end;
   margin: 0px 50px ;
   padding: 0px 20px;
}
a{
 text-decoration: none;
 color: white;
 margin: 15px 30px;
 text-align: end;
}

#icon{
height: 50px;
width: 50px;
margin:10px 0px 0px 0px;
font-size: 30px;
}

input{
 height: 30px
}
.btn{
background-color: blue;
margin-top:10px;
height: 50px;
width: 100px;
color: white;
}

.add{
 border: 1px solid black;
 height: 350px;
 width: 300px;
 background-color:white;
 font-size:large;
 margin:100px 0px 0px 500px;
}

#msg{
color: red;
}
</style>
</head>
<body>
  <div class="nav">
         <div class="cars car">        
         </div>
         <div class="cars">
            <a href="home">Home</a>
            <a href="my_profile" id="icon"><i class="fas fa-user"></i></a>
         </div>
     </div>

  <%
	CarDTO car = (CarDTO) request.getAttribute("car");
	%>
	<div align="center" class="add">
		<h3 id="head">Update Car Details</h3>
		<%
	String message = (String) request.getAttribute("message");
	if (message != null) {
	%>
	<div align="center">
		<h5 id="message"><%=message%></h5>
	</div>
	<%
	}
	%>
		<form action="update_car" method="post">
			<table>
				<tr>
					<td class="label">Id</td>
					<td><input class="input" type="text" name="id"
						value="<%=car.getId()%>" readonly="readonly"></td>
				</tr>
				<tr>
					<td class="label">Name</td>
					<td><input class="input" type="text" name="name"
						value="<%=car.getName()%>" required="required"></td>
				</tr>
				<tr>
					<td class="label">Brand</td>
					<td><input class="input" type="text" name="brand"
						value="<%=car.getBrand()%>" required="required"></td>
				</tr>
				<tr>
					<td class="label">Price</td>
					<td><input class="input" type="text" name="price"
						value="<%=car.getPrice()%>" required="required"></td>
				</tr>
			</table>
			<input class="btn" type="submit" value="UPDATE">
		</form>
	</div>
  
</body>
</html>