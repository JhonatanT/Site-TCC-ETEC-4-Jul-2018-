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
        <a href="index.html"><input type="button" id="voltar" value="" data-toggle="tooltip" title="Voltar"></a>
        <div id="box">
            <div id="main"></div>
            <div id="loginform">
                <h1>LOGIN</h1>
                <br>
                <br>
				<form name="login" method="post" action="validaLogin.php">
                    <input name="txtUsuario" type="email" placeholder="E-mail"/><br>
                    <input name="txtSenha" type="password" placeholder="Senha"/><br>
                    
                    
                    <button type="submit" value="Login" name="botaoAcessar">ENTRAR</button>
                </form>
                <h5><a href="lembrarSenha.html">Esqueceu a senha?</a></h5>
            </div>
            <div id="signupform">
                <form name="Cadastrar" method="post" action="Cadastrar.php">
                    <h1>CADASTRO</h1>
                    <input name="txtNome" type="text" placeholder="Nome Completo".focus()/><br>
                    <input name="txtEmail" type="email" placeholder="E-mail"/><br>
                    <input name="txtSenhas" type="password" placeholder="Senha"/><br>
                    <input name="txtPergunta" type="pergunts" placeholder="Pergunta de Segurança"/><br>
                    <input name="txtResposta" type="resposta" placeholder="Resposta de Segurança"/><br>
                    <button>CADASTRAR</button>
                </form>
            </div>
            <div id="login_msg">Já tem uma conta?</div>
            <div id="signup_msg">Não tem uma conta?</div>
            <button id="login_btn">LOGIN</button>
            <button id="signup_btn">CADASTRE-SE</button>
        </div>
    </body>
</html>