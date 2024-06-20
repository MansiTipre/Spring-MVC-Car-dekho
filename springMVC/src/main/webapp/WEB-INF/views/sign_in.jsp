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
    margin-bottom: 10px;   
}
a{
text-decoration: none;
color: black;
}
#message{
    color: red;
    margin-bottom: 5px;
}
hr{
 margin: 0px 21px 0px 21px;
}
</style>
</head>
<body>
 
   <div align="center" class="f"  >
   
      <h1>Sign In</h1>
      <form action="check_user" method="post">
      <%String message= (String)request.getAttribute("message") ;
      if(message!=null){
    	  %>
    	 <div align="center"> 
           <h4 id="message"> ( <%= message %> )</h4>
        </div>
      <%
      }
   %>
         <table>
             <tr>
               <td class="label">Email:</td>
               <td> <input type="email" name="email" class="input" required="required"> </td>
            </tr>
             <tr>
               <td class="label">Password:</td>
               <td> <input type="text" name="pass" class="input" required="required"> </td>
            </tr>
         </table>
         <input type="submit" value="Sign In" class="btn" >
         <br><br>
         <hr>
      </form>
       <p>New user ? <a href="sign_up"> Sign up </a></p>
   </div>

</body>
</html>