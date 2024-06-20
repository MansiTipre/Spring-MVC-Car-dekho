<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
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
background-image: url("https://www.hdwallpapers.in/download/blue_mercedes_benz_glc_2023_car_4k_5k_hd_cars-5120x2880.jpg");
}
.cars{
   display:flex;
   width: 400px;
   justify-content: space-around;
}
a{
 text-decoration: none;
 color: white;
 margin-top: 15px;
 text-align: end;
}
#icon{
height: 50px;
width: 50px;
margin:10px 0px 0px 0px;
font-size: 30px;

}
</style>
</head>
<body>
     
     <div class="nav">
         <div class="cars">
            
         </div>
         <div class="cars">
            <a href="all_cars">All cars</a>
            <a href="my_profile" id="icon"><i class="fas fa-user"></i></a>
         </div>
     </div>
    <h1 align="center"> welcome to Home page </h1>
</body>
</html>