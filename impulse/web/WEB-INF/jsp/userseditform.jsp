<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    

<html>
  <head>
    <title>Manage Users</title>
    <style>body { font-family: Verdana, Geneva, sans-serif; }</style>
  </head>
  <body>
    <h1>Edit Users</h1>  
    
    <form:form method="POST" action="/impulse/users/editsave">    
      <table >    
        <tr>  
          <td></td>    
          <td><form:hidden  path="username" /></td>  
        </tr>   
        <tr>    
          <td>Username : </td>   
          <td><form:input path="username"  /></td>  
        </tr> 
        <tr>    
          <td>Password : </td>   
          <td><form:input path="password"  /></td>  
        </tr> 
        <tr>    
          <td>Enabled : </td>   
          <td><form:input path="enabled"  /></td>  
        </tr> 
        <tr>    
          <td> </td>    
          <td><input type="submit" value="Edit Save" /></td>    
        </tr>    
      </table>    
    </form:form>    

  </body>
</html>