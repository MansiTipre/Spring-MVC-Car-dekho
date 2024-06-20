<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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

#para{
margin-top:100px;
font-size: 30px;
color:white;
}
#box{
display: flex;
justify-content:center;
align-items: center;
}
#yes,#no{
margin:50px;
}
.btn{
 background-color: blue;
 height: 50px;
width: 100px;
color: white;
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

    <%Integer id = (Integer) request.getAttribute("id");
%>

   <p id="para" align="center">Are you sure you want to delete the car from the list?</p>
   <div id="box">
       <br>
       <div id="no">
          <form action="my_cars" >
              <input class="btn" type="submit" value="No">
           </form>
       </div>
       <div id="yes">
           <form action="delete_car" method="post" >
           <!-- Correctly use the 'hidden' attribute to hide the input field -->
           <input type="hidden" name="id" value="<%= id %>">
           <input class="btn" type="submit" value="Yes">
         </form>
       </div>
   </div>
</body>
</html>