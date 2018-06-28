<Doctype HTML!>
    <html>
        <head>
            <title>Login Administrador - Gennius</title>
            <meta charset="UTF-8"/>
            <link rel="stylesheet" type="text/css" href="cssIndex/admin.css"/>
            <link href="https://fonts.googleapis.com/css?family=Quicksand" rel="stylesheet">
            <link rel="shortcut icon" href="imagens/favicon.ico" type="image/x-icon" />
        </head>
        <body>
            <div class="container">
                <form name="login" method="post" action="acessar.php">
                    <br>
                    <h1>Administrador</h1><br>
                    <input type="text" name="txtUsuario" placeholder="Usuário">
                    <br/>
                    <input type="password" name="txtSenha" placeholder="Senha">
                    <br/>
                    <input type="submit" value="Acessar" name="botaoAcessar">
                    <button type="button" class="botao"><a href="index.html">Voltar ao site</a></button>
                    <br/>
                </form>
            </div>
            <footer>
                <p> Todos os direitos reservados © 2018</p>
            </footer>
        </body>
    </html>