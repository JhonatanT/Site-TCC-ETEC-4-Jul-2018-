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
    <title>Recuperar Senha</title>
    <script type="text/javascript">
        function Validacodigosuccessfully()
        {
            setTimeout("window.location='carregandoESQUECI.php'", 0);
        }
        function Validacodigofailed()
        {
            setTimeout("window.location='Login.html'", 2000);
        }
    </script>
</head>
<body>
<?PHP
session_start();
$Email=$_POST['email'];
$resposta=$_POST['resposta'];

$sql = mysqli_query($conexao, "SELECT * FROM tbUsuario WHERE email = '$Email' AND pergunta='$resposta'") or die (mysqli_error());
$row =  mysqli_num_rows($sql);

if($row > 0)
{
    if((isset($_POST['email'])) && (isset($_POST['resposta'])))
    {
        $Email=$_POST['email'];
        $resposta=$_POST['resposta'];

        $sql = mysqli_query($conexao, "SELECT id_usuario FROM tbUsuario WHERE email = '$Email' and pergunta = '$resposta' LIMIT 1") or die (mysqli_error());
        $resultado = mysqli_fetch_assoc($sql);
        if(empty($resultado))
        {
            echo"<center>Usuário ou senha inválidos! Redirecionando...</center>";
            echo"<script>loginfailed()</script>";

        }elseif(isset($resultado))
        {
            $_SESSION['usuarioId'] = $resultado['id_usuario'];

            echo "<script>Validacodigosuccessfully()</script>";
        }else
        {
            echo"<script>Validacodigofailed()</script>";
        }
    }
} else
{
    echo"<script>Validacodigofailed()</script>";
    echo "<center>Email ou Resposta Incorreto(s)</center>";
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