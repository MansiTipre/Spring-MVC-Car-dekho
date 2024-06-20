<%@page import="com.jspiders.springMVC.dto.CarDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All cars</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">

<style type="text/css">
.nav{
   height: 50px;
   background-color:blue; 
   display: flex;
   justify-content: space-between;
   margin: 0px;
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
#div{
  margin: 50px auto;
  padding:20px;
  height:auto;
  width:600px;
  backdrop-filter:blur(10px);
}
#lay{
margin-top: 10px;
background-color: wheat;
border: 2px solid black;
}
.head{
font-size: 25px;
height: 40px;
width: 60px;
padding:20px;
align-items: center;
}
h3{
color: white;
}
.data{
font-size: 15px;
height: 30px;
width: 60px;
padding: 10px;
align-items: center;
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
  @SuppressWarnings("unchecked")
  List<CarDTO> cars= (List<CarDTO>) request.getAttribute("cars"); 
  if(cars != null){ 
	%>
	
<div align="center" id="div">
      <h3>Available cars</h3>
	<table id="lay" border="1px solid">
	   <tr>
	      <td class="head">Id</td>
	      <td class="head">Name</td>
	      <td class="head">Brand</td>
	      <td class="head">Price</td>
	   </tr>
	   <%for(CarDTO car:cars){  %>
	   <tr>
	       <td class="data"> <%=car.getId() %> </td>
	       <td class="data"> <%=car.getName() %> </td>
	       <td class="data"> <%=car.getBrand() %> </td>
	       <td class="data"> <%=car.getPrice() %> </td>
	   </tr>
	   <%} %>
	</table>
	<%
  }
  %>
  </div>
  
</body>
</html>