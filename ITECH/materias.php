<?php
    $host="localhost";
    $root="root";
    $senha="";
    $bd="GenniusDB";
    $conexao = mysqli_connect($host, $root, $senha, $bd) or die (mysqli_error());
    mysqli_set_charset( $conexao, 'utf8'); 

    mysqli_select_db($conexao, $bd) or die(mysqli_error());

    $consulta = "Select id_materia, temas from tbMateria";
    $con = $conexao->query($consulta) or die($conexao->error);

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
                <?php
                   while($dado = $con->fetch_array()){
                ?>
                <dt>ARTES</dt>
                <dd><a href="exercicios.php?id=<?php echo $dado['id_materia']; ?>"><?php echo $dado['temas']; ?></a></dd>
                <dd><a href="exercicios.php?id=<?php echo $dado['id_materia']; ?>"><?php echo $dado['temas']; ?></a></dd>
                <dd><a href="exercicios.php?id=<?php echo $dado['id_materia']; ?>"><?php echo $dado['temas']; ?></a></dd>
                <hr/>
                <dt>BIOLOGIA</dt>
                <dd><a href="exercicios.php?id=<?php echo $dado['id_materia']; ?>"><?php echo $dado['temas']; ?></a></dd>
                <dd><a href="exercicios.php?id=<?php echo $dado['id_materia']; ?>"><?php echo $dado['temas']; ?></a></dd>
                <dd><a href="exercicios.php?id=<?php echo $dado['id_materia']; ?>"><?php echo $dado['temas']; ?></a></dd>
                <hr/>
                <dt>FILOSOFIA</dt>
                <dd><a href="exercicios.php?id=<?php echo $dado['id_materia']; ?>"><?php echo $dado['temas']; ?></a></dd>
                <dd><a href="exercicios.php?id=<?php echo $dado['id_materia']; ?>"><?php echo $dado['temas']; ?></a></dd>
                <dd><a href="exercicios.php?id=<?php echo $dado['id_materia']; ?>"><?php echo $dado['temas']; ?></a></dd>
                <hr/>
                <dt>FÍSICA</dt>
                <dd><a href="exercicios.php?id=<?php echo $dado['id_materia']; ?>"><?php echo $dado['temas']; ?></a></dd>
                <dd><a href="exercicios.php?id=<?php echo $dado['id_materia']; ?>"><?php echo $dado['temas']; ?></a></dd>
                <dd><a href="exercicios.php?id=<?php echo $dado['id_materia']; ?>"><?php echo $dado['temas']; ?></a></dd>
                <hr/>
                <dt>GEOGRAFIA</dt>
                <dd><a href="exercicios.php?id=<?php echo $dado['id_materia']; ?>"><?php echo $dado['temas']; ?></a></dd>
                <dd><a href="exercicios.php?id=<?php echo $dado['id_materia']; ?>"><?php echo $dado['temas']; ?></a></dd>
                <dd><a href="exercicios.php?id=<?php echo $dado['id_materia']; ?>"><?php echo $dado['temas']; ?></a></dd>
                <hr/>
                <dt>HISTÓRIA</dt>
                <dd><a href="exercicios.php?id=<?php echo $dado['id_materia']; ?>"><?php echo $dado['temas']; ?></a></dd>
                <dd><a href="exercicios.php?id=<?php echo $dado['id_materia']; ?>"><?php echo $dado['temas']; ?></a></dd>
                <dd><a href="exercicios.php?id=<?php echo $dado['id_materia']; ?>"><?php echo $dado['temas']; ?></a></dd>
                <hr/>
                <dt>INGLÊS</dt>
                <dd><a href="exercicios.php?id=<?php echo $dado['id_materia']; ?>"><?php echo $dado['temas']; ?></a></dd>
                <dd><a href="exercicios.php?id=<?php echo $dado['id_materia']; ?>"><?php echo $dado['temas']; ?></a></dd>
                <dd><a href="exercicios.php?id=<?php echo $dado['id_materia']; ?>"><?php echo $dado['temas']; ?></a></dd>
                <hr/>
                <dt>MATEMÁTICA</dt>
                <dd><a href="exercicios.php?id=<?php echo $dado['id_materia']; ?>"><?php echo $dado['temas']; ?></a></dd>
                <dd><a href="exercicios.php?id=<?php echo $dado['id_materia']; ?>"><?php echo $dado['temas']; ?></a></dd>
                <dd><a href="exercicios.php?id=<?php echo $dado['id_materia']; ?>"><?php echo $dado['temas']; ?></a></dd>
                <hr/>
                <dt>PORTUGUÊS</dt>
                <dd><a href="exercicios.php?id=<?php echo $dado['id_materia']; ?>"><?php echo $dado['temas']; ?></a></dd>
                <dd><a href="exercicios.php?id=<?php echo $dado['id_materia']; ?>"><?php echo $dado['temas']; ?></a></dd>
                <dd><a href="exercicios.php?id=<?php echo $dado['id_materia']; ?>"><?php echo $dado['temas']; ?></a></dd>
                <hr/>
                <dt>QUIMÍCA</dt>
                <dd><a href="exercicios.php?id=<?php echo $dado['id_materia']; ?>"><?php echo $dado['temas']; ?></a></dd>
                <dd><a href="exercicios.php?id=<?php echo $dado['id_materia']; ?>"><?php echo $dado['temas']; ?></a></dd>
                <dd><a href="exercicios.php?id=<?php echo $dado['id_materia']; ?>"><?php echo $dado['temas']; ?></a></dd>
                <br>
                <hr/>
                <dt>SOCIOLOGIA</dt>
                <dd><a href="exercicios.php?id=<?php echo $dado['id_materia']; ?>"><?php echo $dado['temas']; ?></a></dd>
                <dd><a href="exercicios.php?id=<?php echo $dado['id_materia']; ?>"><?php echo $dado['temas']; ?></a></dd>
                <dd><a href="exercicios.php?id=<?php echo $dado['id_materia']; ?>"><?php echo $dado['temas']; ?></a></dd>
                <br>
                <?php } ?>
	           </dl>
            
        </div>
            <footer>
                 <p>Todos os direitos reservados © 2018</p>
            </footer>
        </div>
    </body>
</html>