<?php 
session_start();
?>
<!DOCTYPE html>
<html>
<head>
	<title></title>
	<link rel="stylesheet" type="text/css" href="loginCliente.css">
	<meta charset="utf-8">
</head>
<body>
	<div class="tela">
		<form name= "loginCliente" method="post" enctype="multipart/form-data" action="../control/loginControl.php">
		<br>
			Login: <br><br> <input type="text" name="login" class="xd"><br> <br>
			Senha: <br><br>  <input type="password" name="senha" class="xd"> <br> <br>
			<a href="loginAdministrador.php" >Entrar como administrador</a><br> <br>
			<a href="cadCliente.php">Criar conta</a><br><br>
			<input type="submit" value="Entrar" class="butao">

			<input type="hidden" value="1" name="acao">
		</form>
		<br>
	</div>
</body>
</html>