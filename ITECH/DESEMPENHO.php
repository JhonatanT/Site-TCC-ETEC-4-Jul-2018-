<?Php
    //coxexao
    $host="localhost";
    $root="root";
    $senha="1234";
    $bd="GenniusDB";
    $conexao = mysqli_connect($host, $root, $senha, $bd) or die (mysqli_error());
    mysqli_set_charset( $conexao, 'utf8');
    mysqli_select_db($conexao, $bd) or die(mysqli_error());

    session_start();//iniciando as variaveis globais
    echo"<style> body{ position: relative; text-align:left; color: white; } </style>";
    $Nome = $_SESSION['usuarioNome'];
$acerto = mysqli_query($conexao, "select acerto from TbAcertoErro where nome_usu='$Nome'") or die (mysqli_error());
$acerto = mysqli_fetch_assoc($acerto);

$erro = mysqli_query($conexao, "select erro from TbAcertoErro where nome_usu='$Nome'") or die (mysqli_error());
$erro = mysqli_fetch_assoc($erro);


$_SESSION['acerto'] = $acerto['acerto'];
$_SESSION['erro'] = $erro['erro'];
$erro = $_SESSION['erro'];
$acerto = $_SESSION['acerto'];


?>

<!DOCTYPE HTML>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="description" content="">
        <title>Desempenho - Gennius</title>
        <link rel="stylesheet" href="../ITECH/cssIndex/desempenho.css">
        <link rel="stylesheet" href="../ITECH/cssIndex/menu.css">
        <link rel="stylesheet" href="../ITECH/style.css">
        <link rel="shortcut icon" href="imagens/favicon.ico" type="image/x-icon" />
        <script type="text/javascript" src="jquery-1.12.0.min.js"></script>
        <link href="https://fonts.googleapis.com/css?family=Quicksand" rel="stylesheet">
        <script type="text/javascript" src="dist/Chart.bundle.min.js"></script>
        <script type="text/javascript">
            $(document).ready(function(){
                var acerto = <?php echo "". $acerto ."";?>;
                var erro = <?php echo "". $erro ."";?>;
                var dados = {
                    type: "pie",
                    data : {
                        datasets :[{
                            data : [
                                acerto,
                                erro,

                            ],
                            backgroundColor: [
                                "#088A08",
                                "#F7464A",

                            ],
                        }],
                        labels : [
                            "Questões Acertadas",
                            "Questões Erradas",
                        ]
                    },
                    options : {
                        responsive : true,
                    }
                };

                var canvas = document.getElementById('chart').getContext('2d');
                window.pie = new Chart(canvas, dados);

            });
        </script>
    </head>
    <body>
         <script>
        function myFunction(x) {
        x.classList.toggle("change");
        }
        </script>
            <div class="content-all">
                <header class="cabecalho1">
                    <br>
                    <br>
                    <div class="container" onclick="document.getElementById('check').checked = !document.getElementById('check').checked; myFunction(this)">
                        <div class="bar1 icon-content"></div>
                        <div class="bar2 icon-content"></div>
                        <div class="bar3 icon-content"></div>
                    </div>
                    <input type="checkbox" id="check">
                    <nav class="menu">	
                        <br>
                        <br>
                        <br>
                        <br>
                        <br>
                        <br>
                        <br>
                        <ul>
                            <li><a href = "perfil.php" title="Perfil de úsuario"><?php echo $_SESSION['usuarioNome']; ?></a><span class="icon-user"></span> </li>
                            <li><a href = "materias.php" title="Inicio"><span class="icon-lab"></span> Matérias</a></li>
                            <li><a href = "DESEMPENHO.php" title="Desempenho"><span class="icon-chart"></span> Desempenho</a></li>
                            <li><a href = "enem.php" title="Enem"><span class="icon-open-book"></span> Enem</a></li>
                            <li><a href = "redacao.php" title="Redação"><span class="icon-lightbulb_outline"></span> Dicas para o ENEM</a></li>
                            <li><a href = "pdf.php" title="Pdf's para estudo"><span class="icon-file-pdf-o"></span> PDF para estudos</a></li>
                            <li><a href = "download.php" title="Downloads"><span class="icon-download"></span>  Download</a></li>
                            <li><a href = "FaleConosco.php" title="Fale Conosco"><span class="icon-bubbles4"></span> Fale Conosco</a></li>
                            <li><a href = "AJUDA.php" title="Ajuda"><span class="icon-checkmark"></span> Ajuda</a></li>
                            <li><a href = "login.php" title="Sair"><span class="icon-x"></span> Sair</a></li>
                        </ul>
                    </nav>
                </header>
                    <h1>Desempenho Geral</h1>
                    <div class="divisor"></div>
                </div>
         <div id="canvas-container">
             <canvas id="chart">
             </canvas>
         </div>
    </body>
</html>