<!--
<?Php
    session_start();//iniciando as variaveis globais
    echo"<style> body{ position: relative; text-align:left; color: white; } </style>";
?>
-->
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="description" content="">
        <title>Dicas para o ENEM - Gennius</title>
        <link rel="stylesheet" href="../ITECH/cssIndex/menu.css">
        <link rel="stylesheet" href="../ITECH/cssIndex/redacao.css">
        <link rel="stylesheet" href="../ITECH/style.css">
        <link href="https://fonts.googleapis.com/css?family=Quicksand" rel="stylesheet">
        <link rel="shortcut icon" href="imagens/favicon.ico" type="image/x-icon" />
    </head>
    <body>
        <script>
        function myFunction(x) {
        x.classList.toggle("change");
        }
        </script>
                <div class="tudo">
                <header class="cabecalho1">
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
                <h2>1- Estude os temas que mais caem</h2>
                    <p>O melhor jeito de estar preparado é aprofundar os conhecimentos nos temas que mais caem.</p>
                <div class="separador"></div>
                <h2>2- Procure resoluções comentadas</h2>
                    <p>Caso tenha dúvida em alguma questão, procure na internet algum vídeo da resolução feita por um professor. Assistir à explicação em vídeo ajuda muito na melhor compreensão dos conteúdos.</p>
                <div class="separador"></div>
                <h2>3- Controle o tempo</h2>
                    <p>No Enem, temos que resolver muitas questões para se resolver em pouco tempo.  Procure treinar o controle do tempo. Se puder, procure um simulado online para fazer e marque o tempo de resolução.</p>
                <div class="separador"></div>
                <h2>4- Administre bem seu tempo de resolução de prova</h2>
                    <p>Procure ir pulando as questões que não sabe e depois volte para resolvê-las em vez de gastar praticamente a prova inteira quebrando a cabeça por uma solução.</p>
                <div class="separador"></div>
                <h2>5- Leia com atenção</h2>
                    <p>Sempre leia com atenção o enunciado das questões e as alternativas. Uma boa leitura evita que você tenha que ler tudo novamente.</p>
                <div class="separador"></div>
                <h2>6- Resolva outros vestibulares</h2>
                    <p>Não busque apenas questões que pertencem ao Enem, resolva provas que pertencem a outros vestibulares.</p>
                <div class="separador"></div>
                <h2>7- Muita atenção com as figuras na prova</h2>
                    <p>Se uma questão tem alguma figura, ela será necessária para a resolução. Se a figura não é necessária, ela não será colocada na questão. Então, a dica é: tem figura? Utilize-a para resolver a questão.</p>
                <div class="separador"></div>
                <h2>8- Resolva exercícios</h2>
                    <p>Para facilitar a fixação do conteúdo na hora de estudar, a constante resolução de exercícios é fundamental. Não basta revisar a teoria sobre um determinado assunto. A resolução de exercícios é indispensável para a compreensão do conteúdo.</p>
                <div class="separador"></div>
                <h2>9- Faça listas de exercícios</h2>
                    <p>Ao longo das semanas, distribua o conteúdo programático da matéria a ser estudada em listas com poucos exercícios (variando de 5 a 10 questões) e se organize para resolver ao menos três listas por semana. Dessa forma, todo o conteúdo será constantemente revisado e sua compreensão será facilitada.</p>
                <div class="separador"></div>
                <h2>10- Resolva as provas anteriores</h2>
                    <p>Revise as três últimas provas do Enem. Fique atento aos assuntos mais pedidos nos últimos exames.<br> <a href="materias.html">(Para acessar as provas anteriores Clique Aqui).</a></p>
                <div class="separador"></div>
                <h2>11- Mantenha-se atualizado</h2>
                    <p>Fique atento aos temas de atualidades. A prova pode apresentar questões com assuntos atuais e relacioná-los com episódios históricos.</p>
                <div class="separador"></div>
                <h2>12- Organize-se</h2>
                    <p>Coloque os temas e questões com os quais tem mais dificuldade como prioridade. Assim que entender, passe para os temas mais fáceis.</p>
                <div class="separador"></div>
                <h2>13- Foque nos gráficos</h2>
                    <p>Treine questões com gráficos, tabelas e imagens quando estiver estudando para o Enem. A interpretação dos dados expostos nos enunciados é um dos pontos principais para eliminar as alternativas erradas.</p>
                <div class="separador"></div>
                <h2>14- Entenda e defina os conceitos</h2>
                    <p>Seja preciso nos conceitos. A disciplina de História, por exemplo, é composta por fatos e conceitos. É necessário que você tenha um conhecimento sobre conceitos básicos e uma noção geral de cronologia.</p>
                <div class="separador"></div>
                <h2>15- Não decore, aprenda!</h2>
                    <p>Não basta decorar, é necessário entender! O Enem, ao abordar as causas e as consequências de um determinado processo, demanda do candidato uma análise mais crítica acerca dos fatos.</p>
                <div class="separador"></div>
                <h2>16- Mantenha a calma</h2>
                    <p>Não se desespere ao errar uma questão. O erro faz parte do processo de aprendizagem. Ao errar uma questão, faça a correção da mesma. Refaça a questão e procure mais exercícios sobre o mesmo tema.</p>
                <div class="separador"></div>
                <h2>17- Busque referências na Literatura</h2>
                    <p>As questões do Enem não privilegiam o aluno que memorizou datas e fatos, mas sim aquele que sabe lidar com os temas propostos nas situações-problema.</p>
                <div class="separador"></div>
                <h2>18- Assista a filmes</h2>
                    <p>Assim como a Literatura, obras clássicas da filmografia mundial (inclusive hollywoodiana) podem contribuir para ampliação da visão de mundo do aluno de modo fácil e agradável. </p>
                <div class="separador"></div>
                <h2>19- Debata com colegas e professores</h2>
                    <p>O debate coloca à prova a sua forma de ver a realidade. Ao se expor ao contraditório, novas verdades surgem do diálogo. É uma forma agradável e estimulante de estudo em grupo. </p>
                <div class="separador"></div>
                <h2>20- Observe a variedade de gêneros textuais</h2>
                    <p>A prova de Inglês, por exemplo, é bem dividida e contempla diversos gêneros textuais no mesmo exame: tirinhas, charges, trechos de letras de música, poesias, anúncios publicitários, revistas, etc.</p>
                <div class="separador"></div>
                <h2>21- Preste atenção nos enunciados</h2>
                    <p>O Enem tem uma tradição forte de montar enunciados um pouco mais longos nas suas questões de interpretação. Identifique os elementos no enunciado, volte ao texto e localize os mesmos no contexto.</p>
                <div class="separador"></div>
                <h2>22- Atenção com os títulos </h2>
                    <p>Um bom título deve antecipar o conteúdo a ser exposto e, na maioria dos casos, resumir a ideia central. É mais comum perceber-se a ideia central pelo título do artigo do que em algum trecho do texto.</p>
                <div class="separador"></div>
                <h2>23- Treine habilidades</h2>
                    <p>A estrutura de prova do Enem exige do aluno diversas habilidades e a capacidade de raciocinar por horas seguidas, ou seja, o preparo relacionado à paciência e à estratégia de escolha das questões e disciplinas é essencial.
                    </p>
                <div class="separador"></div>
                <h2>24- Desenvolva o raciocínio lógico</h2>
                    <p>Na prática, o estudante terá menos de três minutos para se dedicar a cada questão, o que representa um nível elevado de exigência. Por isso, uma boa estratégia para realizar a prova é fundamental.  </p>
                <div class="separador"></div>
                <h2>25- Tenha em mente a Teoria de resposta ao Item (TRI)</h2>
                    <p>Sabendo que essa técnica favorece o conhecimento geral e abrangente do aluno, evite responder aleatoriamente, ou seja, evite o “chute”. Isso pode fazer com que a sua nota seja bem mais alta e justa.</p>
                <div class="separador"></div>
                <h2>26- Faça resumos</h2>
                    <p>Fazer resumos dos principais conteúdos ajudam a gravar a matéria. Por isso, essa pode ser uma boa estratégia.</p>
                <div class="separador"></div>
                <h2>27- Explore diferentes níveis de exercícios</h2>
                    <p>Varie o nível de dificuldade dos exercícios. Não fique resolvendo apenas questões fáceis.</p>
                <div class="separador"></div>
                <h2>28- Lembre-se das fórmulas</h2>
                    <p>Memorize as principais fórmulas. Muitas questões exigem equações específicas para a resolução.</p>
                <div class="separador"></div>
                <h2>29- Não fuja do tema da redação</h2>
                    <p>Esse é um dos principais motivos para zerar sua redação. Mantenha o tema da redação em mente enquanto estiver escrevendo.</p>
                <div class="separador"></div>
                <h2>30- Escrever menos de 8 linhas</h2>
                    <p>Não escreva uma redação que contenha menos do que oito linhas. Esse é outro dos principais motivos para se zerar sua redação. </p>
                <div class="separador"></div>
                <h2>31- Obedeça a estrutura</h2>
                    <p>A redação deve obedecer à estrutura dissertativo-argumentativa, caso contrário irá garantir uma nota abaixo do esperado mesmo que o conteúdo da redação esteja seguindo o tema. </p>
                <div class="separador"></div>
                <h2>32- Descanse</h2>
                    <p>Não se esqueça de tirar um tempo para descansar na véspera das provas, isso evitará que se sobrecarregue e se estresse, assim mantendo sua mente apta durante o período da prova.</p>
                <div class="separador"></div>
                    <br>
        </div>
    </body>
</html>