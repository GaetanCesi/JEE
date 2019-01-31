<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Insert title here</title>
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
	</head>
	
	<body>
		<div class="container">
			<div class="row">
				<div class="col-sm"></div>
				<div class="col-6">
					<h1 style="text-align:center">Login</h1>
						<br>
						<br>
						<br>									
							<div class="card">
								<article class="card-body">
								<h4 class="card-title mb-4 mt-1">Connexion</h4>
									 <form  method="post" action="login">
								    <div class="form-group">
								    	<label>Votre login (obligatoire)</label>
								        <input name="txtlogin" class="form-control" placeholder="login" type="text">
								    </div> 
								    <div class="form-group">
								    	<label>Votre mot de passe (non obligatoir si login != admin)</label>
									        <input class="form-control" name="txtpassword" placeholder="mot de passe" type="password">
									    </div>    
									    <div class="form-group">
									        <button type="submit" class="btn btn-primary btn-block"> Login  </button>
									    </div>                                                           
									</form>
								</article>
						</div>							
					</div>
				<div class="col-sm"></div>
			</div>	 
		</div>		
	</body>
</html>