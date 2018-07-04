<!DocType Html!>
    <html>
        <head>
            <title>Deslogando o Usuário</title>
            <script type="text/javascript">
				//se ele digitou o email certo vá para o painel
                function saindo()
                {
                    setTimeout("window.location='carregandoAdmin.php'", 0);  
                }
            </script>
            <link rel="shortcut icon" href="imagens/favicon.ico" type="image/x-icon" />
        </head>
        <body>
<?Php 
    session_start();
    unset
    (
        $_SESSION['NomeAdmin']
    );
            echo"<script>saindo()</script>";
?>