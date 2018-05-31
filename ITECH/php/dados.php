<?PHP 
    //variaveis de conexao
    $host="localhost";
    $root="root";
    $senha="";
    $bd="pedido";
    //conectando o banco ao php
    $conexao = mysqli_connect($host, $root, $senha, $bd) or die (mysqli_error());
	//selecionando qual banco eu quero		
    mysqli_select_db($conexao, $bd) or die(mysqli_error());
?>
<!DocType Html!>
	<html>
		<head>
			<title>Mensagem enviada</title>
			<style>
				body{ text-align: center; font-size: 30px; font-family: verdana; background-color: #1a2028;}
				a{text-decoration: none;color:white;}
				.container{  	
					background: white;
					margin:13% auto 0 auto;
					width: 35%;
					height: 45%;
					padding: 15px;
					font-family: verdana;
					border-top: 6px solid #1ab188;
					border-radius: 4px;
					position: fixed center;
				}
			</style>
		</head>
		<body>
			<?PHP
				//informando as variaveis qual txt ela vai receber
				$Email=$_POST['txtEmail'];
				$Nome=$_POST['txtNome'];
				$Pedido=$_POST['txtPedido'];
				//enviando o que foi escrito nos txt para o banco de dados
				$sql = mysqli_query($conexao, "INSERT INTO pedidos (email, nome, pedido) VALUES ('$Email', '$Nome', '$Pedido')");
				//fechando a conexao
				mysqli_close($conexao);
			?>
			<div class="container">
			<h1>Mensagem enviada com sucesso!</h1>
			<a href="index.html">Voltar ao site</a>	
			</div>
		</body>
	</html>