<%@page import="java.security.MessageDigest"%>
<%@page import="java.util.ArrayList"%>
<%@page import="mesclass.Message"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>ChatRoom</title>
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
	</head>
	<body>
		<div class="container">
  

		<%  
	
		ArrayList<Message> messages = (ArrayList<Message>) request.getAttribute("messages");
		
		if(messages.isEmpty()!=true)
			
			for(Message mes : messages) {%>
			<div class="row">
				 <div class="col-6">
		            <div class="alert-message alert-message-info">
		                <h4><% mes.getLogin();%></h4>
		                <p><% mes.getText();%></p>
			    			<%	if (request.getSession().getAttribute("login")=="admin"){%>
			    			<form action="admin" method="post">
					    	<input type="hidden" id="custId" name="custId" value="<%messages.indexOf(mes);%>">
					    	<button type="submit" class="btn btn-danger">Supprimer</button></form>
					    	 <%}%>
			    	  </div>
		        	</div>
		     </div>   
			   
			    
			    
			<%}else{
				out.println("<p>Pas de messages pour le moment.");
			}
				
			%>
			<div class="row">
				<div class="col-6">
					<form action="chatroom" method="post">
					  <div class="form-group">
					    <label>Votre Message</label>  
					  	<textarea name="txtmessage" class="form-control" id="exampleFormControlTextarea3" rows="5"></textarea>
					  </div>
					  <input type="submit" class="btn btn-primary"></input>
					</form>
				</div>	
			</div>
			
		</div>
	</body>
</html>