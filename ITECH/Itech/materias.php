<!DOCTYPE HTML>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="description" content="">
        <title>Matérias</title>
        <link rel="stylesheet" href="../ITECH/cssIndex/menu.css">
        <link rel="stylesheet" href="../ITECH/cssIndex/materias.css">
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
                    <li><a href = "index.html" title="Inicio"><span class="icon-home"></span>&nbsp &nbsp Matérias</a></li>
                    <li><a href = "DESEMPENHO.html" title="Desempenho"><span class="icon-pie-chart"></span>&nbsp &nbsp Desempenho</a></li>
                    <li><a href = "EXERCICIOS.html" title="Exercicios"><span class="icon-list-numbered"></span>&nbsp &nbsp Exercícios</a></li>
                    <li><a href = "gabaritos.html" title="Gabaritos"><span class="icon-checkmark"></span>&nbsp &nbsp Gabaritos</a></li>
                    <li><a href = "enem.html" title="Enem"><span class="icon-books"></span>&nbsp &nbsp Enem</a></li>
                    <li><a href = "redacao.html" title="Redação"><span class="icon-pencil"></span>&nbsp &nbsp Redação</a></li>
                    <li><a href = "pdf.html" title="Pdf's para estudo"><span class="icon-file-pdf"></span>&nbsp &nbsp PDF para estudos</a></li>
                    <li><a href = "download.html" title="Downloads"><span class="icon-download"></span>&nbsp &nbsp  Download</a></li>
                    <li><a href = "FaleConosco.html" title="Fale Conosco"><span class="icon-bubbles4"></span>&nbsp &nbsp Fale Conosco</a></li>
                    <li><a href = "AJUDA.html" title="Ajuda"><span class="icon-question-mark"></span>&nbsp &nbsp &nbsp Ajuda</a></li>
                    <li><a href = "login.html" title="Sair"><span class="icon-cross"></span>&nbsp &nbsp Sair</a></li>
                </ul>
            </nav>
        </header>
        <div class="main">
            <h1>Matérias e Temas</h1>
            <hr/>
            <dl class="materias" action="exercicios.php" method="post">
                <dt>ARTES</dt>
                <dd><a href="exercicios.html">Arte Moderna</a></dd>
                <dd><a href="exercicios.html">Expressionismo</a></dd>
                <dd><a href="exercicios.html">Renascimento</a></dd>
                <dt>BIOLOGIA</dt>
                <dd><a href="exercicios.html">Bioquímica Celular</a></dd>
                <dd><a href="exercicios.html">Ecologia</a></dd>
                <dd><a href="exercicios.html">Genética</a></dd>
                <br>
                
                <dt>FILOSOFIA</dt>
                <dd><a href="exercicios.html">Existencialismo</a></dd>
                <dd><a href="exercicios.html">Iluminismo</a></dd>
                <dd><a href="exercicios.html">Política, Corrupção e Ética</a></dd>
                <br>
                
                <dt>FÍSICA</dt>
                <dd><a href="exercicios.html">Calorimetria</a></dd>
                <dd><a href="exercicios.html">Hidroestática</a></dd>
                <dd><a href="exercicios.html">Ondas Eletromâgneticas</a></dd>
                <br>
                
                <dt>GEOGRAFIA</dt>
                <dd><a href="exercicios.html">Agropecuária Brasileira</a></dd>
                <dd><a href="exercicios.html">Geopolítica Mundial</a></dd>
                <dd><a href="exercicios.html">Oriente Médio - Estado Islâmico</a></dd>
                <br>
                
                <dt name="Disciplina" value="HISTÓRIA">HISTÓRIA</dt>
                <dd><a href="exercicios.php?exercicios.php" name="Temas" value="3">Independência do Brasil</a></dd>
                <dd><a href="exercicios.php?exercicios.php" name="Temas" value="2">Revolução Francesa</a></dd>
                <dd><a href="exercicios.php?exercicios.php" name="Temas" value="1">Segunda Guerra Mundial</a></dd>
                <br>
                
                <dt>INGLÊS</dt>
                <dd><a href="exercicios.html">Artigos</a></dd>
                <dd><a href="exercicios.html">Compreensão de texto</a></dd>
                <dd><a href="exercicios.html">Verbos</a></dd>
                <br>
                
                <dt>MATEMÁTICA</dt>
                <dd><a href="exercicios.html">Análise Combinatória</a></dd>
                <dd><a href="exercicios.html">Progressão Aritmética</a></dd>
                <dd><a href="exercicios.html">Progressão Geométrica</a></dd>
                <br>
                
                <dt>PORTUGUÊS</dt>
                <dd><a href="exercicios.html">Figuras de Linguagem</a></dd>
                <dd><a href="exercicios.html">Interpretação de Texto</a></dd>
                <dd><a href="exercicios.html">Orações Subordinadas</a></dd>
                <br>
                
                <dt>QUIMÍCA</dt>
                <dd><a href="exercicios.html">Cadeias Carbônicas</a></dd>
                <dd><a href="exercicios.html">Compostos iônicos</a></dd>
                <dd><a href="exercicios.html">Compostos Moleculares</a></dd>
                <br>
                
                <dt>SOCIOLOGIA</dt>
                <dd><a href="exercicios.html">Cidadania</a></dd>
                <dd><a href="exercicios.html">Movimentos Sociais</a></dd>
                <dd><a href="exercicios.html">Sociologia Comtemporânea</a></dd>
                <br>
	           </dl>
        </div>
    </body>
</html>