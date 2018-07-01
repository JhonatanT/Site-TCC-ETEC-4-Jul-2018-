<?PHP
    $host="localhost";
    $root="root";
    $senha="1234";
    $bd="GenniusDB";
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
                    setTimeout("window.location='carregando.php'", 0);  
                }
				//se não vá para o login
                function loginfailed()
                {
                    setTimeout("window.location='Login.html'", 5000);
                }
            </script>
            <link href="https://fonts.googleapis.com/css?family=Quicksand" rel="stylesheet">
        </head>
        <body>
            <?PHP
                session_start();//iniciando as variveis globais
                if((isset($_POST['txtUsuario'])) && (isset($_POST['txtSenha'])))
                {



                    $usuario = mysqli_real_escape_string($conexao, $_POST['txtUsuario']); //escapar de caracteres especiais como aspas, prevenindo sql injection
                    $senha = mysqli_real_escape_string($conexao, $_POST['txtSenha']);
                    
                    $sql = mysqli_query($conexao, "SELECT id_usuario,nome_completo, email, senha FROM tbUsuario WHERE email = '$usuario' and senha = '$senha' LIMIT 1") or die (mysqli_error());
                    $resultado = mysqli_fetch_assoc($sql);
                    if(empty($resultado))
                    {
                        echo"<center>Usuário ou senha inválidos! Redirecionando...</center>";
                        echo"<script>loginfailed()</script>";
                    }elseif(isset($resultado))
                    {
                        $_SESSION['usuarioId'] = $resultado['id_usuario'];//dando nome para elas e sua respectivas funcoes
                        $_SESSION['usuarioNome'] = $resultado['nome_completo'];//se quiser utiliza-las precisa colocar o nome delas
                        $_SESSION['usuarioEmail'] = $resultado['email'];//porem antes disso vc precisa de novo inciar as variaveis globais
                        $_SESSION['usuarioSenha'] = $resultado['senha'];//com session_star();
                        echo "<script>loginsuccessfully()</script>";
                    }else
                    {
                       echo"<script>loginfailed()</script>";
                    }
                }
                else
                {
                    echo "<center>Pagina não encontrada</center>";
                    //header("Location: login.php");
                }
                mysqli_close($conexao);
            echo    "<style>
                    body
                    {
                        background-color: #036;
                    }
                    center
                    {
                        text-align:center;
                        position: center;
                        font-size: 30px;
                        font-family: 'Quicksand', sans-serif;
                        color: white;
                    }
                    </style>";
            ?>
        </body>
    </html>