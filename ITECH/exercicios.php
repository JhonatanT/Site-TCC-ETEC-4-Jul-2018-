<?php
    $host="localhost";
    $root="root";
    $senha="";
    $bd="GenniusDB";
    $conexao = mysqli_connect($host, $root, $senha, $bd) or die (mysqli_error());
	mysqli_set_charset( $conexao, 'utf8');
    mysqli_select_db($conexao, $bd) or die(mysqli_error());
    session_start();//iniciando as variaveis globais
    echo"<style> body{ position: relative; text-align:left; color: white; } </style>";
	$consulta = "SELECT Q.id_questao, Q.edicao,Q.banca,Q.enunciado,M.temas,Q.caminho,Q.nome_imagem,
 A.texto, A.correta FROM tbquestao AS Q 
INNER JOIN tbMateria AS M ON Q.cod_materia = M.id_materia 
LEFT JOIN tbAlternativa AS A ON  A.cod_questao = Q.id_questao
WHERE M.id_materia = 1 ORDER BY Q.id_questao;";
	$con = mysqli_query($conexao, $consulta) or die ($consulta->error);
	$enunciado = "SELECT enunciado from tbQuestao;";
?>
<!DOCTYPE HTML>
<html lang="PT-BR">
    <head>
        <meta charset="UTF-8">
        <meta name="description" content="">
        <title>Exercícios</title>
        <link rel="stylesheet" href="../ITECH/cssIndex/exercicio.css">
        <link rel="stylesheet" href="../ITECH/cssIndex/menu.css">
        <link rel="stylesheet" href="../ITECH/style.css">
          <link href="https://fonts.googleapis.com/css?family=Quicksand:300" rel="stylesheet">
        <link rel="shortcut icon" href="imagens/favicon.ico" type="image/x-icon" />
    </head>
    <body>
        <script>
        function myFunction(x) {
        x.classList.toggle("change");
        }
        </script>
            <div class="content-all">
                <header class="cabecalho1">
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
                            <ul>
                            <li><a href = "perfil.php" title="Perfil de úsuario"><?php echo $_SESSION['usuarioNome']; ?></a><span class="icon-user"></span> </li>
                            <li><a href = "materias.php" title="Inicio"><span class="icon-lab"></span> Matérias</a></li>
                            <li><a href = "DESEMPENHO.php" title="Desempenho"><span class="icon-chart"></span> Desempenho</a></li>
                            <li><a href = "gabaritos.php" title="Gabaritos"><span class="icon-checkmark"></span> Gabaritos</a></li>
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
                <div class="materia">
                    <label id="nomeMateria"></label>
                </div>
            <div class="perguntas">
                <div>
					<?php
					while($linha = mysqli_fetch_array($con)){
						$enuncia = $linha['enunciado'];	
						$enunciado;
                        $imagem = $linha['nome_imagem'];
                        $caminho = $linha['caminho'];
					?>
                    
					<?php if ($enunciado == $enuncia){ ?>
<!--                    tem que aumentar o tamanho da label e aumentar a largura do quadrado-->
                    <label><input type="radio" class="option-input radio" name="example" value="<?php $linha['correta'] ?>" /><?php echo $linha['texto']; ?></label>
					<?php } ?>
					<?php if ($enunciado != $enuncia){ ?>
                    <p id="p1"><?php echo $linha['enunciado']; ?></p>
                    <?php if($imagem != ""){ ?>
                    <center><img src="pictures/ImgQues/<?php echo $caminho ?>/<?php echo $imagem ?>.png" align="center"/></center>
					<?php } ?>
					<label><input type="radio" class="option-input radio" name="example" value="<?php $linha['correta'] ?>" /><?php echo $linha['texto']; ?></label>
                    <?php } ?>
					<?php  $enunciado = $enuncia; } ?>
                    <br>
                    <br>
                    <br>
                <input type="submit" value="Responder" name="botaoEnviar">
            </div>
        </div>
    </div>
    </body>
</html>