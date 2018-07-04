<?php
    session_start();
?>
<html>
    <head>
        <title>Login</title>
        <meta name="description" content="">
        <meta charset="utf-8">
        <link rel="stylesheet" href="../ITECH/cssIndex/Main.css">
        <script src="cssIndex/jquery-1.10.2.min.js"></script>
        <link href="https://fonts.googleapis.com/css?family=Quicksand" rel="stylesheet">
        <script src="cssIndex/jquerylogin.js"></script>
        <link rel="shortcut icon" href="imagens/favicon.ico" type="image/x-icon"/>
    </head>
    <body>
        <?php
        //se existir a variavel global msg
        if(isset($_SESSION['msg'])){
        //mostre a mensagem
        echo $_SESSION['msg'];
        //depois a destrua
        unset($_SESSION['msg']);
        }
        ?>

        <div class="box">
            <div class="principal"></div>
            <div class="login">
                <h1>LOGIN</h1>
                <br>
                <br>
                <form name="login" method="post" action="validaLogin.php">
                    <input name="txtUsuario" type="email" placeholder="E-mail"/><br>
                    <input name="txtSenha" type="password" placeholder="Senha"/><br>
                    <button type="submit" value="Login" name="botaoAcessar">Entrar</button>
                </form>
                <h5><a href="codigo.php">Esqueceu a senha?</a></h5>
            </div>
            <div class="cadastro">
                <form name="Cadastrar" method="post" action="Cadastrar.php">
                <h1>CADASTRO</h1>
                <input name="txtNome" type="text" placeholder="Nome Completo".focus()/><br>
                <input name="txtEmail" type="email" placeholder="E-mail"/><br>
                <input name="txtSenhas" type="password" placeholder="Senha"/><br>
                <input name="txtPergunta" type="pergunts" placeholder="Pergunta de Segurança"/><br>
                <input name="txtResposta" type="resposta" placeholder="Resposta de Segurança"/><br>
                <button>Cadastrar</button>
                </form>
            </div>
            <div class="labelConta">Já tem uma conta?</div>
            <div class="labelNconta">Não tem uma conta?</div>
            <button class="btnLogin">LOGIN</button>
            <button class="btnCadastro">CADASTRE-SE</button>
        </div>
    </body>
</html>