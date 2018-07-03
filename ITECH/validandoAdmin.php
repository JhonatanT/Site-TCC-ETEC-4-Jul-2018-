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
            <title>Autenticando o Adminstrador</title>
            <script type="text/javascript">
				//se ele digitou o email certo vá para o painel
                function loginsuccessfully()
                {
                    setTimeout("window.location='painelAdmin.html'", 0);  
                }
				//se não vá para o login
                function loginfailed()
                {
                    setTimeout("window.location='admin.php'", 5000);
                }
            </script>
            <link href="https://fonts.googleapis.com/css?family=Quicksand" rel="stylesheet">
            <link rel="stylesheet" href="cssIndex/admin.css">
        </head>
        <body>
            <div class="containerAdmin">
            <div class="container">
                <?PHP
                    session_start();//iniciando as variveis globais
                    if((isset($_POST['txtUsuario'])) && (isset($_POST['txtSenha'])))
                    {

                        if($_POST['txtUsuario'] == "t@gmail.com" && $_POST['txtSenha'] == "1234")
                        {
                            $usuario = mysqli_real_escape_string($conexao, $_POST['txtUsuario']); //escapar de caracteres especiais como aspas, prevenindo sql injection
                            $senha = mysqli_real_escape_string($conexao, $_POST['txtSenha']);

                            $sql = mysqli_query($conexao, "SELECT id_usuario,nome_completo, email, senha FROM tbUsuario WHERE email = '$usuario' and senha = '$senha' LIMIT 1") or die (mysqli_error());
                            $resultado = mysqli_fetch_assoc($sql);
                            if(empty($resultado))
                            {
                                ?>
                                <center><?php echo"Não encontramos nenhum resultado com essas informações...";?></center>
                                <?php
                                echo"<script>loginfailed()</script>";
                            }
                            else if(isset($resultado))
                            {
                                $_SESSION['NomeAdmin'] = $resultado['nome_completo'];//se quiser utiliza-las precisa colocar o nome delas
                                echo "<script>loginsuccessfully()</script>";
                            }
                            else
                            {
                               echo"<script>loginfailed()</script>";
                            }
                        }
                        else
                        {
                            ?>
                            <center><?php echo"Você não tem uma permissão de um adminstrador!..."; ?></center>
                            <?php
                            echo"<script>loginfailed()</script>";
                        }
                    }
                     echo "<style>
                        body
                        {
                            text-align:center;
                            position: center;
                            font-size: 50px;
                            font-family: 'Quicksand', sans-serif;
                            color: #436f99;
                        }
                        </style>";
                    mysqli_close($conexao);
                ?>
            </div>
            </div>
        </body>
    </html>