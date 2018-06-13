<!DOCTYPE html>
<html lang="pt-br">
  <head>
    <title>Aguarde...</title>
      <link rel="stylesheet" href="../ITECH/cssIndex/carregando.css">
       <link rel="shortcut icon" href="imagens/favicon.ico" type="image/x-icon"/>
      <script type="text/javascript">
				//se ele digitou o email certo vá para o painel
                function loginsuccessfully()
                {
                    setTimeout("window.location='enem.html'", 2000);  
                }
				//se não vá para o login
                function loginfailed()
                {
                    setTimeout("window.location='login.html'", 2000);
                }
            </script>
    <meta charset="utf-8">
  </head>
  <body>
    <div class="cssload-loader">
	<div class="cssload-dots">
		<div class="cssload-dot"></div>
		<div class="cssload-dot"></div>
		<div class="cssload-dot"></div>
		<div class="cssload-dot"></div>
		<div class="cssload-dot"></div>
		<div class="cssload-dot"></div>
		<div class="cssload-dot"></div>
		<div class="cssload-dot"></div>
		<div class="cssload-dot"></div>
	</div>
</div>
  </body>
    <?PHP
        echo "<script>loginsuccessfully()</script>";
    ?>
</html>