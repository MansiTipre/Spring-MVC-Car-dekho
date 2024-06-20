<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My Profile</title>
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
   width: 500px;
   justify-content: space-around;
}
a{
 text-decoration: none;
 color: white;
 margin-top: 15px;
 text-align: end;
}
</style>
</head>
<body>
     
     <div class="nav">
         <div class="cars">
            
         </div>
         <div class="cars">
          <a href="home">Home</a>
            <a href="add_page">Add cars</a>
            <a href="my_cars">My cars</a>
            <a href="edit_profile">Edit Profile</a>
            <a href="sign_out">Sign Out</a>
         </div>
     </div>
    <h1 align="center"> Profile Page </h1>
</body>
</html>