<?php
session_start();
?>

<html>
        <head>
            <title>Recuperar Senha - Gennius</title>
            <meta charset="UTF-8"/>
            <link rel="stylesheet" type="text/css" href="cssIndex/esqueciSenha.css"/>
            <link href="https://fonts.googleapis.com/css?family=Quicksand" rel="stylesheet">
            <link rel="shortcut icon" href="imagens/favicon.ico" type="image/x-icon" />
        </head>
        <body>
            <div class="container">
                <form name="upandoSenha" method="post" action="upandoSenha.php">
                    <br>
                    <h1>Alterar Senha</h1>
                    <h3>Digite o Códido: <?php echo $_SESSION['usuarioId']; ?>, Para Confirmar</h3>
                    <input type="password" name="ID" placeholder=<?php echo $_SESSION['usuarioId']; ?>>
                    <br>
                    <input type="password" name="Senha" placeholder="Nova Senha"><br>
                    <input type="password" name="ConfirmSenha" placeholder="Confirmar Senha">
                    <br/>
                   
                    <br/>
                    <input type="submit" value="Alterar" name="botaoAcessar">
                    
                    <br/>
                </form>
            </div>
            <br>
            <br>
            <br>

            <footer>
                <p> Todos os direitos reservados © 2018</p>
            </footer>
        </body>
    </html>