<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript" language="javascript"
  src="https://code.jquery.com/jquery-3.2.1.js"
    integrity="sha256-DZAnKJ/6XZ9si04Hgrsxu/8s717jcIzLy3oi35EouyE="
    crossorigin="anonymous"></script>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Hello World</title>
 <link href="${pageContext.request.contextPath}/resources/main.css" rel="stylesheet" >

<script type="text/javascript">
function process(){
 $.ajax({
  type: "post",
  url: "http://localhost:8080/hello/add",
  cache: false,    
  data:'name=' + $("#name").val()+"&ip=Hello",
  success: function(response){
   $('#result').html("");
  // console.log(response);
   //var obj = JSON.parse(response);
   $('#result').html(response.name);
  },
  error: function(){      
   console.log('Error while request..');
  }
 });
}
</script>
</head>
<body>
 <form name="ajaxForm" method="post"> 
  <table cellpadding="0" cellspacing="0" border="1" class="GridOne">
   <tr>
    <td>name</td>
    <td><input type="text" name="name" id="name" value=" "></td>
   </tr>
   <tr>
    <td colspan="2" align="center"><input type="button" value="Submit" onclick="process();"></td>
   </tr>
  </table>
 </form>
  <h1>Hello world</h1>
 <div id="result"></div>
</body>
</html>