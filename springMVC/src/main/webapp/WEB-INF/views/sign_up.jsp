<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Car dekho application</title>
<style type="text/css">
body{
   background-color:  #01204E;
}
.f{
 background-color: #F6DCAC;
  border:1px solid ;
  height: 400px;
  width: 400px;
  margin: 100px auto;
}
.btn{
color:#F6DCAC;
    height: 40px;
    width: 350px;
    background-color:  #01204E;
    margin-top:20px; 
    cursor: pointer;
}
.input{
 background-color: #F6DCAC;
    height: 30px;
    width: 250px;
    margin-top: 10px;   
}
a{
text-decoration: none;
color: black;
}
#message{
    color: red;
}

</style>
</head>
<body>

    <%String message=(String)request.getAttribute("message");
       if (message!= null){
    	   %>
    	   <div align="center">
    	      <h1 id="message"><%=message %> </h1>
    	   </div>
   <% 	   
       }
    %>
      <div align="center" class="f"  >
      <h1>Sign up</h1>
      <form action="add_user" method="post" >
         <table>
            <tr>
               <td class="label">Name:</td>
               <td> <input type="text" name="name" class="input" required="required"> </td>
            </tr>
             <tr>
               <td class="label">Email:</td>
               <td> <input type="email" name="email" class="input" required="required"> </td>
            </tr>
             <tr>
               <td class="label">Password:</td>
               <td> <input type="password" name="pass" class="input" required="required"> </td>
            </tr>
         </table>
         <input type="submit" value="Sign up" class="btn" ><hr>
        <p>Already a User ? <a href="sign_in">Sign In</a></p>
      </form>
   </div>
</body>
</html>