<?Php
    session_start();//iniciando as variaveis globais
    echo"<style> body{ position: relative; text-align:left; color: white; } </style>";
?>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="description" content="">
        <title>Enem</title>
        <link rel="stylesheet" href="../ITECH/cssIndex/enem.css">
        <link rel="stylesheet" href="../ITECH/cssIndex/menu.css">
        <link rel="stylesheet" href="../ITECH/style.css">
        <link href="https://fonts.googleapis.com/css?family=Quicksand" rel="stylesheet">
        <link rel="shortcut icon" href="imagens/favicon.ico" type="image/x-icon" />
        <script>
        function myFunction(x) {
        x.classList.toggle("change");
        }
        </script>
    </head>
    <body>
        <div class="content-all">
            <header class="cabecalho1">
                <div class="container" onclick="document.getElementById('check').checked = !document.getElementById('check').checked; myFunction(this)">
                    <div class="bar1 icon-content"></div>
                    <div class="bar2 icon-content"></div>
                    <div class="bar3 icon-content"></div>
                </div>
                <input type="checkbox" id="check"/>
                <nav class="menu">	
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
            <div class="provas">
                <h2>2009</h2>
                <ul>
                    <li>Prova Amarela - 1º Dia<a href="ENEM/ENEM/2009/2009GabaritoAmareloDia1.pdf"><button class="amarela">Gabarito</button></a><a href="ENEM/ENEM/2009/2009ProvaAmareloDia1.pdf"><button class="amarela">Prova</button></a></li>
                        
                    <li>Prova Amarela - 2º Dia<a href="ENEM/ENEM/2009/2009GabaritoAmareloDia2.pdf"><button class="amarela">Gabarito</button></a><a href="ENEM/ENEM/2009/2009ProvaAmareloDia2.pdf"><button class="amarela">Prova</button></a></li>
                        
                    <li>Prova Azul - 1º Dia<a href="ENEM/ENEM/2009/2009GabaritoAzulDia1.pdf"><button class="azul">Gabarito</button></a><a href="ENEM/ENEM/2009/2009ProvaAzulDia1.pdf"><button class="azul">Prova</button></a></li>
                        
                    <li>Prova Azul - 2º Dia<a href="ENEM/ENEM/2009/2009GabaritoAzulDia2.pdf"><button class="azul">Gabarito</button></a><a href="ENEM/ENEM/2009/2009ProvaAzulDia2.pdf"><button class="azul">Prova</button></a></li>

                    <li>Prova Rosa - 1º Dia<a href="ENEM/ENEM/2009/2009GabaritoRosalDia1.pdf"><button class="rosa">Gabarito</button></a><a href="ENEM/ENEM/2009/2009ProvaRosaDia1.pdf"><button class="rosa">Prova</button></a></li>

                    <li>Prova Rosa - 2º Dia<a href="ENEM/ENEM/2009/2009GabaritoRosalDia2.pdf"><button class="rosa">Gabarito</button></a><a href="ENEM/ENEM/2009/2009ProvaRosaDia2.pdf"><button class="rosa">Prova</button></a></li>

                    <li>Prova Branca - 1º Dia<a href="ENEM/ENEM/2009/2009GabaritoBrancaDia1.pdf"><button class="branca">Gabarito</button></a><a href="ENEM/ENEM/2009/2009ProvaBrancaDia1.pdf"><button class="branca">Prova</button></a></li>

                    <li>Prova Cinza - 2º Dia<a href="ENEM/ENEM/2009/2009GabaritoCINZADia2.pdf"><button class="cinza">Gabarito</button></a><a href="ENEM/ENEM/2009/2009ProvaCINZADia2.pdf"><button class="cinza">Prova</button></a></li>
                </ul>
                <h2>2011</h2>
                <ul>
                    <li>Prova Amarela - 1º Dia<a href="ENEM/ENEM/2011/2011GabaritoAmareloDia1.pdf"><button class="amarela">Gabarito</button></a><a href="ENEM/ENEM/2011/2011ProvaAmareloDia1.pdf"><button class="amarela">Prova</button></a></li>

                    <li>Prova Amarela - 2º Dia<a href="ENEM/ENEM/2011/2011GabaritoAmareloDia2.pdf"><button class="amarela">Gabarito</button></a><a href="ENEM/ENEM/2011/2011ProvaAmareloDia2.pdf"><button class="amarela">Prova</button></a></li>

                    <li>Prova Azul - 1º Dia<a href="ENEM/ENEM/2011/2011GabaritoAzulDia1.pdf"><button class="azul">Gabarito</button></a><a href="ENEM/ENEM/2011/2011ProvaAzulDia1.pdf"><button class="azul">Prova</button></a></li>

                    <li>Prova Rosa - 1º Dia<a href="ENEM/ENEM/2011/2011GabaritoRosaDia1.pdf"><button class="rosa">Gabarito</button></a><a href="ENEM/ENEM/2011/2011ProvaRosaDia1.pdf"><button class="rosa">Prova</button></a></li>

                    <li>Prova Rosa - 2º Dia<a href="ENEM/ENEM/2011/2011GabaritoRosaDia2.pdf"><button class="rosa">Gabarito</button></a><a href="ENEM/ENEM/2011/2011ProvaRosaDia2.pdf"><button class="rosa">Prova</button></a></li>

                    <li>Prova Branca - 1º Dia<a href="ENEM/ENEM/2011/2011GabaritoBrancaDia1.pdf"><button class="branca">Gabarito</button></a><a href="ENEM/ENEM/2011/2011ProvaBrancaDia1.pdf"><button class="branca">Prova</button></a></li>

                    <li>Prova Cinza - 2º Dia<a href="ENEM/ENEM/2011/2011GabaritoCINZADia2.pdf"><button class="cinza">Gabarito</button></a><a href="ENEM/ENEM/2011/2011ProvaCINZADia2.pdf"><button class="cinza">Prova</button></a></li>

<!--                        <li>prova<a href=""><button class="amarela">Gabarito</button></a><a href=""><button class="amarela">Prova</button></a></li>-->
                </ul>
                <h2>2012</h2>
                <ul>
                     <li>Prova Amarela - 1º Dia<a href="ENEM/ENEM/2012/2012GabaritoAmareloDia1.pdf"><button class="amarela">Gabarito</button></a><a href="ENEM/ENEM/2012/2012ProvaAmareloDia1.pdf"><button class="amarela">Prova</button></a></li>

                     <li>Prova Amarela - 2º Dia<a href="ENEM/ENEM/2012/2012GabaritoAmareloDia2.pdf"><button class="amarela">Gabarito</button></a><a href="ENEM/ENEM/2012/2012ProvaAmareloDia2.pdf"><button class="amarela">Prova</button></a></li>

                     <li>Prova Azul- 1º Dia<a href="ENEM/ENEM/2012/2012GabaritoAzulDia1.pdf"><button class="azul">Gabarito</button></a><a href="ENEM/ENEM/2012/2012ProvaAzulDia1.pdf"><button class="azul">Prova</button></a></li>

                     <li>Prova Azul- 2º Dia<a href="ENEM/ENEM/2012/2012GabaritoAzulDia2.pdf"><button class="azul">Gabarito</button></a><a href="ENEM/ENEM/2012/2012ProvaAzulDia2.pdf"><button class="azul">Prova</button></a></li>

                     <li>Prova Rosa - 1º Dia<a href="ENEM/ENEM/2012/2012GabaritoRosaDia1.pdf"><button class="rosa">Gabarito</button></a><a href="ENEM/ENEM/2012/2012ProvaRosaDia1.pdf"><button class="rosa">Prova</button></a></li>

                     <li>Prova Rosa - 2º Dia<a href="ENEM/ENEM/2012/2012GabaritoRosaDia2.pdf"><button class="rosa">Gabarito</button></a><a href="ENEM/ENEM/2012/2012ProvaRosaDia2.pdf"><button class="rosa">Prova</button></a></li>

                     <li>Prova Branca- 1º Dia<a href="ENEM/ENEM/2012/2012GabaritoBrancaDia1.pdf"><button class="branca">Gabarito</button></a><a href="ENEM/ENEM/2012/2012ProvaBrancaDia1.pdf"><button class="branca">Prova</button></a></li>

                     <li>Prova Cinza- 2º Dia<a href="ENEM/ENEM/2012/2012GabaritoCinzaDia1.pdf"><button class="cinza">Gabarito</button></a><a href="ENEM/ENEM/2012/2012ProvaCinzaDia1.pdf"><button class="cinza">Prova</button></a></li>

                </ul>
                <h2>2013</h2>
                <ul>
                    <li>Prova Amarela - 1º Dia<a href="ENEM/ENEM/2013/2013GabaritoAmareloDia1.pdf"><button class="amarela">Gabarito</button></a><a href="ENEM/ENEM/2013/2013ProvaAmareloDia1.pdf"><button class="amarela">Prova</button></a></li>

                     <li>Prova Amarela - 2º Dia<a href="ENEM/ENEM/2013/2013GabaritoAmareloDia2.pdf"><button class="amarela">Gabarito</button></a><a href="ENEM/ENEM/2013/2013ProvaAmareloDia2.pdf"><button class="amarela">Prova</button></a></li>

                     <li>Prova Azul- 1º Dia<a href="ENEM/ENEM/2013/2013GabaritoAzulDia1.pdf"><button class="azul">Gabarito</button></a><a href="ENEM/ENEM/2013/2013ProvaAzulDia1.pdf"><button class="azul">Prova</button></a></li>

                     <li>Prova Azul- 2º Dia<a href="ENEM/ENEM/2013/2013GabaritoAzulDia2.pdf"><button class="azul">Gabarito</button></a><a href="ENEM/ENEM/2013/2013ProvaAzulDia2.pdf"><button class="azul">Prova</button></a></li>

                     <li>Prova Rosa - 1º Dia<a href="ENEM/ENEM/2013/2013GabaritoRosalDia1.pdf"><button class="rosa">Gabarito</button></a><a href="ENEM/ENEM/2013/2013ProvaRosalDia1.pdf"><button class="rosa">Prova</button></a></li>

                     <li>Prova Rosa - 2º Dia<a href="ENEM/ENEM/2013/2013GabaritoRosalDia2.pdf"><button class="rosa">Gabarito</button></a><a href="ENEM/ENEM/2013/2013ProvaRosalDia1.pdf"><button class="rosa">Prova</button></a></li>

                     <li>Prova Branca- 1º Dia<a href="ENEM/ENEM/2013/2013GabaritoBrancalDia1.pdf"><button class="branca">Gabarito</button></a><a href="ENEM/ENEM/2013/2013ProvaBrancalDia1.pdf"><button class="branca">Prova</button></a></li>

                     <li>Prova Cinza- 2º Dia<a href="ENEM/ENEM/2013/2013GabaritoCinzalDia2.pdf"><button class="cinza">Gabarito</button></a><a href="ENEM/ENEM/2013/2013ProvaCinzaDia2.pdf"><button class="cinza">Prova</button></a></li>
                </ul>
                <h2>2014</h2>
                <ul>
                    <li>Prova Amarela - 1º Dia<a href="ENEM/ENEM/2014/2014GabaritoAmarelaDia1.pdf"><button class="amarela">Gabarito</button></a><a href="ENEM/ENEM/2014/2014ProvaAmarelaDia1.pdf"><button class="amarela">Prova</button></a></li>

                     <li>Prova Amarela - 2º Dia<a href="ENEM/ENEM/2014/2014GabaritoAmarelaDia2.pdf"><button class="amarela">Gabarito</button></a><a href="ENEM/ENEM/2014/2014ProvaAmarelaDia2.pdf"><button class="amarela">Prova</button></a></li>

                     <li>Prova Azul- 1º Dia<a href="ENEM/ENEM/2014/2014GabaritoAzulDia1.pdf"><button class="azul">Gabarito</button></a><a href="ENEM/ENEM/2014/2014ProvaAzulDia1.pdf"><button class="azul">Prova</button></a></li>

                     <li>Prova Azul- 2º Dia<a href="ENEM/ENEM/2014/2014GabaritoAzulDia2.pdf"><button class="azul">Gabarito</button></a><a href="ENEM/ENEM/2014/2014ProvaAzulDia2.pdf"><button class="azul">Prova</button></a></li>

                     <li>Prova Rosa - 1º Dia<a href="ENEM/ENEM/2014/2014GabaritoRosaDia1.pdf"><button class="rosa">Gabarito</button></a><a href="ENEM/ENEM/2014/2014ProvaRosaDia1.pdf"><button class="rosa">Prova</button></a></li>

                     <li>Prova Rosa - 2º Dia<a href="ENEM/ENEM/2014/2014GabaritoRosaDia2.pdf"><button class="rosa">Gabarito</button></a><a href="ENEM/ENEM/2014/2014ProvaRosaDia2.pdf"><button class="rosa">Prova</button></a></li>

                     <li>Prova Branca- 1º Dia<a href="ENEM/ENEM/2014/2014GabaritoBrancaDia1.pdf"><button class="branca">Gabarito</button></a><a href="ENEM/ENEM/2014/2014ProvaBrancaDia1.pdf"><button class="branca">Prova</button></a></li>

                     <li>Prova Cinza- 2º Dia<a href="ENEM/ENEM/2014/2014GabaritoCinzaDia2.pdf"><button class="cinza">Gabarito</button></a><a href="ENEM/ENEM/2014/2014ProvaCinzaDia2.pdf"><button class="cinza">Prova</button></a></li>
                </ul>
                <h2>2015</h2>
                <ul>
                    <li>Prova Amarela - 1º Dia<a href="ENEM/ENEM/2015/2015GabaritoAmarelaDia1.pdf"><button class="amarela">Gabarito</button></a><a href="ENEM/ENEM/2015/2015ProvaAmarelaDia1.pdf"><button class="amarela">Prova</button></a></li>

                    <li>Prova Amarela - 2º Dia<a href="ENEM/ENEM/2015/2015GabaritoAmarelaDia2.pdf"><button class="amarela">Gabarito</button></a><a href="ENEM/ENEM/2015/2015ProvaAmarelaDia2.pdf"><button class="amarela">Prova</button></a></li>

                    <li>Prova Azul- 1º Dia<a href="ENEM/ENEM/2015/2015GabaritoAzulDia1.pdf"><button class="azul">Gabarito</button></a><a href="ENEM/ENEM/2015/2015ProvaAzulDia1.pdf"><button class="azul">Prova</button></a></li>

                    <li>Prova Azul- 2º Dia<a href="ENEM/ENEM/2015/2015GabaritoAzulDia2.pdf"><button class="azul">Gabarito</button></a><a href="ENEM/ENEM/2015/2015ProvaAzulDia2.pdf"><button class="azul">Prova</button></a></li>

                    <li>Prova Rosa - 1º Dia<a href="ENEM/ENEM/2015/2015GabaritoRosaDia1.pdf"><button class="rosa">Gabarito</button></a><a href="ENEM/ENEM/2015/2015ProvaRosaDia1.pdf"><button class="rosa">Prova</button></a></li>

                    <li>Prova Rosa - 2º Dia<a href="ENEM/ENEM/2015/2015GabaritoRosaDia1.pdf"><button class="rosa">Gabarito</button></a><a href="ENEM/ENEM/2015/2015ProvaRosaDia1.pdf"><button class="rosa">Prova</button></a></li>

                    <li>Prova Branca- 1º Dia<a href="ENEM/ENEM/2015/2015GabaritoBrancaDia1.pdf"><button class="branca">Gabarito</button></a><a href="ENEM/ENEM/2015/"><button class="branca">Prova</button></a></li>

                    <li>Prova Cinza- 2º Dia<a href="ENEM/ENEM/2015/2015ProvaBrancaDia1.pdf"><button class="cinza">Gabarito</button></a><a href="ENEM/ENEM/2015/"><button class="cinza">Prova</button></a></li>

                </ul>
                <h2>2016</h2>
                <ul>
                    <li>Prova Amarela - 1º Dia<a href="ENEM/ENEM/2016/2016PGabaritoAmarelaDia1.pdf"><button class="amarela">Gabarito</button></a><a href="ENEM/ENEM/2016/2016ProvaAmarelaDia1.pdf"><button class="amarela">Prova</button></a></li>

                     <li>Prova Amarela - 2º Dia<a href="ENEM/ENEM/2016/2016PGabaritoAmarelaDia2.pdf"><button class="amarela">Gabarito</button></a><a href="ENEM/ENEM/2016/2016ProvaAmarelaDia2.pdf"><button class="amarela">Prova</button></a></li>

                     <li>Prova Azul- 1º Dia<a href="ENEM/ENEM/2016/2016GabaritoAzulDia1.pdf"><button class="azul">Gabarito</button></a><a href="ENEM/ENEM/2016/2016ProvaAzulDia1.pdf"><button class="azul">Prova</button></a></li>

                     <li>Prova Azul- 2º Dia<a href="ENEM/ENEM/2016/2016GabaritoAzulDia2.pdf"><button class="azul">Gabarito</button></a><a href="ENEM/ENEM/2016/2016ProvaAzulDia2.pdf"><button class="azul">Prova</button></a></li>

                     <li>Prova Rosa - 1º Dia<a href="ENEM/ENEM/2016/2016GabaritoRosaDia1.pdf"><button class="rosa">Gabarito</button></a><a href="ENEM/ENEM/2016/2016ProvaRosaDia1.pdf"><button class="rosa">Prova</button></a></li>

                     <li>Prova Rosa - 2º Dia<a href="ENEM/ENEM/2016/2016GabaritoRosaDia2.pdf"><button class="rosa">Gabarito</button></a><a href="ENEM/ENEM/2016/2016ProvaRosaDia2.pdf"><button class="rosa">Prova</button></a></li>

                     <li>Prova Branca- 1º Dia<a href="ENEM/ENEM/2016/2016GabaritoBrancoDia1.pdf"><button class="branca">Gabarito</button></a><a href="ENEM/ENEM/2016/2016ProvaBrancaDia1.pdf"><button class="branca">Prova</button></a></li>

                     <li>Prova Cinza- 2º Dia<a href="ENEM/ENEM/2016/2016GabaritoCinzaDia2.pdf"><button class="cinza">Gabarito</button></a><a href="ENEM/ENEM/2016/2016ProvaCinzaDia2.pdf"><button class="cinza">Prova</button></a></li>
                </ul>
                <h2>2017</h2>
                <ul>
                    <li>Prova Amarela - 1º Dia<a href="ENEM/ENEM/2017/2017GabaritoAmarelaDia1.pdf"><button class="amarela">Gabarito</button></a><a href="ENEM/ENEM/2017/2017ProvaAmarelaDia1.pdf"><button class="amarela">Prova</button></a></li>

                     <li>Prova Amarela - 2º Dia<a href="ENEM/ENEM/2017/2017GabaritoAmarelaDia2.pdf"><button class="amarela">Gabarito</button></a><a href="ENEM/ENEM/2017/2017ProvaAmarelaDia2.pdf"><button class="amarela">Prova</button></a></li>

                     <li>Prova Azul- 1º Dia<a href="ENEM/ENEM/2017/2017GabaritoAzulDia1.pdf"><button class="azul">Gabarito</button></a><a href="ENEM/ENEM/2017/2017ProvaAzulDia1.pdf"><button class="azul">Prova</button></a></li>

                     <li>Prova Azul- 2º Dia<a href="ENEM/ENEM/2017/2017GabaritoAzulDia2.pdf"><button class="azul">Gabarito</button></a><a href="ENEM/ENEM/2017/2017ProvaAzulDia2.pdf"><button class="azul">Prova</button></a></li>

                     <li>Prova Rosa - 1º Dia<a href="ENEM/ENEM/2017/2017GabaritoRosaDia1.pdf"><button class="rosa">Gabarito</button></a><a href="ENEM/ENEM/2017/2017ProvaRosaDia1.pdf"><button class="rosa">Prova</button></a></li>

                     <li>Prova Rosa - 2º Dia<a href="ENEM/ENEM/2017/2017GabaritoRosaDia2.pdf"><button class="rosa">Gabarito</button></a><a href="ENEM/ENEM/2017/2017ProvaRosaDia2.pdf"><button class="rosa">Prova</button></a></li>

                     <li>Prova Branca- 1º Dia<a href="ENEM/ENEM/2017/2017GabaritoBrancaDia1.pdf"><button class="branca">Gabarito</button></a><a href="ENEM/ENEM/2017/2017ProvaBrancaDia1.pdf"><button class="branca">Prova</button></a></li>

                     <li>Prova Cinza- 2º Dia<a href="ENEM/ENEM/2017/2017GabaritoCinzaDia2.pdf"><button class="cinza">Gabarito</button></a><a href="ENEM/ENEM/2017/2017ProvaCinzaDia2.pdf"><button class="cinza">Prova</button></a></li>
                </ul>
                </div>
                <footer>
                    <p>Todos os direitos reservados © 2018</p>
                </footer>
            </div>
    </body>
</html>