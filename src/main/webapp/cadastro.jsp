<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="ISO-8859-1">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
	
	<title>CWC3D</title>
	
<style type="text/css">

form{
 position: absolute;
 top: 40%;
 left: 33%;
 right: 33%;
}


h5{
position: absolute;
 top: 30%;
 left: 33%;

   
}

.msg{
 position: absolute;
 top: 10%;
 left: 33%;
 font-size: 15px;
   color: #664d03;
    background-color: #fff3cd;
    border-color: #ffecb5;

}
</style>	
	
</head>
<body>


  <style>
    .image-container {
        display: flex;
        justify-content: center;
    }
</style>
<div></div>  
   <div></div>  
   <div></div>  
   <div></div>  
   <div></div>  
   <div></div>  

<div class="image-container">
    <img src="<%= request.getContextPath() %>/assets/images/icone.png" class="img-radius" height="240px" alt="User-Profile-Image">
</div>
   <div></div>  
   <div></div>  
   
   <div></div>  
   
   <div></div>  
   <div></div>  
   <div></div>  
   <div></div>  






<form action="<%=request.getContextPath() %>/ServletCadU" method="post" class="row g-3 needs-validation" novalidate>


 
     

<div></div>  

<div class="mb-3">
  <label class="form-label" for="login">Login</label>
  <input class="form-control" id="login" name="login" type="text" required>
   <div class="invalid-feedback">
      Obrigatório
    </div>
     <div class="valid-feedback">
      ok
    </div>
 </div> 
 
 <div class="mb-3">
  <label class="form-label" for="senha">Senha</label> 
  <input class="form-control" id="senha" name="senha" type="password" required>
   <div class="invalid-feedback">
      Obrigatório
    </div>
    <div class="valid-feedback">
      ok
    </div>
 </div>
 
 
 
 <div class="mb-3">
  <label class="form-label" for="senha">Nome</label> 
  <input class="form-control" id="nome" name="nome" type="text" required>
   <div class="invalid-feedback">
      Obrigatório
    </div>
    <div class="valid-feedback">
      ok
    </div>
 </div>
 
 <div class="mb-3">
  <label class="form-label" for="email">Email</label>
  <input class="form-control" id="email" name="email" type="email" required>
   <div class="invalid-feedback">
      Obrigatório
    </div>
     <div class="valid-feedback">
      ok
    </div>
 </div> 
 
 
 <div class="mb-3">
  <label class="form-label" for="email">Permissão:</label>
  <input class="form-control" id="permissao" name="permissao" type="texto" value="usuario" readonly="readonly" >
      
 </div> 
 
 
 
 

  <input type="submit" value="Acessar" class="btn btn-primary"  >
  

</form>

<h5 class="msg">${msg}</h5>

   <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>


<script type="text/javascript">


</script>
</body>
</html>