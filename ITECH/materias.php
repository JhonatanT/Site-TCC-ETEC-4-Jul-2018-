<?php
    $host="localhost";
    $root="root";
    $senha="1234";
    $bd="GenniusDB";
    $conexao = mysqli_connect($host, $root, $senha, $bd) or die (mysqli_error());
    mysqli_set_charset( $conexao, 'utf8'); 

    mysqli_select_db($conexao, $bd) or die(mysqli_error());
    $consulta = "SELECT M.id_materia, M.temas,M.cod_disciplina ,D.disciplinas,D.id_disciplina FROM tbmateria as M 
INNER JOIN tbdisciplina as D on D.id_disciplina = M.cod_disciplina";
    $con = $conexao->query($consulta) or die($conexao->error);
	
	$disciplinas = "SELECT disciplinas from tbDisciplina;";
	$cons = $conexao->query($disciplinas) or die ($conexao_>error);

    session_start();//iniciando as variaveis globais
    echo"<style> body{ position: relative; text-align:left; color: white; } </style>";
?>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="description" content="">
        <title>Matérias</title>
        <link rel="stylesheet" href="../ITECH/style.css">
        <link rel="stylesheet" href="../ITECH/cssIndex/materias.css">
        <link rel="stylesheet" href="../ITECH/cssIndex/menu.css">
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
                <div class="oi">
            <dl class="materias">
			<center><h1>Materias e Temas</h1></center>
				<?php
					while($linha = mysqli_fetch_array($con)){
						$discipli = $linha['disciplinas'];
						$disciplinas;
			
				?>
				
				<?php if ($disciplinas == $discipli){ ?>
				<dd><a href="exercicios.php?id=<?php echo $linha['id_materia']; ?>&Nome =<?php echo $linha['temas']; ?>"><?php echo $linha['temas']; ?></a></dd>

				<?php } ?>
				<?php if ($disciplinas != $discipli) { ?>
				<hr/>
				<dt><?php echo $linha['disciplinas'] ?></dt> 				
                <dd><a href="exercicios.php?id=<?php echo $linha['id_materia']; ?>&Nome =<?php echo $linha['temas']; ?>"><?php echo $linha['temas']; ?></a></dd>
				<?php } ?>
				<?php $disciplinas = $discipli; } ?>
				<hr/>
				
	           </dl>
            
        </div>
            <footer>
                 <p>Todos os direitos reservados © 2018</p>
            </footer>
        </div>
    </body>
</html>