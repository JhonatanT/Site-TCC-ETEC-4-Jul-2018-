<?PHP
    $host="localhost";
    $root="root";
    $senha="";
    $bd="GenniusDB";
    $conexao = mysqli_connect($host, $root, $senha, $bd) or die (mysqli_error());

    mysqli_select_db($conexao, $bd) or die(mysqli_error());
?>
<!DocType Html!>
    <html>
        <head>
            <title>Criando um Novo Usuário</title>
            <script type="text/javascript">
				//se ele digitou o email certo vá para o painel
                function Cadastrosuccessfully()
                {
                    setTimeout("window.location='carregando2.php'", 0);  
                }
				//se não vá para o login
                function Cadastrofailed()
                {
                    setTimeout("window.location='login.php'", 2000);
                }
            </script>
            
        </head>
        <body>
            <?PHP
                $Nome=$_POST['txtNome'];
                $Email=$_POST['txtEmail'];
                $Senha=$_POST['txtSenhas'];          
            
                $sql = "INSERT INTO tbUsuario(nome_completo, email, senha) values('$Nome', '$Email','$Senha')";
                mysqli_query($conexao,$sql); 
                mysqli_close($conexao);
                echo "<script>Cadastrosuccessfully()</script>";
            ?>
        </body>
    </html>