<!DocType Html!>
    <html>
        <head>
            <title>Criando um Novo Usuário</title>
            <script type="text/javascript">
				//se ele digitou o email certo vá para o painel
                function Cadastrosuccessfully()
                {
                    setTimeout("window.location='login.html'", 2000);  
                }
				//se não vá para o login
                function Cadastrofailed()
                {
                    setTimeout("window.location='login.html'", 2000);
                }
            </script>
            
        </head>
        <body>
            <?PHP
                include 'banco.php';
                $Nome=$_POST['txtNome'];
                $Sobrenome=$_POST['txtSobrenome'];
                $Email=$_POST['txtEmail'];
                $Senha=$_POST['txtSenhas'];
                $ConSenha=$_POST['txtConSenha'];
            
            
                $sql = "INSERT INTO tbUsuario(nome_completo, sobre_nome, email, senha) values('$Nome','$Sobrenome', '$Email','$Senha')";
                mysqli_query($conexao,$sql); 
                mysqli_close($conexao);
            ?>
        </body>
    </html>