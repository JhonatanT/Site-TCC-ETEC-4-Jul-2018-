<?PHP
    $host="localhost";
    $root="root";
    $senha="1234";
    $bd="Site_bd";
    $conexao = mysqli_connect($host, $root, $senha, $bd) or die (mysqli_error());

    mysqli_select_db($conexao, $bd) or die(mysqli_error());
?>
<!DocType Html!>
    <html>
        <head>
            <title>Autenticando o Usuário</title>
            <script type="text/javascript">
				//se ele digitou o email certo vá para o painel
                function loginsuccessfully()
                {
                    setTimeout("window.location='painel.php'", 2000);  
                }
				//se não vá para o login
                function loginfailed()
                {
                    setTimeout("window.location='Login.html'", 2000);
                }
            </script>
        </head>
        <body>
            <?PHP
                $Usuario=$_POST['txtUsuario'];
                $Senha=$_POST['txtSenha'];

                $sql = mysqli_query($conexao, "SELECT * FROM UsuariosAdmin WHERE usuarios = '$Usuario' and senha = '$Senha' ") or die (mysqli_error());
                $row =  mysqli_num_rows($sql);
				
                if($row > 0)
                {
                    session_start();
                    $_SESSION['usuarios'] = $_POST['txtUsuario'];
                    $_SESSION['senha'] = $_POST['txtSenha'];
                    echo "<center>Você foi logado com sucesso! Aguarde um instante...</center>";
                    echo "<script>loginsuccessfully()</script>";
                } else 
                {
                    echo"<p><center>Nome de Usuário ou Senha inválidos! Aguarde um instante...</center></p>";
                    echo "<script>loginfailed()</script>";
                }
                
                echo "<style>
                        center{
                            font-size: 30px;
                        }
                    </style>";
                        

                mysqli_close($conexao);
            ?>
        </body>
    </html>