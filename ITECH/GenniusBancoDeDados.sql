create database  GenniusDB;

use GenniusDB;

create table if not exists tbUsuario(
id_usuario int not null auto_increment,
nome_completo varchar(50) not null,
email varchar(50)not null,
senha varchar(50) not null,
codigo varchar(10) not null,
primary key(id_usuario)
)default charset = utf8;

insert into tbusuario(nome_completo,email,senha,codigo)
values
('Itech Force','t@gmail.com','1234','123');

insert into tbusuario(nome_completo,email,senha,codigo)
values
('Jhonatan','jhol@gmail.com','123','123');

 create table TbAcertoErro(
 id_usu int auto_increment,
 nome_usu varchar(50) not null,
 acerto int(20) not null, 
 erro int(20)not null,
primary key(id_usu)
)default charset = utf8;


select* from tbusuario;

update TbAcertoErro set acerto = '0' WHERE id_usu ='1';
update TbAcertoErro set erro = '0' WHERE id_usu ='1';

INSERT INTO TbAcertoErro(acerto, erro, nome_usu) values('5', '6', 'Itech Force');
INSERT INTO TbAcertoErro(acerto, erro, nome_usu) values('6', '5', 'Jhonatan');



create table if not exists tbDisciplina(
id_disciplina int auto_increment,
disciplinas varchar(20),
primary key(id_disciplina)
)default charset = utf8;

create table if not exists tbMateria(
id_materia int auto_increment,
temas varchar(50),
cod_disciplina int,
primary key(id_materia),
foreign key (cod_disciplina) references tbDisciplina(id_disciplina)
)default charset = utf8;

create table if not exists tbQuestao(
id_questao int not null auto_increment,
edicao varchar(10),
banca varchar(40),
prova varchar(45),
enunciado text(300),
caminho varchar(50),
nome_imagem varchar(50),
cod_materia int,
primary key(id_questao),
foreign key (cod_materia) references tbMateria(id_materia)
)default charset = utf8;

create table if not exists tbAlternativa(
id_alternativa int  not null auto_increment,
texto text(300),
correta bool,
cod_questao int,
primary key(id_alternativa),
foreign key (cod_questao) references tbQuestao(id_questao)
)default charset = utf8;

create table if not exists tbResposta(
id_resposta int not null auto_increment,
tempo_inicial datetime,
tempo_final datetime,
cod_usuario int,
cod_questao int,
cod_alternativa int,
primary key(id_resposta),
foreign key(cod_usuario) references tbUsuario(id_usuario),
foreign key(cod_questao) references tbQuestao(id_questao),
foreign key(cod_alternativa)references tbAlternativa(id_alternativa)
)default charset = utf8;

create table if not exists tbEscolha(
id_escolha int not null  auto_increment,
cod_usuario int,
cod_disciplina int,
primary key(id_escolha),
foreign key (cod_usuario) references tbUsuario(id_usuario),
foreign key (cod_disciplina) references tbDisciplina(id_disciplina)
)default charset = utf8;  




insert into tbDisciplina(disciplinas)
values
('ARTES'),
('BIOLOGIA'),
('FILOSOFIA'),
('FÍSICA'),
('GEOGRAFIA'),
('HISTÓRIA'),
('INGLÊS'),
('MATEMÁTICA'),
('PORTUGUÊS'),
('QUÍMICA'),
('SOCIOLOGIA');


insert into tbMateria(temas,cod_disciplina)
values

-- Temas de Artes
('ARTE MODERNA',1),
('HISTÓRIA DA ARTE',1),
('RENASCIMENTO', 1),

-- Temas de Biologia
('BIOQUÍMICA CELULAR',2),
('ECOLOGIA',2),
('GENÉTICA', 2),

-- Temas de Filosofia
('EXISTENCIALISMO',3),
('ILUMINISMO',3),
('POLÍTICA, CORRUPÇÃO E ÉTICA', 3),

-- Temas de Física
('CALORIMETRIA',4),
('HIDROESTÁTICA',4),
('ONDAS ELETROMÁGNETICAS', 4),

-- Temas de Geografia
('AGROPECUÁRIA BRASILEIRA',5),
('GEOPOLÍTICA MUNDIAL', 5),
('ORIENTE MÉDIO - ESTADO ISLÂMICO',5),

-- Temas de História
('INDEPENDÊNCIA DO BRASIL',6),
('REVOLUÇÃO FRANCESA',6),
('SEGUNDA GUERRA MUNDIAL', 6),

-- Temas de Inglês
('ARTIGOS', 7),
('COMPREENSÃO DE TEXTO', 7),
('VERBOS', 7),

-- Temas de Matemática
('ANÁLISE COMBINATÓRIA',8),
('PROGRESSÃO ARITMÉTICA',8),
('PROGRESSÃO GEOMÉTRICA',8),

-- Temas  de Português
('FIGURAS DE LINGUAGEM',9),
('INTERPRETAÇÃO DE TEXTO',9),
('ORAÇÕES SUBORDINADAS',9),

-- Temas  de Química
('CADEIAS CARBÔNICAS',10),
('COMPOSTOS IÔNICOS',10),
('COMPOSTOS MOLECULARES',10),

-- Temas  de Sociologia
('CIDADANIA',11),
('MOVIMENTOS SOCIAIS',11),
('SOCIOLOGIA CONTEMPORÂNEA',11);


insert into tbquestao(edicao,banca,prova,enunciado,caminho,nome_imagem,cod_materia)
values

-- Q1 Arte Moderna - Artes 
	('2017','INEP','ENEM',
     'Essa escultura foi produzida durante o período da ditadura stalinista, na ex-União Soviética, e representa o(a)',
	 'Artes-Arte Moderna','imgQ1',1),
     
-- Q2 Arte Moderna - Artes 
	('2017','INEP','ENEM',
     'Em 1956, o artista Flávio de Resende Carvalho desfilou pela Avenida Paulista com o traje New Look uma proposta tropical para o guarda-roupa masculino. Suas obras mais conhecidas são relacionadas às performances. A imagem permite relacionar como características dessa manifestação artística o uso',
	 'Artes-Arte Moderna','imgQ2',1),
     
-- Q3 Arte Moderna - Artes 
	('2017','INEP','ENEM',
     'Inovando os padrões estéticos de sua época. a obra de Pablo Picasso foi produzida utilizando características de um movimento artístico que',
	 'Artes-Arte Moderna','imgQ3',1),
     
-- Q4 Arte Moderna - Artes 
	('2010','INEP','ENEM',
     'O modernismo brasileiro teve forte influência das vanguardas europeias. A partir da Semana de Arte Moderna, esses conceitos passaram a fazer parte da arte brasileira definitivamente. Tomando como referência o quadro O mamoeiro, identifica-se que, nas artes plásticas, a',
	 'Artes-Arte Moderna','imgQ4',1),
     
-- Q5 Arte Moderna - Artes 
	('2010','INEP','ENEM',
     'Após estudar na Europa, Anita Malfatti retornou ao Brasil com uma mostra que abalou a cultura nacional do início do século XX. Elogiada por seus mestres na Europa, Anita se considerava pronta para mostrar seu trabalho no Brasil, mas enfrentou as duras críticas de Monteiro Lobato. Com a intenção de criar uma arte que valorizasse a cultura brasileira, Anita Malfatti e outros artistas modernistas ',
	 null,null,1),     
     
-- Q1 HISTÓRIA DA ARTE - Artes 
	(null,null,'UNIFESP',
     '“... o mestre que eu tive foi a natureza que me envolve... desse livro secular e imenso, é que eu tirei as páginas de O Guarani, as de Iracema... Daí, e não das obras de [Renée de] Chateaubriand, e menos das de [Fenimore] Cooper, que não eram senão a cópia do original sublime que eu havia lido com o coração.” (Do romancista José de Alencar.) Sobre o texto, pode-se sustentar que o autor',
	 null,null,2),
     
-- Q2 HISTÓRIA DA ARTE - Artes 
	(null,'COPEVE','UFMS',
     'A partir do século XII, em algumas regiões da Europa, nas cidades em crescimento, comerciantes, artesãos e bispos aliaram-se, para a construção de catedrais com grandes pórticos, vitrais e rosáceas, produzindo uma “poética da luz”, abóbadas e torres elevadas que dominavam os demais edifícios urbanos. Dentre as alternativas abaixo, assinale aquela que corresponde ao estilo de arte da época.',
	 null,null,2),
     
-- Q3 HISTÓRIA DA ARTE - Artes 
	(null,'UFPE',NULL,
     'A história da arte brasileira no século XX mostra que uma boa parte dos artistas expressaram em suas obras as contradições da sociedade. Indique a alternativa que corresponde a essa afirmação. ',
	 null,null,2),
     
-- Q4 HISTÓRIA DA ARTE - Artes 
	(null,'UFPB',null,
     'Os trovadores, poetas-músicos das cortes do sul da França na Idade Média deixaram uma rica e diversificada herança literária. Compondo canções que vão do profano até o sagrado, influenciaram o surgimento de gêneros literários e musicais populares na área colonial brasileira, notadamente no Nordeste e Norte de Minas Gerais. Aponte a alternativa que corresponde ao que foi afirmado: ',
	 null,null,2),
     
-- Q5 HISTÓRIA DA ARTE - Artes 
	(null,'UFSCAR',null,
     'A pintura apresentada (Banheira, Edgar Degas, 1886) pode ser considerada uma obra impressionista: ',
	 'Artes-Historia da Arte','imgQ5',2),     


-- Q1 Renascimeto - Artes 
    ('2017','VUNESP','UNESP',
     'A pintura representa no martírio de Cristo os seguintes princípios culturais do Renascimento italiano:',
	 'Artes-Renascimento e Humanismo','imgQ1',3),
  
-- Q2 Renascimeto - Artes   
     ('2017',null,'IFSP',
      '“A Última Ceia, obra-prima de Leonardo Da Vinci, retrata uma época, um movimento artístico e um avanço histórico em termos de perspectiva, olhar dramático, técnica e ciência.” Assinale a alternativa que apresenta a qual período histórico a obra acima pertence.',
	  'Artes-Renascimento e Humanismo','imgQ2',3), 

-- Q3 Renascimeto - Artes   
     ('2015',null,'CPS ',
      'A pintura do teto da Capela Sistina, obra do mestre Michelangelo Buonarroti, foi realizada no início do século XVI. Veja uma pequena parte dessa obra. Analisando as características da pintura apresentada, é correto concluir que se trata de uma obra',
	   'Artes-Renascimento e Humanismo','imgQ3',3), 
      
-- Q4 Renascimeto - Artes   
     ('2015','UPENET/IAUPE','UPE',
      'Observe a imagem a seguir. Ela reproduz um detalhe dos afrescos pintados por Michelangelo na Capela Sistina. Sobre a imagem e seu contexto histórico, assinale a alternativa CORRETA.',
	  'Artes-Renascimento e Humanismo','imgQ4',3), 

-- Q5 Renascimeto - Artes   
     ('2014',null,'UPF',
      'Nos séculos XIV e XV, a Europa medieval vivenciou uma grave crise geral, que abalou profundamente as estruturas da sociedade, abrindo espaços para a criação de relações capitalistas no interior dessas sociedades europeias, dando início ao que se convencionou chamar de Idade Moderna. Dentre as alternativas abaixo, assinale a que não caracteriza os efeitos da transição da Idade Média para a Idade Moderna.',
	  null,null,3),     
                   
-- Q1 Bioquímica Celular - Biologia
	 ('2017','FAC. ALBERT EINSTEIN', 'Medicina',
     'A fenilcetonúria, também conhecida como PKU, é uma doença genética humana caracterizada pela incapacidade de metabolizar o aminoácido fenilalanina. Como consequência, há acúmulo de fenilalanina no organismo, o que interfere negativamente no desenvolvimento cerebral e provoca deficiência intelectual. É um tipo de distúrbio que afeta crianças de ambos os sexos, que, na maioria das vezes, nascem de pais normais. O diagnóstico, quando realizado precocemente pelo teste do pezinho, é útil para se estabelecer uma dieta planejada que previne a deficiência intelectual. Considerando essas informações, pode-se inferir que os fenilcetonúricos',
	 null,null,4),
     
-- Q2 Bioquímica Celular - Biologia
     ('2011',null,'EEWB',
      'O personagem Homem Aranha criado por Stan Lee e Steve Ditko na década de 60, encontra-se, junto com o Super Homem (Joe Shuster e Jerry Siegel, 1938) e o Batman (Bob Kaine, 1939) entre os mais populares desenhos em quadrinhos. “Diferente dos demais heróis, ele vende fotos do Homem-Aranha para o Clarim Diário. Seus motivos, porém, são altruístas: ele ajuda a tia viúva e idosa a pagar as contas, principalmente com os remédios. É, portanto, um dos super-heróis mais humanizados das histórias em quadrinhos, o que o levou a um sucesso estrondoso e a uma competição direta de popularidade com ícones do nível de Super Homem e Batman. ” Fonte: http://pt.wikipedia.org/wiki/homem-aranha O personagem Peter Parker adquire seus poderes ao ser picado por uma aranha modificada geneticamente. O veneno da maioria das aranhas é composto basicamente por enzimas e moléculas biologicamente ativas produzidas por glândulas situadas no cefalotórax. Supondo que essas substâncias tenham a capacidade de atravessar a membrana plasmática da célula, qual das estruturas abaixo teria a capacidade de transformar permanentemente um ser vivo, de forma que o mesmo adquira características diferentes das herdadas do(s) progenitor(es):',
	  'Bio-Bioquimica Celular','imgQ2',4), 

-- Q3 Bioquímica Celular - Biologia
     ('2017',null,'IFPE',
      'Em diversos países, o consumo dos pés de galinha é quase zero, mas na China esse produto é bastante valorizado. Só o Brasil, nos últimos anos, exportou para esse país cerca de 200 mil toneladas por ano e o grande consumo dessa iguaria deve-se ao benefício que proporciona ao organismo por ser fonte de colágeno, uma proteína que proporciona flexibilidade, resistência e elasticidade aos tecidos conjuntivos. É CORRETO dizer que a deficiência de colágeno, denominada “colagenose” acarreta',
	  null,null,4), 
      
-- Q4 Bioquímica Celular - Biologia
     ('2017','UFPR',null,
      'As moléculas mais utilizadas pela maioria das células para os processos de conversão de energia e produção de ATP (trifosfato de adenosina) são os carboidratos. Em média, um ser humano adulto tem uma reserva energética na forma de carboidratos que dura um dia. Já a reserva de lipídeos pode durar um mês. O armazenamento de lipídeos é vantajoso sobre o de carboidratos pelo fato de os primeiros terem a característica de serem:',
	  null,null,4),       
     
-- Q5 Bioquímica Celular - Biologia
     ('2017',null,'CPS',
      'Em uma confraternização entre amigos foi oferecido um almoço com um cardápio, no qual constavam as seguintes opções: macarrão, arroz branco, feijão, frango, salada de alface com tomate, batata frita e suco de melão. Sobre esse almoço, é correto afirmar que',
	  null,null,4), 
      
-- Q1 Ecologia - Biologia
	('2012',null,'UERN',
     'Em uma cadeia alimentar, a quantidade de energia presente em um nível trófico é sempre maior que a quantidade de energia transferível para o nível seguinte. Isso porque todos os seres vivos consomem parte da energia do alimento para a manutenção de sua própria vida, liberando calor e, portanto, não a transferindo para os níveis seguintes. A porcentagem de energia transferida de um nível para o seguinte é denominada eficiência ecológica, varia entre os organismos, situando-se entre 5% e 20%. Na transferência dos herbívoros para os carnívoros, essa perda é significativa, isso se deve ao (à) ',
	 null,null,5),  
     
-- Q2 Ecologia - Biologia
	('2015',null,'UERJ',
     'Considere dois ecossistemas, um terrestre e outro marinho. Em cada um deles, é possível identificar o nível trófico em que se encontra a maior quantidade de biomassa por unidade de área, em um determinado período. Para o ecossistema terrestre e para o marinho, esses níveis tróficos correspondem, respectivamente, a:',
	 null,null,5), 
     
-- Q3 Ecologia - Biologia
	('2014',null,'UFP',
     'Os seres vivos necessitam de alguns elementos químicos em grandes quantidades. A interação desses elementos nos próprios seres e com o ambiente físico no qual se encontram ocorre por meio de movimentos conhecidos como ciclos biogeoquímicos, sobre os quais é correto afirmar que: ',
	 null,null,5), 
     
-- Q4 Ecologia - Biologia
	('2014','CEV','UECE',
     '“Os seres humanos têm um gosto bastante peculiar. Sol, temperatura amena, ar fresco e bebidas refrescantes podem fazer a alegria de qualquer pessoa, mas seriam desagradáveis e até mortais para outros organismos. É que, na natureza, muitas espécies se especializaram em viver em ambientes tão diferentes do nosso que jamais se contentariam com sombra e água fresca. Para esses bichos, bons mesmo são lugares escaldantes, congelantes, com extremos de pressão, toxinas aos montes, falta de água ou de oxigênio. São os chamados seres extremófilos, os habitantes dos piores lugares do planeta. ” Super Interessante. Rafael Kenski. Disponível em: http://super.abril.com.br/mundo-animal/vida-extremo- 444248.shtml No que concerne aos seres extremófilos, é correto afirmar-se que',
	 null,null,5), 
     
-- Q5 Ecologia - Biologia
	('2014','PUCRS',null,
     'Todos os seres vivos necessitam de energia para manter a integridade celular e a função de seus diversos órgãos e sistemas. Entretanto, as vias de obtenção de energia podem ser distintas em diferentes organismos. Qual das sentenças abaixo explica corretamente as diferenças entre autótrofos e heterótrofos?',
	 null,null,5), 
     
-- Q1 Genética - Biologia 
    ('2014','USP','FUVEST',
	 'Para que a célula possa transportar, para seu interior, o colesterol da circulação sanguínea, é necessária a presença de uma determinada proteína em sua membrana. Existem mutações no gene responsável pela síntese dessa proteína que impedem a sua produção. Quando um homem ou uma mulher possui uma dessas mutações, mesmo tendo também um alelo normal, apresenta hipercolesterolêmica, ou seja, aumento do nível de colesterol no sangue. A hipercolesterolêmica devida a essa mutação tem, portanto, herança',
	 null,null,6),
     
-- Q2 Genética - Biologia 
	('2014','UDESC',null,
     'Assinale a alternativa correta quanto à hemofilia.',
	 null,null,6), 
     
-- Q3 Genética - Biologia 
	('2014','CEV','UECE',
     'Em um aconselhamento genético, a chance calculada pelo cientista de um casal portador de uma doença recessiva ter uma criança afetada é de ',
	 null,null,6), 
     
-- Q4 Genética - Biologia 
	('2014',null,'CFTMG',
     'Analise a fotomicrografia e a representação esquemática de um processo metabólico citoplasmático. Esse processo ocorre em células de ',
	 'Bio-Genetica','imgQ4',6), 
     
-- Q5 Genética - Biologia 
	('2014','VUNESP','UNESP',
      'A figura mostra o encontro de duas células, um espermatozoide e um ovócito humano, momentos antes da fecundação. Considerando as divisões celulares que deram origem a essas células, é correto afirmar que o sexo da criança que será gerada foi definido na',
	 'Bio-Genetica','imgQ5',6),      
     
-- Q1 Existencialismo - Filosofia
	 ('2016','INEP','ENEM',
	 'Ser ou não ser – eis a questão. Morrer – dormir – Dormir! Talvez sonhar. Aí está o obstáculo! Os sonhos que hão de vir no sono da morte Quando tivermos escapado ao tumulto vital Nos obrigam a hesitar: e é essa a reflexão Que dá à desventura uma vida tão longa. SHAKESPEARE, W. Hamlet. Porto Alegre: L&PM, 2007. Este solilóquio pode ser considerado um precursor do existencialismo ao enfatizar a tensão entre',
	 null,null,7),
     
-- Q2 Existencialismo - Filosofia
	('2013','UFSJ',null,
     'Na obra “O existencialismo é um humanismo”, Jean-Paul Sartre intenta ',
	 null,null,7),  
     
-- Q3 Existencialismo - Filosofia
	('2012','UFSJ',null,
     '“Subjetividade” e “intersubjetividade” são conceitos com os quais Sartre pontua o seu existencialismo. Nesse contexto, tais conceitos revelam que ',
	 null,null,7),  
     
-- Q4 Existencialismo - Filosofia
	('2012','UFSJ',null,
     'A angústia, para Jean-Paul Sartre, é ',
	 null,null,7),       

-- Q5 Existencialismo - Filosofia
	('2012','UFSJ',null,
     'Sobre a interferência de Jean-Paul Sartre na filosofia do século XX, é CORRETO afirmar que ele ',
	 null,null,7),  

-- Q1 Iluminismo - Filosofia
	(null,null,'FATEC',
     'As grandes revoluções burguesas do século XVIII refletem, em parte, algumas ideias dos filósofos iluministas, dentre as quais podemos destacar a que',
	 null,null,8),
    
-- Q2 Iluminismo - Filosofia    
    ('2016',null,'ESPCEX (AMAN)',
     'Observe as ideias de três pensadores da Idade Moderna. - Adam Smith (escocês), em sua obra A riqueza das nações, afirmava que a única fonte de riqueza era o trabalho, e não a terra. - A ideia central da doutrina de Karl Marx (alemão) é que a “história das sociedades humanas é a história da luta de classes”. - Thomas Malthus (inglês), em sua obra Ensaio sobre o princípio da população, escreveu que a natureza impõe limites ao progresso material, já que a população cresce em progressão geométrica, enquanto a produção de alimentos aumenta em progressão aritmética. Pode-se afirmar que',
	 null,null,8),    
     
-- Q3 Iluminismo - Filosofia    
    ('2016','FGV',null,
     '“O gênero humano é de tal ordem que não pode subsistir, a menos que haja uma grande infinidade de homens úteis que não possuam nada.” (Dicionário filosófico, verbete Igualdade) “O comércio, que enriqueceu os cidadãos na Inglaterra, contribuiu para os tornar livres, e essa liberdade deu por sua vez maior expansão ao comércio; daí se formou o poderio do Estado.” (Cartas inglesas) Sobre os trechos de Voltaire, é correto afirmar que o autor',
	 null,null,8),        

-- Q4 Iluminismo - Filosofia    
    ('2015','PUCRJ',null,
     'Em meados do século XVIII, diversas monarquias europeias se modernizaram com base nos ideais iluministas para um programa de reformas que assegurasse uma administração mais racional e eficiente do Estado. Embora afirmassem agir em nome da “maior felicidade dos povos”, estes permaneciam excluídos da tomada de decisões políticas. Considerando as relações entre a cultura iluminista e as reformas promovidas pelos “soberanos esclarecidos”, analise as afirmativas a seguir. I. Os soberanos reformadores concentraram seus esforços no desmantelamento de privilégios fiscais e no redimensionamento dos poderes eclesiásticos, como no caso de Frederico II na Prússia e de D. José I e de seu ministro Pombal em Portugal. II. Os filósofos iluministas forneceram o tema da razão, da boa administração e da pública felicidade aos projetos absolutistas dos monarcas e o da liberdade à oposição antiabsolutista. III. Os opositores do reformismo monárquico eram juristas e magistrados tradicionalistas, a nobreza fundiária e o alto clero, ameaçados pela dissolução da sociedade de ordens promovida pelos soberanos esclarecidos.',
	 null,null,8),   

-- Q5 Iluminismo - Filosofia    
    ('2014',null,'UEPB',
     'O século XVIII europeu foi marcado pela crise do Antigo Regime” e pelo advento do Iluminismo - um movimento intelectual e político favorável ao uso da razão como forma de se alcançar a liberdade, a felicidade e o bem-estar social.  Analise as assertivas abaixo: I. Enquanto movimento intelectual, o Iluminismo pretendia divulgar o conhecimento até então produzido pela humanidade. Foi por isso que se produziu, entre 1751 e 1780, uma Enciclopédia (composta de 35 volumes). A ideia dos enciclopedistas era travar uma batalha permanente contra a ignorância e a favor da educação popular. lI. A base ideológica do Antigo Regime, assim chamado por se inspirar na elaboração aristotélica, era a crítica ao poder absolutista e a defesa da soberania popular. Filosoficamente, se filiava à elaboração de enciclopedistas como Voltaire, d’Alembert, Montesquieu e Rousseau. III. As sociedades europeias do Antigo Regime eram estamentais e o poder político e econômico estava nas mãos da nobreza e da Igreja. Mas a educação ficava a cargo dos enciclopedistas, que fundaram universidades para lecionar aos filhos da elite um tipo de conhecimento laico, científico e comprometido com a reestruturação social. IV. Enquanto movimento político, o Iluminismo criticava as sociedades estamentais baseadas no Antigo Regime. Os “homens da ilustração” questionavam a influência política e cultural da Igreja, os privilégios da nobreza, a servidão no campo e a censura às chamadas ideias perigosas”. Assinale a alternativa correta:',
	 null,null,8),   
     
-- Q1 Política - Filosofia
	 ('2015','INEP','ENEM',
     'A natureza fez os homens tão iguais, quanto às faculdades do corpo e do espírito, que, embora por vezes se encontre um homem manifestamente mais forte de corpo, ou de espírito mais vivo do que outro, mesmo assim, quando se considera tudo isto em conjunto, a diferença entre um e outro homem não é suficientemente considerável para que um deles possa com base nela reclamar algum benefício a que outro não possa igualmente aspirar. HOBBES, T. Leviatã. São Paulo Martins Fontes, 2003 Para Hobbes, antes da constituição da sociedade civil, quando dois homens desejavam o mesmo objeto, eles',
	 null,null,9),
   
-- Q2 Política - Filosofia   
     ('2016','VUNESP','UNESP',
     'Sob o ponto de vista individual, a corrupção pode ser vista como uma escolha racional, baseada em uma ponderação dos custos e dos benefícios dos comportamentos honesto e corrupto. No tocante às empresas, punir apenas as pessoas, ignorando as entidades, implica adotar, nesse âmbito, a teoria da maçã podre, como se a corrupção fosse um vício dos indivíduos que as praticaram no seio empresarial. O que constatamos é bem diferente disso. A corrupção era, para as empresas envolvidas na operação Lava Jato, um modelo de negócio que majorava o lucro em benefício de todos. (Entrevista com Deltan Martinazzo Dallagnol [procurador público].O Estado de S.Paulo, 18.03.2015. Adaptado.) A corrupção é abordada no texto como um problema que pode ser explicado sob um ponto de vista',
	 null,null,9), 
     
-- Q3 Política - Filosofia   
     ('2015','UDESC',null,
     'Visualize com atenção a imagem do chargista Latuff, e analise as proposições. I. A igualdade de forças entre os dois personagens da imagem está bem demarcada pela enxada na mão da mulher e a arma de fogo apontada pelo jagunço. II. A presença da balança na mão do atirador representa de que lado a justiça pende diante dos confrontos entre latifundiários e movimentos sociais de luta pela terra. III. A presença feminina, na charge, faz jus à histórica participação das mulheres nos movimentos sociais de ocupação pela terra. IV. A justiça está representada com uma venda no olho, indicando sua imparcialidade diante dos problemas de disputas de terra no Brasil; ela atua sempre do lado da legalidade, nesse caso, a favor da concentração de riqueza e de propriedade nas mãos de uns poucos. V. O chapéu representando o latifúndio simboliza os movimentos sociais que incluíram a questão da terra como pauta de luta. Assinale a alternativa correta.',
	 'Filo-Politica','imgQ3',9), 
     
-- Q4 Política - Filosofia   
     ('2013','INEP','ENEM',
     'Nasce daqui uma questão: se vale mais ser amado que temido ou temido que amado. Responde-se que ambas as coisas seriam de desejar; mas porque é difícil juntá-las, é muito mais seguro ser temido que amado, quando haja de faltar uma das duas. Porque dos homens se pode dizer, duma maneira geral, que são ingratos, volúveis, simuladores, covardes e ávidos de lucro, e enquanto lhes fazes bem são inteiramente teus, oferecem-te o sangue, os bens, a vida e os filhos, quando, como acima disse, o perigo está longe; mas quando ele chega, revoltam-se. MAQUIAVEL, N. O príncipe. Rio de Janeiro: Bertrand, 1991. A partir da análise histórica do comportamento humano em suas relações sociais e políticas, Maquiavel define o homem como um ser',
	 null,null,9), 
     
-- Q5 Política - Filosofia   
     ('2012','INEP','ENEM',
     'É verdade que nas democracias o povo parece fazer o que quer; mas a liberdade política não consiste nisso. Deve-se ter sempre presente em mente o que é independência e o que é liberdade. A liberdade é o direito de fazer tudo o que as leis permitem; se um cidadão pudesse fazer tudo o que elas proíbem, não teria mais liberdade, porque os outros também teriam tal poder. MONTESQUIEU. Do Espírito das Leis. São Paulo: Editora Nova Cultural, 1997 (adaptado). A característica de democracia ressaltada por Montesquieu diz respeito',
	 null,null,9),      
     
-- Q1 Calorimetria - Física
     (null,null,'FMU',
     'A temperatura durante a mudança de estado, para uma dada substância,',
	 null,null,10),
    
-- Q2 Calorimetria - Física    
	 (NULL,null,'UFRN',
     'Um copo de água está à temperatura ambiente de 30°C. Joana coloca cubos de gelo dentro da água. A análise dessa situação permite afirmar que a temperatura da água irá diminuir por que',
	 null,null,10), 
     
-- Q3 Calorimetria - Física    
	 (null,'PUC-PR',null,
     'Um menino inglês mediu sua temperatura com um termômetro graduado na escala Fahrenheit e encontrou 96,8°F. Esse menino está:',
	 null,null,10), 
     
-- Q4 Calorimetria - Física    
	 (null,'PUC-PR',null,
     'Um calorímetro contém 500 g de água a uma temperatura de 20°C. Despreze o calor recebido pelo calorímetro. Fornecendo-se à água uma quantidade de calor de 20000 cal, obtêm-se no calorímetro: Dados: cH2O = 1 cal/g°C LH2O = 540 cal/g',
	 null,null,10), 
     
-- Q5 Calorimetria - Física    
	 (null,'PUC-RS',null,
     'Podemos caracterizar uma escala absoluta de temperatura quando',
	 null,null,10),      
     
-- Q1 Hidroestática - Física
     ('2017','EFOMM','Marinha',
	 'Um cubo de 25,0 kg e 5,0 m de lado flutua na água. O cubo é, então, afundado ligeiramente para baixo por Dona Marize e, quando liberado, oscila em um movimento harmônico simples com uma certa frequência angular. Desprezando-se as forças de atrito, essa frequência angular é igual a:',
	 null,null,11),
   
-- Q2 Hidroestática - Física   
     ('2016','USP','FUVEST',
     'Um objeto homogêneo colocado em um recipiente com água tem 32% de seu volume submerso; já em um recipiente com óleo, tem 40% de seu volume submerso. A densidade desse óleo, em g/cm3, é Note e adote: Densidade da água = 1g/cm3',
	  null,null,11), 

-- Q3 Hidroestática - Física   
     ('2016',null,'UPF',
     'A mudança de fase de uma substância é um fenômeno natural que ocorre, por exemplo, quando a água líquida se vaporiza ao ferver. Sobre esse conteúdo, um professor de Física propôs a seguinte questão a seus alunos: Medir a temperatura da água fervente em dois recipientes idênticos de metal – ambos com o mesmo volume de água e a mesma temperatura inicial – que se encontram sobre fogões de cozinha que fornecem a mesma quantidade de calor por unidade de tempo; um deles no nível do mar e o outro no alto do Pico da Neblina. Como resultado do exercício proposto, tem-se que a temperatura da água fervente é:',
	  'Fisica-Hidroestatica','imgQ3',11), 
     
-- Q4 Hidroestática - Física   
     ('2016',null,'IMED',
     'Uma criança brincando com uma balança de verdureiro, instrumento utilizado para a medição de massas, mergulha e tira uma caneca de porcelana de uma bacia cheia de água. Fora da água, a balança registra uma massa de 360g para a caneca e, mergulhada totalmente, uma massa de 320g. Com base nessas informações, qual a força de empuxo sobre a caneca quando ela está totalmente mergulhada? Considere a aceleração da gravidade igual a 10m/s2.',
	 null,null,11), 
     
-- Q5 Hidroestática - Física   
     ('2016','ACAFE',null,
     'Em Criciúma (SC), uma mina de carvão tem 500m de profundidade. Coloca-se no fundo da mina um recipiente aberto com água a ferver. O que acontece com a água nessa situação?',
	 null,null,11),      

-- Q1 Ondas Eletromágneticas - Física     
	 (null,'UFG',null,
     'As ondas eletromagnéticas foram previstas por Maxwell e comprovadas experimentalmente por Hertz (final do século XlX). Essa descoberta revolucionou o mundo moderno. Sobre as ondas eletromagnéticas são feitas as afirmações: I. Ondas eletromagnéticas são ondas longitudinais que se propagam no vácuo com velocidade constante c = 3,0 × 108 m/s. II. Variações no campo magnético produzem campos elétricos variáveis que, por sua vez, produzem campos magnéticos também dependentes do tempo e assim por diante, permitindo que energia e informações sejam transmitidas a grandes distâncias. III. São exemplos de ondas eletromagnéticas muito frequentes no cotidiano: ondas de rádio, sonoras, micro-ondas e raios X. Está correto o que é afirmado em:',
	 null,null,12),
 
-- Q2 Ondas Eletromágneticas - Física  
	 (NULL,'UFV',null,
     'A figura ilustra um "flash" ou instantâneo de um trem de ondas que se propaga em uma corda para a direita e com velocidade constante.',
	 'Fisica-Ondas Eletromagneticas','imgQ2',12),
      
-- Q3 Ondas Eletromágneticas - Física  
	 (null,'NC-UFPR','UFPR',
     'O primeiro forno de micro-ondas foi patenteado no início da década de 1950 nos Estados Unidos pelo engenheiro eletrônico Percy Spence. Fornos de micro-ondas mais práticos e eficientes foram desenvolvidos nos anos 1970 e a partir daí ganharam grande popularidade, sendo amplamente utilizados em residências e no comércio. Em geral, a frequência das ondas eletromagnéticas geradas em um forno de micro-ondas é de 2450 MHz. Em relação à Física de um forno de micro-ondas, considere as seguintes afirmativas: I. Um forno de micro-ondas transmite calor para assar e esquentar alimentos sólidos e líquidos. II. O comprimento de onda dessas ondas é de aproximadamente 12,2 cm. III. As ondas eletromagnéticas geradas ficam confinadas no interior do aparelho, pois sofrem reflexões nas paredes metálicas do forno e na grade metálica que recobre o vidro da porta. Assinale a alternativa correta.',
	 null,null,12),
     
-- Q4 Ondas Eletromágneticas - Física  
	 (null,'CES','UFPEL',
     'Alguns anos atrás o físico Marcos Pontes se tornou o primeiro astronauta brasileiro a ultrapassar a atmosfera terrestre. Diariamente existiam contatos entre Marcos e a base, e alguns deles eram transmitidos através dos meios de comunicação. Com base no texto e em seus conhecimentos, é correto afirmar que conseguíamos "ouvir" e "falar" com Marcos porque, para essa conversa, estavam envolvidas',
	 null,null,12), 
     
-- Q5 Ondas Eletromágneticas - Física  
	 (null,'UFRS',null,
     'São exemplos de ondas os raios X, os raios gama, as ondas de rádio, as ondas sonoras e as ondas de luz. Cada um desses cinco tipos de onda difere, de algum modo, dos demais. Qual das alternativas apresenta uma afirmação que diferencia corretamente o tipo de onda referido das demais ondas acima citadas?',
	 null,null,12), 
     
-- Q1 Agropecuaria Brasileira - Geografia
    (null,'UFJF','Pism(Programa de Ingresso Seletivo Misto)',
     'A partir do gráfico e das características da estrutura agrária brasileira, reconhece-se que',
	 'Geo-Agropecuaria Brasileira','imgQ1',13),
     
-- Q2 Agropecuaria Brasileira - Geografia     
     (null,null,null,
     'A organização do território brasileiro ocorreu a partir da expansão do capitalismo comercial europeu no qual foram estabelecidos fluxos mercantis, definindo em seu início uma paisagem colonial que envolvia a criação de novas estruturas econômicas. Com base na afirmativa acima, assinale a opção cujos elementos indicam corretamente a área e a forma de exploração no contexto da geografia colonial brasileira.',
	 null,null,13),
     
-- Q3 Agropecuaria Brasileira - Geografia     
     ('2014','USP','FUVEST',
     'As condições da produção agrícola, no Brasil, são bastante heterogêneas, porém alguns aspectos estão presentes em todas as regiões do País. Nas anamorfoses acima, estão representadas formas de produção agrícola das diferentes regiões administrativas. Assinale a alternativa que contém, respectivamente, a produção agrícola representada em I e em II.',
	 'Geo-Agropecuaria Brasileira','imgQ3',13),
     
-- Q4 Agropecuaria Brasileira - Geografia     
     ('2014','UEPB',null,
     'Nos meados do século XIX, aproveitando o baixo rendimento dado pela cultura da cana-de-açúcar, foi o café introduzido nas áreas de altitudes, nos brejos agrestinos. [...] No brejo paraibano sua trajetória foi rápida e brilhante [...] formou aí uma aristocracia do café, com coronéis, comendador e até Barão, O Barão de Araruna. (ANDRADE. Manoel Correia de. A terra e o homem do Nordeste: contribuição ao estudo da questão agrária no Nordeste. 7. Ed. São Paulo, Cortez, 2003. p 163) A cidade do Brejo Paraibano que mais se beneficiou com essa cultura foi:',
	 null,null,13),
     
-- Q5 Agropecuaria Brasileira - Geografia     
     ('2013',NULL,'UERJ',
     'Com base no mapa, é possível associar a macrorregião brasileira com maior proporção de migrantes à presença da seguinte dinâmica socioespacial:',
	 'Geo-Agropecuaria Brasileira','imgQ5',13),     
     
-- Q1 Geopolitica Mundial - Geografia
     ('2010','USP','FUVEST',
     'A Organização dos Estados Americanos (OEA) revogou, por meio da Resolução de 03/06/2009, a decisão, tomada em 1962, que excluía Cuba dessa organização. Em relação a esse tema, é correto afirmar que',
	 null,null,14),
     
-- Q2 Geopolitica Mundial - Geografia     
     ('2010',null,'UFU',
     'As vagas para disputar a Copa do Mundo de Futebol são distribuídas pelas confederações continentais. No entanto, um país que tem seu território totalmente na Ásia é filiado à UEFA (União das Federações Europeias de Futebol) desde 1994, tendo disputado as eliminatórias da Europa. Assinale a alternativa que indica o nome deste país e a razão geopolítica desta participação em uma confederação de outro continente.',
	 null,null,14),
     
-- Q3 Geopolitica Mundial - Geografia     
     ('2010','CS','UFG',
     'A geopolítica no continente americano sofreu mudanças consideráveis na década atual, modificando projetos institucionais que visavam maior influência econômica dos Estados Unidos. Como contraponto a essas iniciativas, o governo da Venezuela propôs a criação de um novo bloco. Esse bloco, que conta atualmente com a adesão de vários países, é',
	 null,null,14),
     
-- Q4 Geopolitica Mundial - Geografia     
     (null,null,'UEPB',
     'A nova ordem mundial é multipolar, em substituição à bipolar, quando os Estados Unidos e a União Soviética dividiam o comando do mundo. De acordo com os conhecimentos sobre a nova ordem, assinale a afirmativa correta.',
	 null,null,14),
     
-- Q5 Geopolitica Mundial - Geografia     
     (null,null,'UNEAL',
     'A Caxemira é um dos focos de conflito na atualidade. Ela é o pivô de uma disputa entre os seguintes países:',
	 null,null,14),     
     
-- Q1 Oriente Médio - Geografia
    ('2016','PUCRJ',null,
     'Observe a charge e marque a opção correta, levando-se em conta a emigração em massa do Oriente Médio em direção à Europa.',
	 'Geo-Oriente Medio','imgQ1',15),
      
-- Q2 Oriente Médio - Geografia   	         
     ('2016',null,'IFAL',
     'Desde o início da guerra civil na Síria, em março de 2011, o conflito escalou a ponto de se transformar em uma complexa situação em que todos parecem lutar entre si. Forças leais ao presidente Bashar Al-Assad, rebeldes, extremistas muçulmanos e potências estrangeiras são peças de um intrincado jogo que ficou ainda mais complicado com o início dos bombardeios por aviões russos. Fonte:http://www.bbc.com/portuguese/noticias/2015/10/151002_siria_xadrez_fd. Acesso em 06/11/2015 Sobre o conflito acima, assinale a alternativa verdadeira.',
	 null,null,15),
     
-- Q3 Oriente Médio - Geografia   	         
     ('2016','VUNESP','UNESP',
     'Há grande diversidade entre aqueles que procuram inspiração em sua fé no Islã. A monarquia vaabita da Arábia Saudita e os líderes religiosos xiitas do Irã têm profundas discordâncias políticas e divergem igualmente em questões socioeconômicas. Em termos mais amplos, ocorre nos movimentos islamitas um debate sobre se a meta correta é mesmo chegar ao poder estatal, assim como sobre a democracia, a diversidade social, o papel das mulheres e da educação e sobre a maneira de interpretar o Corão. E, embora a maioria dos islamitas aceite a realidade da existência dos atuais Estados e suas fronteiras, uma minoria mais radical procura destruir todo o sistema e estabelecer um califado que abarque a região inteira [do Oriente Médio]. (Dan Smith. O atlas do Oriente Médio, 2008.) O argumento principal do texto pode ser ilustrado por meio da comparação entre',
	 null,null,15),
     
-- Q4 Oriente Médio - Geografia   	         
     ('2016','COPESE','UFJF',
     'O ano de 2014 testemunhou o dramático aumento do deslocamento forçado em todo o mundo causado por guerras e conflitos, registrando níveis sem precedentes na história recente. (...) em 2013, o Alto Comissariado das Nações Unidas para os Refugiados (ACNUR) anunciou que os deslocamentos forçados afetavam 51,2 milhões de pessoas, o número mais alto desde a Segunda Guerra Mundial. Doze meses depois, a cifra chegou a impressionantes 59,5 milhões de pessoas, um aumento de 8,3 milhões de pessoas forçadas a fugir. (...) A Síria é o país que gerou o maior número tanto de deslocados internos (7,6 milhões de pessoas) quanto de refugiados (3,8 milhões). Em seguida estão Afeganistão (2,59 milhões de refugiados) e Somália (1,1 milhão de refugiados). Disponível em: <http://www.acnur.org/t3/portugues/recursos/estatisticas/>. Acesso em: 22 out. 2015. Qual a causa dos deslocamentos internos e forçados nos países em destaque?',
	 null,null,15),

-- Q5 Oriente Médio - Geografia   	         
     (null,null,null,
     'O Islã foi o alicerce sobre o qual se ergueu um grande império. O mundo muçulmano, que se estende pelo Oriente Médio, África do Norte, Ásia Setentrional e um pequeno trecho da Europa, é o fruto desse império. Mundo árabe não se confunde com mundo muçulmano. [...] O Oriente Médio, núcleo histórico e cultural do Islã e do mundo árabe, figura como foco de conflitos geopolíticos, nacionais e religiosos. Um dos eixos desse conflito é a disputa pela influência na região petrolífera do golfo pérsico. O outro eixo é a questão nacional entre Israel e Palestina, que tem repercussões mundiais. MAGNOLI, Demétrio. Geografia para o Ensino Médio. São Paulo: Atual, 2008. p.523. Com base no texto acima e nos conhecimentos gerais sobre a cultura árabe no Oriente Médio, podemos afirmar que a diferença entre mundo árabe e islamismo é:',
	 null,null,15),     
     
-- Q1 Independência do Brasil - História  
	(null,'CESGRARIO',null,
     'A Constituição imperial brasileira, promulgada em 1824, estabeleceu linhas básicas da estrutura e do funcionamento do sistema político imperial tais como o(a):',
     null,null,16),
      
-- Q2 Independência do Brasil - História
	(null,'CESGRARIO',null,
    'Assinale a opção que apresenta um fato que caracterizou o processo de reconhecimento da Independência do Brasil pelas principais potências mundiais:',
	 null,null,16),
	    
-- Q3 Independência do Brasil - História
	(null,'FGV',null,
    'No Brasil, durante o Primeiro Império, a situação financeira era precária, pelo fato de que:',
     null,null,16),

-- Q4 Independência do Brasil - História    
	(null,'USP','FUVEST',
    'O reconhecimento da independência brasileira por Portugal foi devido principalmente:',
     null,null,16),

-- Q5 Independência do Brasil - História
	(null,'USP','FUVEST',
    'A organização do Estado brasileiro que se seguiu à Independência resultou no projeto do grupo:',
     null,null,16),
     
-- Q1 Revolução Francesa - História 
	('2016','USP','FUVEST',
    'A imagem pode ser corretamente lida como uma',
     'Hist-Revolucao Francesa','imgQ1',17),

-- Q2 Revolução Francesa - História 
	('2016','PUCPR', null,
    'A Revolução Francesa foi um dos momentos mais importantes no processo de formação do mundo contemporâneo. Foi um movimento violento que sepultou o absolutismo na cena política e o mercantilismo na economia, tendo um papel de grande destaque a burguesia, interessada em instituir um regime que atendesse aos seus interesses. Durante a revolução tomou forma um corpo legislativo denominado Assembleia Nacional, que tomou parte central na consolidação das reformas objetivadas pela revolução. Dentre as principais reformas realizadas na fase moderada da Revolução Francesa (1789-1791), pela Assembleia Nacional, podemos citar CORRETAMENTE:', 
    null,null,17),
      
-- Q3 Revolução Francesa - História  
	('2016','UEG',null,
    'Socialmente, os sans-culottes representam os citadinos que vivem de seu trabalho, seja como artesãos, seja como profissionais de ofício; alguns, depois de uma vida laboriosa, se tornam pequenos proprietários na cidade, e usufruem as rendas de um imóvel. PÉRONNET, Michel. Revolução Francesa em 50 Palavras-chaves. São Paulo: Brasiliense, 1988. p. 248. ',
    null,null,17),
      
-- Q4 Revolução Francesa - História        
	('2014','UNICAMP','COMVEST',
     'Observe a obra do pintor Delacroix, intitulada A Liberdade guiando o povo (1830), e assinale a alternativa correta.',
	  'Hist-Revolucao Francesa','imgQ4',17),
      
-- Q5 Revolução Francesa - História
	('2014','PUCSP',null,
	'“O Terror, que se tornou oficial durante certo tempo, é o instrumento usado para reprimir a contrarrevolução(...). É a parte sombria e mesmo terrível desse período da Revolução [Francesa], mas é preciso levar em conta o outro lado dessa política.Michel Vovelle. A revolução francesa explicada à minha neta. São Paulo: Unesp, 2007, p. 74-75. ”São exemplos dos “dois lados” da política revolucionária desenvolvida na França, durante o período do Terror,',
     null,null,17),     
     
-- Q1 Segunda Guerra Mundial - História 
	('2014','FUNCAB',null,
    'O processo mundial de expansão e consolidação das políticas sociais segue os efeitos do período histórico em que há a(s):',
     null,null,18),
     
-- Q2 Segunda Guerra Mundial - História 
	(null,null,null,
	 'A bipolarização do poder mundial – que vigorou desde o fim da Segunda Guerra Mundial até o final da década de 80 – manteve o mundo em permanente tensão, embora sem provocar confrontos armados diretos entre EUA e URSS. Este período ficou conhecido como:',
     null,null,18),
      
 -- Q3 Segunda Guerra Mundial - História 
  ('2009','MOVENS','PC-PA Investigador',
   'Os homens e as mulheres conhecidos como “soldados da borracha” foram importantes para os esforços do Brasil na Segunda Guerra Mundial como os pracinhas da Força Expedicionária Brasileira (FEB) foram nos campos de batalha da Itália. Considerando essas informações, é correto afirmar que os “soldados da borracha”:',
    null,null,18),
    
-- Q4 Segunda Guerra Mundial - História 
	('2013','CESPE','Diplomata - Prova 2',
     'A Segunda Guerra Mundial (1939-1945) é, geralmente, considerada o grande momento de inflexão do século XX. Decorrência de duas décadas de instabilidade política, comoção social e crise econômica, ela foi o mais universalizado dos conflitos e, ao chegar ao fim, gerou uma ordem internacional que se afastava dos padrões vigentes, a rigor, desde a Idade Moderna. Relativamente aos fatores que determinaram o início de hostilidades e às conferências que estabeleceram as balizas do novo cenário mundial, assinale a opção correta.',
     null,null,18),
      
-- Q5 Segunda Guerra Mundial - História 
	('2013','CESPE','Diplomata - Prova 2',
     'Assinale a opção correta no que diz respeito à análise da economia brasileira na década posterior ao fim da Segunda Guerra Mundial.',
     null,null,18),     
     
-- Q1 Artigos - IngLês
    ('2015',null,'Esc.Naval',
     'Which sequence best completes the quotation below? “__________ Ebola outbreak in West Africa is already __________ global threat to __________ public health and it’s vital that __________ UK remains at __________ forefront of responding to __________ epidemic.” Michael Fallon, Defense Secretary, 2014.',
	 null,null,19), 
     
-- Q2 Artigos - IngLês     
	('2014',null,'UNIFOR',
     'Leia as sentenças abaixo e marque a opção correta de acordo com o uso dos artigos definido e indefinido: I. Can you play a guitar? II. I once played the guitar which had only five strings. III. She started learning the piano at the age of five. IV. I’ve always had a flute, ever since I was a child. V. I’m afraid the violin is an instrument I never mastered.',	 
      null,null,19), 
     
-- Q3 Artigos - IngLês     
	('1999','PUCRS',null,
     'Its a Miracle Tourists traveling to Israel to mark a certain 2,000th birthday will be able to celebrate in New Testament style. In September, the National Parks Authority is planning to open a 1$4.5 million submerged, crescent-shaped bridge in the Sea of Galilee. On it, as many as 280 pilgrims at a time will be able to walk on water - or at least wade in two inches of 3it. Bubbles rising at the edges of the 12-foot-wide transparent platform will be 4the only markers preventing pilgrims from taking a 5plunge. Is the structure sacrilegious? The Roman Catholic Church says no. "It will not improve faith, hope and love," ------says Pietro Sambi, 6the pope s ambassador to Jerusalem. "But from the touristic point of view, it could be just a nice idea." Newsweek, March 99. The indefinite article, as in "a $4.5 million (...) bridge" (ref.1), is used INCORRECTLY in',
	 null,null,19),   
     
-- Q4 Artigos - IngLês     
	('2000','PUCPR',null,
     'Which is the correct alternative about the use of the article "the" in the phrases below? I-You mustn t smoke in class. II- Marcos has all the right qualifications for __________  job. III - Sometimes there are shows in __________ Central Park. IV - ___________ Mercury is the smallest planet in __________ Solar System. V - __________ liberty and __________ democracy are idealized since __________ French Revolution.
',	 null,null,19),   
     
-- Q5 Artigos - IngLês     
	('2014',null,'UERJ',
     'No fragmento "a Union" (ref. 7), há uma eufonia. O mesmo processo ocorre em',
	 'Ingles-Artigos','imgQ5',19),        
     
-- Q1 Compreensão de Texto - IngLês
    ('2014','INEP','ENEM',
     'Estes são os versos finais do famoso poema The Road Not Taken, do poeta americano Robert Frost. Levando-se em consideração que a vida é comumente metaforizada como uma viagem, esses versos indicam que o autor',
	 'Ingles-Compreensao Texto','imgQ1',20),
     
-- Q2 Compreensão de Texto - IngLês     
	('2014','INEP','ENEM',
     'Considerando as ideias apresentadas no texto, o Globish (Global English) é uma variedade da língua inglesa que',
	 'Ingles-Compreensao Texto','imgQ2',20),
     
-- Q3 Compreensão de Texto - IngLês     
	('2014','INEP','ENEM',
     'Implementar políticas adequadas de alimentação e nutrição é uma meta prioritária em vários países do mundo. A partir da campanha If you can´t read it, why eat it?, os leitores são alertados para o perigo de',
	 'Ingles-Compreensao Texto','imgQ3',20),
     
-- Q4 Compreensão de Texto - IngLês     
	('2014','INEP','ENEM',
     'Considerando os participantes da conversa nessa piada, nota-se que o efeito de humor é obtido em função',
	 'Ingles-Compreensao Texto','imgQ4',20),
     
-- Q5 Compreensão de Texto - IngLês     
	('2014','INEP','ENEM',
     'Viver em um país estrangeiro pode ser uma experiência enriquecedora, embora possa também ser um desafio, pelo choque cultural. A experiência relatada pelo autor do texto revela diferentes atribuições de sentido a um determinado comportamento, mostrando que naquela situação o sorriso indicava um(a)',
	  'Ingles-Compreensao Texto','imgQ5',20),     
      
-- Q1 Verbos - IngLês
    ('2014','UERJ',NULL,
     'The function of should in the fragment above is to:',
	 'Ingles-Verbos','imgQ1',21),
     
-- Q2 Verbos - IngLês
	('2014',null,'UDESC',
     'Answer the question(s), according to text. Some of the English grammar points which are present in ref. 6 are:',
	 'Ingles-Verbos','imgQ2',21), 
     
-- Q3 Verbos - IngLês
	('2014',NULL,'UEMG',
     'Read the reported sentence below, from the text. Lustig told them he would give the tower contract to the person with the highest offer. Which of the alternatives below corresponds to Lustig’s direct speech?',
	  'Ingles-Verbos','imgQ3',21), 
     
-- Q4 Verbos - IngLês
	('2013','UFSJ',null,
     'Young Nina and her grandmother are having a conversation:',
	 'Ingles-Verbos','imgQ4',21), 
     
-- Q5 Verbos - IngLês
	('2013',null,'ITA',
     'Leia o anúncio abaixo e assinale a opção que substitui corretamente a afirmação “so should your airline”.',
	 null,null,21), 
           
-- Q1 Análise Combinatória - Matemática
    ('2014','UEMG',NULL,
     'Na Copa das Confederações de 2013, no Brasil, onde a seleção brasileira foi campeã, o técnico Luiz Felipe Scolari tinha à sua disposição 23 jogadores de várias posições, sendo: 3 goleiros, 8 defensores, 6 meio-campistas e 6 atacantes. Para formar seu time, com 11 jogadores, o técnico utiliza 1 goleiro , 4 defensores , 3 meio-campistas e 3 atacantes. Tendo sempre Júlio César como goleiro e Fred como atacante, o número de times distintos que o técnico poderá formar é',
	 null,null,22),
     
-- Q2 Análise Combinatória - Matemática
	('2014','UNEB',null,
     'De acordo com o texto, se Cebolinha lançar a sua moeda dez vezes, a probabilidade de a face voltada para cima sair cara, em pelo menos oito dos lançamentos, é igual a',
	 'Mat-Analise Combinatoria','imgQ2',22),  
     
-- Q3 Análise Combinatória - Matemática
	('2014',null,'INSPER',
     'Um dirigente sugeriu a criação de um torneio de futebol chamado Copa dos Campeões, disputado apenas pelos oito países que já foram campeões mundiais: os três sul-americanos (Uruguai, Brasil e Argentina) e os cinco europeus (Itália, Alemanha, Inglaterra, França e Espanha). As oito seleções seriam divididas em dois grupos de quatro, sendo os jogos do grupo A disputados no Rio de Janeiro e os do grupo B em São Paulo. Considerando os integrantes de cada grupo e as cidades onde serão realizados os jogos, o número de maneiras diferentes de dividir as oito seleções de modo que as três sul-americanas não fiquem no mesmo grupo é',
	 null,null,22),
     
-- Q4 Análise Combinatória - Matemática
	('2014','CEV','UECE',
     'Sejam r e s duas retas distintas e paralelas. Se fixarmos 10 pontos em r e 6 pontos em s, todos distintos, ao unirmos, com segmentos de reta, três quaisquer destes pontos não colineares, formam-se triângulos. Assinale a opção correspondente ao número de triângulos que podem ser formados.',
	 null,null,22),
     
-- Q5 Análise Combinatória - Matemática
	('2014','UPENET/IAUPE','UPE',
     'Na comemoração de suas Bodas de Ouro, Sr. Manuel e D. Joaquina resolveram registrar o encontro com seus familiares através de fotos. Uma delas sugerida pela família foi dos avós com seus 8 netos. Por sugestão do fotógrafo, na organização para a foto, todos os netos deveriam ficar entre os seus avós. De quantos modos distintos Sr. Manuel e D. Joaquina podem posar para essa foto com os seus netos?',
	 null,null,22),     
     
-- Q1 Progressão Aritimética - Matemática
    ('2009','PUC-RIO',NULL,
     'Temos uma progressão aritmética de 20 termos onde o 1° termo é igual a 5. A soma de todos os termos dessa progressão aritmética é 480. O décimo termo é igual a:',
	 null,null,23),

-- Q2 Progressão Aritimética - Matemática
	('2008','PUC-RIO',NULL,
     'A soma de todos os números naturais ímpares de 3 algarismos é:',
	 null,null,23), 
     
-- Q3 Progressão Aritimética - Matemática
	('2008','PUC-RIO',NULL,
     'Numa progressão aritmética de razão r e primeiro termo 3, a soma dos primeiros n termos é 3n², logo, a razão é:',
	 null,null,23), 
     
-- Q4 Progressão Aritimética - Matemática
	('2010','USP','FUVEST',
     'Os números a1, a2, a3 formam uma progressão aritmética de razão r, de tal modo a1 +3, a2 - 3, a3 - 3 estejam em progressão geométrica. Dado ainda que a1 > 0 e a2 = 2, conclui-se que r é igual a:',
	 null,null,23), 
     
-- Q5 Progressão Aritimética - Matemática
	('2016',null,'UDESC',
     'Sejam x, y, z números reais tais que a sequência (x, 1, y, 1/4, z) forma, nesta ordem, uma progressão aritmética, então o valor da soma x + y + z é:',
	 null,null,23), 
     
-- Q1 Progressão Geométrica - Matemática
    ('2016','UFRGS',NULL,
     'Considere o padrão de construção representado pelos triângulos equiláteros abaixo. O perímetro do triângulo da etapa 1 é 3 e sua altura é h; a altura do triângulo da etapa 2 é metade da altura do triângulo da etapa 1; a altura do triângulo da etapa 2 é metade da altura do triângulo da etapa 2 e, assim, sucessivamente. Assim, a soma dos perímetros da sequência infinita de triângulos é',
	 'Mat-Progressao Geometrica','imgQ1',24),
     
-- Q2 Progressão Geométrica - Matemática
	(null,null,null,
     'De acordo com a disposição dos números abaixo, A soma dos elementos da décima linha vale:',
	 'Mat-Progressao Geometrica','imgQ2',24), 

-- Q3 Progressão Geométrica - Matemática
	(null,'USP','FUVEST',
     'Sejam a e b números reais tais que: (i) a, b e a + b formam, nessa ordem, uma PA; (ii) 2a, 16 e 2b formam, nessa ordem, uma PG. Então o valor de a é:',
	 null,null,24), 
     
-- Q4 Progressão Geométrica - Matemática
	(null,'UFES',null,
     'O governo federal, ao efetuar a restituição de impostos, permite que os contribuintes consumam mais. O gasto de cada contribuinte torna-se receita para outros contribuintes, que, por sua vez, fazem novos gastos. Cada contribuinte poupa 10% de suas receitas, gastando todo o resto. O valor global, em bilhões de reais, do consumo dos contribuintes a ser gerado por uma restituição de impostos de 40 bilhões de reais é',
	 null,null,24), 
     
-- Q5 Progressão Geométrica - Matemática
	(null,null,'ITA',
     'Um triângulo tem lados medindo 3, 4 e 5 centímetros. A partir dele, constrói-se uma sequência de triângulos do seguinte modo: os pontos médios dos lados de um triângulo são os vértices do seguinte. Dentre as alternativas abaixo, o valor em centímetros quadrados que está mais próximo da soma das áreas dos 78 primeiros triângulos assim construídos, incluindo o triângulo inicial, é:',
	 null,null,24),   
     
-- Q1 Figuras de Linguagem - Português
    ('2016','IFBA',null,
     'Analise a imagem a seguir e identifique a figura de linguagem em evidência no título da manchete.',
	 'Port-Figuras Linguagem','imgQ1',25),   
     
-- Q2 Figuras de Linguagem - Português     
	('2016','UERJ',null,
     'O personagem presente no último quadrinho é um ácaro, um ser microscópico. Suas falas têm relação direta com seu tamanho. No contexto, é possível compreender a imagem do personagem como uma metonímia. Essa metonímia representa algo que se define como:',
	 'Port-Figuras Linguagem','imgQ2',25),
     
-- Q3 Figuras de Linguagem - Português     
	('2016',null,'IFPE',
     'Responda à questão com base na tirinha abaixo. O humor da tirinha foi conferido, sobretudo, pela não compreensão por parte da personagem Chico Bento da figura de linguagem utilizada por seu interlocutor. A essa referida figura de linguagem dá-se o nome de',
	 'Port-Figuras Linguagem','imgQ3',25),
     
-- Q4 Figuras de Linguagem - Português     
	('2013','USP','FUVEST',
     'São Paulo gigante, torrão adorado/ Estou abraçado com meu violão/ Feito de pinheiro da mata selvagem/ Que enfeita a paisagem lá do meu sertão. Tonico e Tinoco, São Paulo Gigante. Nos versos da canção dos paulistas Tonico e Tinoco, o termo “sertão” deve ser compreendido como',
	 null,null,25),
     
-- Q5 Figuras de Linguagem - Português     
	('2013',null,'UEPB',
     'Da imagem, que foi capa da Revista Veja em 20 de agosto de 2008, pode-se compreender',
	'Port-Figuras Linguagem','imgQ5',25),     
     
-- Q1 Interpretação de Texto - Português
    ('2015','UEG',NULL,
     'Há entre o enunciado “não atacar é o melhor ataque” e o ditado futebolístico “a melhor defesa é o ataque” uma relação denominada de',
	 'Port-Interpretacao Texto','imgQ1',26),

-- Q2 Interpretação de Texto - Português
	('2015','USP','FUVEST',
     'Se o açúcar do Brasil o tem dado a conhecer a todos os reinos e províncias da Europa, o tabaco o tem feito muito afamado em todas as quatro partes do mundo, em as quais hoje tanto se deseja e com tantas diligências e por qualquer via se procura. Há pouco mais de cem anos que esta folha se começou a plantar e beneficiar na Bahia [...] e, desta sorte, uma folha antes desprezada e quase desconhecida tem dado e dá atualmente grandes cabedais aos moradores do Brasil e incríveis emolumentos aos Erários dos príncipes. ANTONIL André João. Cultura e opulência do Brasil por suas drogas e minas. São Paulo: EDUSP, 2007. Adaptado. O texto acima, escrito por um padre italiano em 1711, revela que',
	 null,null,26), 
     
-- Q3 Interpretação de Texto - Português
	('2015',null,'IFSC',
     'Sobre a charge, assinale a alternativa CORRETA.',
	 'Port-Interpretacao Texto','imgQ3',26),
     
-- Q4 Interpretação de Texto - Português     
     ('2016','INEP','ENEM',
     'Nessa crônica, a repetição do trecho “Você pode não acreditar: mas houve um tempo em que...” configura-se como uma estratégia argumentativa que visa',
	 'Port-Interpretacao Texto','imgQ4',26),
     
-- Q5 Interpretação de Texto - Português     
     ('2014',null,'INSPER',
     'Nesse excerto, ao mencionar o emprego do sinal grave no título da novela, o irreverente colunista',
	 'Port-Interpretacao Texto','imgQ5',26),     
     
-- Q1 Orações Subordinadas - Português
    ('2018',null,'ITA',
     'O Brasil será, em poucas décadas, um dos países com maior número de idosos do mundo, e precisa correr para poder atendê-los no que eles têm de melhor e mais saudável: o desejo de viver com independência e autonomia. [...] O mantra da velhice no século XXI é “envelhecer no lugar”, o que os americanos chamam de aging in place. O conceito que guia novas políticas e negócios voltados para os longevos tem como principal objetivo fazer com que as pessoas consigam permanecer em casa o maior tempo possível, sem que, para isso, precisem de um familiar por perto. Não se trata de apologia da solidão, mas de encarar um dado da realidade contemporânea: as residências não abrigam mais três gerações sob o mesmo teto e boa parte dos idosos de hoje prefere, de fato, morar sozinha, mantendo-se dona do próprio nariz. Disponível em: <http://veja.abril.com.br/brasillenvelhecer-no-seculo-xxi/>, 18 mar. 2016. Adaptado. Acesso em: 10 ago. 17 A conjunção em destaque na frase “Não se trata de apologia da solidão, mas de encarar um dado da realidade contemporânea: ...” possui a função semântica de',
	 null,null,27),

-- Q2 Orações Subordinadas - Português     
	('2017',null,'ESPCEX (AMAN)',
     '“Pela primeira vez na história, pesquisadores conseguiram projetar do zero o genoma de um ser vivo (uma bactéria, para ser mais exato) e ‘instalá-lo’ com sucesso numa célula, como quem instala um aplicativo no celular. É um feito e tanto, sem dúvida. Paradoxalmente, porém, o próprio sucesso do americano Craig Venter e de seus colegas deixa claro o quanto ainda falta para que a humanidade domine os segredos da vida. Cerca de um terço do DNA da nova bactéria (apelidada de syn3.0) foi colocado lá por puro processo de tentativa e erro – os cientistas não fazem a menor ideia do porquê ele é essencial. ”Folha de S. Paulo, 26/03/2016. O texto informativo acima, que apresenta ao público a criação de uma bactéria apenas com genes essenciais à vida, contém vários conectivos, propositadamente destacados. Pode-se afirmar que',
	 null,null,27), 

-- Q3 Orações Subordinadas - Português     
	('2017','FAT','FATEC',
     'Mais escolarizadas, mulheres ainda ganham menos e têm dificuldades de subir na carreira As mulheres brasileiras já engravidam menos na adolescência, estudam mais do que os homens e tiveram aumento maior na renda média mensal, segundo mostram as Estatísticas de Gênero do IBGE, retiradas da base de dados do Censo de 2010, mas elas ainda ganham salários menores e tem dificuldades em ascender na carreira. <http://tinyurl.com/gnbsmbs> Acesso em: 29.08.2016. Adaptado. O título do artigo – Mais escolarizadas, mulheres ainda ganham menos e têm dificuldades de subir na carreira – poderia ser substituído, sem causar prejuízo de sentido, por:',
	 null,null,27), 
     
-- Q4 Orações Subordinadas - Português     
	('2017',null,'EEAR',
     'Leia: I. Todos os brasileiros que desejam ingressar na Força Aérea Brasileira devem gastar longas horas de estudo e dedicação. II. Todos os brasileiros, que desejam ingressar na Força Aérea Brasileira, devem gastar longas horas de estudo e dedicação. Marque a alternativa correta.',
	 NULL,null,27), 
     
-- Q5 Orações Subordinadas - Português     
	('2017',null,'ESPCEX (AMAN)',
     'Em “A velha disse-lhe que descansasse”, do conto Noite de Almirante, de Machado de Assis, a oração grifada é uma subordinada',
	 null,null,27),      


-- Q1 Cadeias Carbônicas - Química
    ('2016','CEV','UECE',
     'O benzeno é usado principalmente para produzir outras substâncias químicas. Seus derivados mais largamente produzidos incluem o estireno, que é usado para produzir polímeros e plásticos, fenol, para resinas e adesivos, e ciclohexano, usado na manufatura de nylon. Quantidades menores de benzeno são usadas para produzir alguns tipos de borrachas, lubrificantes, corantes, detergentes, fármacos, explosivos e pesticidas. O benzeno não é representado apenas por uma estrutura de Lewis, mas por mais de um arranjo para descrever sua estrutura, que corresponde ao efeito mesomérico ou ressonância e é identificada',
	 null,null,28), 
     
-- Q2 Cadeias Carbônicas - Química
	('2016','CEV','UECE',
     'Um carro estacionado na sombra durante um dia, com as janelas fechadas, pode conter de 400 a 800 mg de benzeno. Se está ao sol, o nível de benzeno subirá de 2000 a 4000 mg. A pessoa que entra no carro e mantém as janelas fechadas, inevitavelmente aspirará, em rápida sucessão, excessivas quantidades dessa toxina. O benzeno é uma toxina que afeta os rins e o fígado, e o que é pior, é extremamente difícil para o organismo expulsar esta substância tóxica. Por essa razão, os manuais de instruções de uso dos carros indicam que antes de ligar o ar condicionado, deve-se primeiramente abrir as janelas e deixá-las abertas por um tempo de dois minutos. Com relação ao benzeno, assinale a afirmação correta.',
	 null,null,28),    
     
-- Q3 Cadeias Carbônicas - Química
	('2016',null,'ESPCEX (AMAN)',
     'O composto representado pela fórmula estrutural, abaixo, pertence à função orgânica dos ácidos carboxílicos e apresenta alguns substituintes orgânicos, que correspondem a uma ramificação como parte de uma cadeia carbônica principal, mas, ao serem mostrados isoladamente, como estruturas que apresentam valência livre, são denominados radicais. O nome dos substituintes orgânicos ligados respectivamente aos carbonos de número 4, 5 e 8 da cadeia principal, são (Texto adaptado de: Fonseca, Martha Reis Marques da, Química: química orgânica, pág 33, FTD, 2007).',
	 'Qui-Cadeias Carbonicas','imgQ3',28),  

-- Q4 Cadeias Carbônicas - Química
	('2014','ENEM','2014',
     'O potencial brasileiro para transformar lixo em energia permanece subutilizado — apenas pequena parte dos resíduos brasileiros é utilizada para gerar energia. Contudo, bons exemplos são os aterros sanitários, que utilizam a principal fonte de energia ali produzida. Alguns aterros vendem créditos de carbono com base no Mecanismo de Desenvolvimento Limpo (MDL), do Protocolo de Kyoto. Essa fonte de energia subutilizada, citada no texto, é o',
	 null,null,28),  
     
-- Q5 Cadeias Carbônicas - Química
	('2013','USP','FUVEST',
     'Admite-se que as cenouras sejam originárias da região do atual Afeganistão, tendo sido levadas para outras partes do mundo por viajantes ou invasores. Com base em relatos escritos, pode-se dizer que as cenouras devem ter sido levadas à Europa no século XII e, às Américas, no início do século XVII. Em escritos anteriores ao século XVI, há referência apenas a cenouras de cor roxa, amarela ou vermelha. É possível que as cenouras de cor laranja sejam originárias dos Países Baixos, e que tenham sido desenvolvidas, inicialmente, à época do Príncipe de Orange (1533-1584). No Brasil, são comuns apenas as cenouras laranja, cuja cor se deve à presença do pigmento betacaroteno, representado a seguir.',
	 'Qui-Cadeias Carbonicas','imgQ5',28),      
     
-- Q1 Compostos Iônicos - Química
    ('2013','CEFET-MG',null,
     'Considere o esquema a seguir. Em relação às situações apresentadas, afirma-se, corretamente, que em ',
	 'Qui-Compostos Ionicos','imgQ1',29),
     
-- Q2 Compostos Iônicos - Química
	('2014',null,'IFCE',
     'Um elemento “A”, de número atômico 20, e outro “B”, de número atômico 17, ao reagirem entre si, originarão um composto',
	 null,null,29),  
     
-- Q3 Compostos Iônicos - Química
	('2014','VUNESP','UNESP',
     'Três substâncias puras, X, Y e Z, tiveram suas condutividades elétricas testadas, tanto no estado sólido como no estado líquido, e os dados obtidos encontram-se resumidos na tabela. Com base nessas informações, é correto classificar como substância(s) iônica(s)',
	 'Qui-Compostos Ionicos','imgQ3',29),  
     
-- Q4 Compostos Iônicos - Química
	('2014','CEV','UECE',
	'Considere quatro elementos químicos representados por: G, J, X e Z. Sabendo-se que os elementos J e G pertencem ao mesmo grupo da tabela periódica, e que os elementos J, X e Z apresentam números atômicos consecutivos, sendo X um gás nobre, é correto afirmar-se que',
	 null,null,29),  
     
-- Q5 Compostos Iônicos - Química
	(null,null,null,
    'A energia que cada alimento possui será gradativamente liberada e utilizada pelo corpo para a realização de várias funções, como digestão, respiração, prática de exercícios... Imagine que um aluno de uma Etec consumiu em seu almoço 4 colheres de sopa de arroz com feijão; salada com 3 folhas de alface e meio tomate, temperada com meia colher de sopa de azeite, meia colher de sopa de vinagre e uma pitada de sal; 1 copo de suco natural de abacaxi; 1 coxa de frango e, quando saiu da mesa, não resistiu aos brigadeiros, que sua irmã trouxe da festa de uma amiguinha, comendo 2 de sobremesa. Sobre os alimentos ingeridos pelo aluno, é correto afirmar que',
	 null,null,29),       
     
-- Q1 Compostos Moleculares - Química
    ('2017','IF-SUL',null,
     'As ligações químicas existentes na formação das substâncias NaCL, HCL e CL2 são, respectivamente,',
	 null,null,30),
     
-- Q2 Compostos Moleculares - Química
	(NULL,'CEPS','UFPA',
     'Na fórmula eletrônica (ou de Lewis) da molécula de nitrogênio, o número de pares de elétrons compartilhados é. Dado: número atômico nitrogênio = 7.',
	 null,null,30),  
     
-- Q3 Compostos Moleculares - Química
	('2016',null,'IFSUL',
     'Para o processo de purificação da água, são adicionadas substâncias como sulfato de alumínio, A Al2 (SO4)3, para formação de flocos com a sujeira da água; cloro, Cl2, para desinfecção; óxido de cálcio, CaO, para ajuste de pH, e flúor, F2, para prevenção de cáries. O tipo de ligação que une os elementos das substâncias utilizadas no processo de purificação da água é',
	 null,null,30),  
     
-- Q4 Compostos Moleculares - Química
	('2015','PUCRJ',null,
     'O flúor é um elemento de número atômico 9 e possui apenas um isótopo natural, o 19F. Sobre esse elemento e seus compostos, é correto afirmar que:',
	 null,null,30),  
     
-- Q5 Compostos Moleculares - Química
	('2015','COPESE','UFJF',
     'O óxido nitroso (N2O(g)), também conhecido como gás hilariante, foi o primeiro anestésico utilizado em cirurgias. Hoje, também pode ser utilizado na indústria automobilística para aumentar a potência de motores de combustão interna. Abaixo, está representada uma possibilidade da estrutura de Lewis dessa molécula. De acordo com a fórmula apresentada, marque a opção que descreve CORRETAMENTE as ligações existentes no N2O.',
	 'Qui-Compostos Moleculares','imgQ5',30),  
          
-- Q1 Cidadania - Sociologia
    ('2017','INEP','ENEM',
     'Art. 231. São reconhecidos aos índios sua organização social, costumes, línguas, crenças e tradições, e os direitos originários sobre as terras que tradicionalmente ocupam, competindo à União demarcá-las, proteger e fazer respeitar todos os seus bens. BRASIL. Constituição da República Federativa do Brasil de 1988. Disponível em: www.planalto.gov. br. Acesso em: 27 abr. 2017. A persistência das reivindicações relativas à aplicação desse preceito normativo tem em vista a vinculação histórica fundamental entre',
	 null,null,31),
     
-- Q2 Cidadania - Sociologia
	('2017','INEP','ENEM',
     'Fala-se muito nos dias de hoje em direitos do homem. Pois bem: foi no século XVIII — em 1789, precisamente — que uma Assembleia Constituinte produziu e proclamou em Paris a Declaração dos Direitos do Homem e do Cidadão. Essa Declaração se impôs como necessária para um grupo de revolucionários, por ter sido preparada por uma mudança no plano das ideias e das mentalidades: o iluminismo. FORTES, L. R. S. O Iluminismo e os reis filósofos. São Paulo: Brasiliense, 1981 (adaptado). Correlacionando temporalidades históricas, o texto apresenta uma concepção de pensamento que tem como uma de suas bases a',
	 null,null,31),  
     
-- Q3 Cidadania - Sociologia
	('2017',null,'UNISINOS',
	'A legislação trabalhista vigente no Brasil, neste início do século XXI, foi construída ao longo de quase 200 anos, dentro e fora do Brasil. Nesse processo, é correto afirmar que',
	 'Soc-Cidadania','imgQ3',31),  
     
-- Q4 Cidadania - Sociologia
	('2013',null,'UERN',
     'Cidadania e cidadão são palavras que vêm do latim “civitas”. O termo indicava a convivência das pessoas que participavam das decisões sobre os rumos da sociedade. (Cotrim, Gilberto. 1955. História Global – Brasil e Geral. Volume único. 8ª Ed. São Paulo: Saraiva, 2005. p. 81.) A história cumpre o papel de educar as novas gerações com concepções, ideias e informações consideradas válidas, adequadas ou corretas, segundo consensos mínimos que vão se construindo nas gerações anteriores e se legitimando ao longo do tempo. O conceito e a prática de cidadania são exemplos disso. Acerca do sentido atual do conceito de cidadania e do papel da história na construção desse conceito, assinale a afirmativa correta.',
	 null,null,31),  
     
-- Q5 Cidadania - Sociologia
	('2012','VUNESP','UNESP',
     'Se um governo quer reduzir o índice de abortos e o risco para as mulheres em idade reprodutiva, não deveria proibi-los, nem restringir demais os casos em que é permitido. Um estudo publicado em “The Lancet” revela que o índice de abortos é menor nos países com leis mais permissivas, e é maior onde a intervenção é ilegal ou muito limitada. “Aprovar leis restritivas não reduz o índice de abortos”, afirma Gilda Sedgh (Instituto Guttmacher, Nova York), líder do estudo, “mas sim aumenta a morte de mulheres”. “Condenar, estigmatizar e criminalizar o aborto são estratégias cruéis e falidas”, afirma Richard Horton, diretor de “The Lancet”. “É preciso investir mais em planejamento familiar”, pediu a pesquisadora, que assina o estudo com a Organização Mundial da Saúde (OMS). Os seis autores concluem que “as leis restritivas não estão associadas a taxas menores de abortos”. Por exemplo, o sul da África, onde a África do Sul, que o legalizou em 1997, é dominante, tem a taxa mais baixa do continente. (http://noticias.uol.com.br, 22.01.2012. Adaptado.) Na reportagem, o tema do aborto é tratado sob um ponto de vista',
	 null,null,31),       

-- Q1 Movimentos Sociais - Sociologia
    ('2014','UEA',null,
     'A questão colocada em debate pela charge é',
	 'Soc-Movimentos Sociais','imgQ1',32),  

-- Q2 Movimentos Sociais - Sociologia
	('2016',NULL,'UERJ',
     'As comunidades quilombolas, que são predominantemente constituídas por população negra, se auto definem a partir das relações com a terra, do parentesco, do território, da ancestralidade, das tradições e das práticas culturais próprias. Estima-se que em todo o país existam mais de três mil comunidades quilombolas. O Decreto Federal nº 4.887, de 20 de novembro de 2003, regulamenta o procedimento para identificação, reconhecimento, delimitação, demarcação e titulação das terras ocupadas por remanescentes das comunidades dos quilombos. Adaptado de incra.gov.br. A demarcação de terras de comunidades quilombolas é fato recente nas práticas governamentais brasileiras. Um dos principais objetivos dessa política pública é viabilizar a promoção de:',
	 null,null,32),  
     
-- Q3 Movimentos Sociais - Sociologia
	('2016','UPENET/IAUPE','UPE',
     'Observe a imagem a, O fenômeno nela apresentado é definido como uma',
	 'Soc-Movimentos Sociais','imgQ2',32),  
     
-- Q4 Movimentos Sociais - Sociologia
	('2012',null,'UNICENTRO',
     'A vida política não acontece apenas dentro do esquema ortodoxo dos partidos políticos, da votação e da representação em organismos legislativos e governamentais. O que geralmente ocorre é que alguns grupos percebem que esse esquema impossibilita a concretização de seus objetivos ou ideais, ou mesmo os bloqueia efetivamente. [...] Às vezes, a mudança política e social só pode ser realizada recorrendo-se a formas não ortodoxas de ação política. GIDDENS, A. Sociologia. 4. ed. Tradução Sandra Regina Netz. Porto Alegre : Artmed, 2008. Há um tipo comum de atividade política não ortodoxa, que busca promover um interesse comum ou assegurar uma meta comum através de ações fora das esferas institucionais, que se chama de',
	 null,null,32),  
     
-- Q5 Movimentos Sociais - Sociologia
	('2015','INEP','ENEM',
     'Diante de ameaças surgidas com a engenharia genética de alimentos, vários grupos da sociedade civil conceberam o chamado “princípio da precaução”. O fundamento desse princípio é: quando uma tecnologia ou produto comporta alguma ameaça à saúde ou ao ambiente, ainda que não se possa avaliar a natureza precisa ou a magnitude do dano que venha a ser causado por eles, deve-se evitá-los ou deixá-los de quarentena para maiores estudos e avaliações antes de sua liberação. SEVCENKO, N. A corrida para o século XXI: no loop da montanha-russa. São Paulo: Cia. das Letras, 2001 (adaptado). O texto expõe uma tendência representativa do pensamento social contemporâneo, na qual o desenvolvimento de mecanismos de acautelamento ou administração de riscos tem como objetivo',
	 null,null,32),       
     
-- Q1 Sociologia Contemporânea - Sociologia
    ('2015','UEMA',null,
     'As novas tecnologias de comunicação têm moldado a vida moderna, a exemplo da situação expressa na charge.',
	 'Soc-Contemporanea','imgQ1',33),
     
-- Q2 Sociologia Contemporânea - Sociologia
	('2014','INEP','ENEM',
     'As redes sociais tornaram-se espaços importantes de relacionamento e comunicação. A charge apresenta o impacto da internet na vida dos indivíduos quando faz referência à',
	 null,null,33),  
     
-- Q3 Sociologia Contemporânea - Sociologia
	('2013','UFU',NULL,
     'A sociedade em rede ou sociedade da informação introduziu nas Ciências Sociais a noção de Ciberespaço como um locus virtual criado pela conjunção de diferentes tecnologias de telecomunicação e telemática, ou seja, como um espaço criado pelas comunicações mediadas por computador, cujo principal veículo contemporâneo é, sem dúvida, a internet. Sua consequência mais imediata foi a criação de novas redes de sociabilidade e, por isso, o ciberespaço tem, como característica essencial ser:',
	 null,null,33),  
     
-- Q4 Sociologia Contemporânea - Sociologia
	('2012','INEP','ENEM',
     'Regulamentação publicada nesta segunda-feira, no Diário Oficial do Município do Rio, determina que as crianças e adolescentes apreendidos nas chamadas cracolândias fiquem internados para tratamento médico, mesmo contra a vontade deles ou dos familiares. Os jovens, segundo a Secretaria Municipal de Assistência Social (Smas), só receberão alta quando estiverem livres do vício. A “internação compulsória” vale somente para aqueles que, na avaliação de um especialista, estiverem com dependência química. Ainda de acordo com a resolução, todas as crianças e adolescentes que forem acolhidos à noite, “independentemente de estarem ou não sob a influência do uso de drogas”, não poderão sair do abrigo até o dia seguinte. (www.estadao.com.br, 30.05.2012. Adaptado.) As justificativas apresentadas neste texto para legitimar a “internação compulsória” de usuários de drogas são norteadas por:',
	 null,null,33),  
     
-- Q5 Sociologia Contemporânea - Sociologia
	('2013','INEP','ENEM',
     'A charge revela uma crítica aos meios de comunicação, em especial à internet, porque',
	 'Soc-Contemporanea','imgQ5',33);     


#drop table tbQuestao;

insert into tbAlternativa(texto,correta,cod_questao)
values

-- Alternativas da Q1- Arte Moderna de Artes 
/*A*/('luta do proletariado soviético para sua emancipação do sistema vigente.',
	 false,1),
     
/*B*/('trabalhador soviético retratado de acordo com a realidade do período.',
	 false,1),
     
/*C*/('exaltação idealizada da capacidade de trabalho do povo soviético.',
	 true,1),
     
/*D*/('união de operários e camponeses soviéticos pela volta do regime czarista.',
	 false,1),
     
/*E*/('sofrimento de trabalhadores soviéticos pela opressão do regime stalinista.',
	 false,1),

-- Alternativas da Q2- Arte Moderna de Artes 
/*A*/('da intimidade, da política e do corpo.',
	 false,2),
     
/*B*/('do público, da ironia e da dor.',
	 false,2),
     
/*C*/('do espaço urbano. da intimidade e do drama.',
	 false,2),
     
/*D*/('da moda, do drama e do humor.',
	 false,2),
     
/*E*/('do corpo, da provocação e da moda.',
	 true,2),
     
-- Alternativas da Q3- Arte Moderna de Artes 
/*A*/('dispensa a representação da realidade.',
	 false,3),
     
/*B*/('agrega elementos da publicidade em suas composições.',
	 false,3),
     
/*C*/('valoriza a composição dinâmica para representar movimento.',
	 false,3),
     
/*D*/('busca uma composição reduzida e seus elementos primários de forma.',
	 false,3),
     
/*E*/('explora a sobreposição de planos geométricos e fragmentos de objetos.',
	 true,3),

-- Alternativas da Q4- Arte Moderna de Artes 
/*A*/('imagem passa a valer mais que as formas vanguardistas.',
	 false,4),
     
/*B*/('forma estética ganha linhas retas e valoriza o cotidiano.',
	 true,4),
     
/*C*/('natureza passa a ser admirada como um espaço utópico.',
	 false,4),
     
/*D*/('imagem privilegia uma ação moderna e industrializada.',
	 false,4),
     
/*E*/('forma apresenta contornos e detalhes humanos.',
	 false,4),

-- Alternativas da Q5- Arte Moderna de Artes 
/*A*/('buscaram libertar a arte brasileira das normas acadêmicas europeias, valorizando as cores, a originalidade e os temas nacionais.',
	 true,5),
     
/*B*/('defenderam a liberdade limitada de uso da cor, até então utilizada de forma irrestrita, afetando a criação artística nacional.',
	 false,5),
     
/*C*/('representaram a ideia de que a arte deveria copiar fielmente a natureza, tendo como finalidade a prática educativa.',
	 false,5),
     
/*D*/('mantiveram de forma fiel a realidade nas figuras retratadas, defendendo uma liberdade artística ligada a tradição acadêmica.',
	 false,5),
     
/*E*/('buscaram a liberdade na composição de suas figuras, respeitando limites de temas abordados.',
	 false,5),   

-- Alternativas da Q1- História da arte
/*A*/('confessa ter seguido modelos externos para compor seus livros.',
	 false,6),
     
/*B*/('nega ter se inspirado no sentimento para compor suas obras.',
	 false,6),
     
/*C*/('segue uma das fontes de inspiração do romantismo.',
	 true,6),
     
/*D*/('acusa Cooper de ter copiado Chateaubriand.',
	 false,6),
     
/*E*/('apresenta uma espécie de manifesto nacionalista.',
	 false,6),

-- Alternativas da Q2- História da arte
/*A*/('Renascentista',
	 false,7),
     
/*B*/('Gótico',
	 true,7),
     
/*C*/('Românico',
	 false,7),
     
/*D*/('Bizantino',
	 false,7),
     
/*E*/('Barroco',
	 false,7),

-- Alternativas da Q3- História da arte 
/*A*/('Machado de Assis - Filosofia de um Par de Botas José de Alencar - O Guarani',
	 false,8),
     
/*B*/('Ariano Suassuna - O Auto da Compadecida Graciliano Ramos - Vidas Secas',
	 true,8),
     
/*C*/('Chico Buarque - A Rita Vila Lobos - O Guarani ',
	 false,8),
     
/*D*/('Gregório de Matos- Boca do Inferno Victor Meireles – Moema',
	 false,8),
     
/*E*/('Fernando Sabino - De Cabeça para Baixo Benedito Calixto - O Poema de Anchieta',
	 false,8),

-- Alternativas da Q4- História da arte 
/*A*/('Sonetos parnasianos e música de câmara.',
	 false,9),
     
/*B*/('Poesia concreta e música armorial.',
	 false,9),
     
/*C*/('Literatura de cordel e cantorias.',
	 true,9),
     
/*D*/('Literatura erudita e canto coral.',
	 false,9),
     
/*E*/('Poesia simbolista e samba.',
	 false,9),

-- Alternativas da Q5- História da arte 
/*A*/('Sonetos parnasianos e música de câmara.',
	 false,10),
     
/*B*/('Poesia concreta e música armorial.',
	 false,10),
     
/*C*/('Literatura de cordel e cantorias.',
	 true,10),
     
/*D*/('Literatura erudita e canto coral.',
	 false,10),
     
/*E*/('Poesia simbolista e samba.',
	 false,10),   

-- Alternativas da Q1- Renascimento de Artes  
/*A*/('a imitação das formas artísticas medievais e a ênfase na natureza espiritual de Cristo.',
      false,11),
      
/*B*/('a preocupação intensa com a forma artística e a ausência de significado religioso do quadro.',
      false,11),
      
/*C*/('a disposição da figura de Cristo em perspectiva geométrica e o conteúdo realista da composição.',
      true,11),
      
/*D*/('a gama variada de cores luminosas e a concepção otimista de uma humanidade sem pecado.',
       false,11),
       
/*E*/('a idealização do corpo do Salvador e a noção de uma divindade desvinculada dos dramas humanos.',
      false,11),
      
-- Alternativas da Q2- Renascimento de Artes 
/*A*/('Iluminismo.',false,12),
/*B*/('Renascimento.',true,12),
/*C*/('Feudalismo.',false,12),
/*D*/('Cruzadas.',false,12),
/*E*/('Reforma.',false,12),

-- Alternativas da Q3- Renascimento de Artes 
/*A*/('medieval e cavalheiresca.',false,13),
/*B*/('medieval e teocêntrica.',false,13),
/*C*/('classicista e modernista.',false,13),
/*D*/('renascentista e antropocêntrica.',true,13),
/*E*/('renascentista e ateísta.',false,13),

-- Alternativas da Q4- Renascimento de Artes 
/*A*/('Encomendados pelo papa Júlio II, os afrescos da Capela Sistina trazem como tema primordial a cultura clássica, em especial sua rica mitologia.',
	 false,14),
     
/*B*/('Passagens do Velho Testamento também aparecem representadas na obra, segundo atesta a imagem.',
	 true,14),
     
/*C*/('Parte dos afrescos do teto da Capela Sistina foi destruída por um terremoto, no fim do século XIX.',
	 false,14),
     
/*D*/('Esses afrescos constituem a obra máxima de Michelangelo cuja produção artística se limitava à pintura.',
	 false,14),
     
/*E*/('A pintura da abóbada da capela nunca foi finalizada por Michelangelo.',
	 false,14),

-- Alternativas da Q5- Renascimento de Artes 
/*A*/('A expansão marítima europeia dos séculos XV e XVI, rompendo os estreitos limites do comércio medieval.',
	 false,15),
     
/*B*/('A centralização do poder nas mãos do rei, totalmente diferente do poder pulverizado dos senhores feudais.',
	 false,15),
     
/*C*/('O surgimento de uma nova cultura, mais urbana e laica, em oposição à cultura rural-religiosa do período medieval.',
	 false,15),
     
/*D*/('A busca de uma nova espiritualidade, possibilitando a ruptura da unidade cristã a partir da Reforma Religiosa.',
	 false,15),
     
/*E*/('A ocupação do poder político pela burguesia, baseada no crescente enriquecimento econômico dessa classe social.',
	 true,15),      

-- Alternativas da Q1- Bioquímica de Biologia
/*A*/('são heterozigotos e devem seguir uma dieta com algumas restrições lipídicas.',
      false,16),
      
/*B*/('são homozigotos e devem seguir uma dieta com algumas restrições proteicas.',
      true,16),
      
/*C*/('podem ser heterozigotos ou homozigotos e sua dieta deve ser rica em proteínas. ',
      false,16),
      
/*D*/('podem ser heterozigotos ou homozigotos e devem evitar proteínas e lipídios.',
	  false,16),

-- Alternativas da Q2- Bioquímica de Biologia
/*A*/('proteína.',
	 false,17),
     
/*B*/('lipídeo.',
	 false,17),
     
/*C*/('ácido nucleico.',
	 true,17),
     
/*D*/('carboidrato.',
	 false,17),
     
-- Alternativas da Q3- Bioquímica de Biologia
/*A*/('inflamação nas juntas e má formação óssea.',
	 true,18),
     
/*B*/('regeneração e cicatrização dos tecidos.',
	 false,18),
     
/*C*/('combate à flacidez cutânea e muscular.',
	 false,18),
     
/*D*/('fortalecimento das unhas e crescimento capilar',
	 false,18),
     
/*E*/('prevenção ao aparecimento da osteoporose.',
	 false,18),

-- Alternativas da Q4- Bioquímica de Biologia
/*A*/('isolantes elétricos.',false,19),
/*B*/('pouco biodegradáveis.',false,19),
/*C*/('saturados de hidrogênios.',false,19),
/*D*/('majoritariamente hidrofóbicos.',true,19),
/*E*/('componentes das membranas.',false,19),

-- Alternativas da Q5- Bioquímica de Biologia
/*A*/('os lipídios, como os óleos e as gorduras, são abundantes em todos os componentes desse cardápio.',
	 false,20),
     
/*B*/('a celulose, um tipo de glicídio encontrado na salada, é importante fonte de energia para o organismo humano.',
	false,20),
		
/*C*/('o amido, um importante nutriente energético, é encontrado exclusivamente no macarrão e no arroz.',
	 false,20),
     
/*D*/('as vitaminas, nutrientes reguladores, não estão presentes nessa refeição.',
	 false,20),
     
/*E*/('as proteínas, nutrientes estruturais, são encontradas no frango e no feijão.',
	 true,20),         
      
-- Alternativas da Q1- Ecologia de Biologia
/*A*/('Apenas os heterótrofos dependem de compostos químicos do ambiente para gerar energia.',
	 false,21),
		
/*B*/('Somente os heterótrofos precisam de oxigênio para produzir ATP.',
	 false,21),
     
/*C*/('Apenas os heterótrofos possuem mitocôndrias.',
	 false,21),
     
/*D*/('Somente os autótrofos produzem energia utilizando, inicialmente, CO2 e outros compostos inorgânicos.',
	 true,21),
     
/*E*/('Os heterótrofos, mas não os autótrofos, realizam respiração celular.',
	 false,21),

-- Alternativas da Q2- Ecologia de Biologia
/*A*/('metabolismo diferenciado dos herbívoros.',
	 false,22),
		
/*B*/('fato dos vegetais serem de fácil digestão.',
	 false,22),
     
/*C*/('eliminação excessiva de fibras de celulose não digeridas nas fezes dos herbívoros.',
	 true,22),
     
/*D*/('fato dos herbívoros estarem mais no início da cadeia alimentar.',
	 false,22),     

-- Alternativas da Q3- Ecologia de Biologia
/*A*/('produtores − produtores',
	 false,23),
     
/*B*/('consumidores primários − produtores',
	 false,23),
     
/*C*/('produtores − consumidores primários',
	 true,23),
     
/*D*/('consumidores primários − consumidores primários',
	 false,23),

-- Alternativas da Q4- Ecologia de Biologia
/*A*/('o ciclo da água ou ciclo hidrológico é afetado pelos processos de evaporação e precipitação, bem como pela interferência dos seres vivos ao terem a água fluindo através das teias alimentares.',
	 true,24),
     
/*B*/('o ciclo do fósforo independe da ação de micro-organismos de solo, pois o maior reservatório desse elemento no planeta é a atmosfera.',
	 false,24),
     
/*C*/('o principal processo envolvido no ciclo do carbono é a respiração, por meio do qual o carbono presente na molécula de CO2 é fixado e utilizado na síntese de moléculas orgânicas.',
	 false,24),
     
/*D*/('o ciclo do nitrogênio é considerado mais simples do que os demais ciclos, pois não há passagem de átomos desse elemento pela atmosfera.',
	 false,24),
     
/*E*/('no ciclo do oxigênio, a única fonte importante desse elemento, que circula entre a biosfera e o ambiente físico, é o gás O2.',
	 false,24),

-- Alternativas da Q5- Ecologia de Biologia
/*A*/('termófilos são organismos que vivem em ambientes com temperaturas extremamente baixas, como nas fontes hidrotermais oceânicas de origem antártica.',
	 false,25),
     
/*B*/('halófilos são seres que sobrevivem em elevadas concentrações de sais.',
	 true,25),
     
/*C*/('barófilos são organismos que vivem a pressões muito baixas, como nas fossas submarinas, em grandes profundidades.',
	 false,25),
     
/*D*/('acidófilos e alcalófilos são os seres vivos que habitam meios muito básicos e muito ácidos, respectivamente.',
	 false,25),
      
-- Alternativas da Q1- Genética de Biologia
/*A*/('autossômica dominante.',true,26),
/*B*/('autossômica recessiva.',false,26),
/*C*/('ligada ao X dominante.',false,26),
/*D*/('ligada ao X recessiva.',false,26),
/*E*/('autossômica codominante.',false,26),

-- Alternativas da Q2- Genética de Biologia
/*A*/('É uma herança dominante ligada ao sexo e transfere-se de pai para neto, por meio do filho.',
	 false,27),
     
/*B*/('É uma doença de herança autossômica dominante.',
	 false,27),
     
/*C*/('A doença é causada por uma anomalia hereditária que se deve à presença de um gene recessivo ligado ao sexo.',
	 true,27),
     
/*D*/('A doença é de herança ligada ao sexo, com gene dominante localizado no cromossomo Y.',
	 false,27),
     
/*E*/('A transmissão da doença é autossômica recessiva e promove uma anomalia correspondente a uma trissomia parcial.',
	 false,27),

-- Alternativas da Q3- Genética de Biologia
/*A*/('75%.',false,28),
/*B*/('100%.',false,28),
/*C*/('1/8.',false,28),
/*D*/('1/4.',true,28),

-- Alternativas da Q4- Genética de Biologia
/*A*/('fungos.',false,29),
/*B*/('plantas.',false,29),
/*C*/('animais.',false,29),
/*D*/('bactérias.',true,29),

-- Alternativas da Q5- Genética de Biologia
/*A*/('metáfase I da gametogênese feminina.',
	 false,30),
     
/*B*/('diacinese da gametogênese masculina.',
	 false,30),
     
/*C*/('anáfase II da gametogênese feminina.',
	 false,30),
     
/*D*/('anáfase I da gametogênese masculina.',
	 false,30),
     
/*E*/('telófase II da gametogênese masculina.',
	 true,30),

-- Alternativas da Q1- Existencialismo de Filosofia
/*A*/('consciência de si e angústia humana.',
      true,31),
      
/*B*/('inevitabilidade do destino e incerteza moral.',
      false,31),
      
/*C*/('tragicidade da personagem e ordem do mundo.',
      false,31),
      
/*D*/('racionalidade argumentativa e loucura iminente.',
      false,31),
      
/*E*/('dependência paterna e impossibilidade de ação.',
      false,31),
      
-- Alternativas da Q2- Existencialismo de Filosofia
/*A*/('desenvolver a ideia de que o existencialismo é definido pela livre escolha e valores inventados pelo sujeito a partir dos quais ele exerce a sua natureza humana essencial.',
	 false,32),
     
/*B*/('mostrar o significado ético do existencialismo.',
	 true,32),
     
/*C*/('criticar toda a discriminação imposta pelo cristianismo, através do discurso, à condição de ser inexorável, característica natural dos homens.',
	 false,32),
     
/*D*/('delinear os aspectos da sensação e da imaginação humanas que só se fortalecem a partir do exercício da liberdade.',
	 false,32),     

-- Alternativas da Q3- Existencialismo de Filosofia
/*A*/('o cogito cartesiano desabou sobre o existencialismo na mesma proporção com que a virtu socrática precipitou-se sobre o materialismo dialético do século XX.',
	 false,33),

/*B*/('Penso, logo existo” deve ser o ponto de partida de qualquer filosofia. Tal subjetividade faz com que o Homem não seja visto como objeto, o que lhe confere verdadeira dignidade. A descoberta de si mesmo o leva, necessariamente, à descoberta do outro, implicando uma intersubjetividade.',
	 true,33),
     
/*C*/('o Homem é dado, é unidade, é união e é intersubjetividade; portanto, a sua existência é agregadora e desapegada da tão apregoada subjetividade clássica, por isso mesmo tão crucial para Sartre.',
	 false,33),
     
/*D*/('não há um só lampejo de subjetividade que não tenha se reinaugurado na intersubjetividade, isto é, na idealidade que instrui as prerrogativas para se instalarem as escolhas do sujeito, definindo-o.',
	 false,33),
     
-- Alternativas da Q4- Existencialismo de Filosofia
/*A*/('tudo o que a influência de Shopenhauer determina em Sartre: a certeza da morte. O Homem pode ser livre para fazer suas escolhas, mas não tem como se livrar da decrepitude e do fim.',
	 false,34),
     
/*B*/('a nadificação de nossos projetos e a certeza de que a relação Homem X natureza humana é circunstancial, objetiva, e pode ser superada pelo simples ato de se fazer uma escolha.',
	 false,34),
     
/*C*/('a certificação de que toda a experiência humana é idealmente sensorial, objetivamente existencial e determinante para a vida e para a morte do Homem em si mesmo e em sua humanidade.',
	 false,34),
     
/*D*/('consequência da responsabilidade que o Homem tem sobre aquilo que ele é, sobre a sua liberdade, sobre as escolhas que faz, tanto de si como do outro e da humanidade, por extensão.',
	 true,34),

-- Alternativas da Q5- Existencialismo de Filosofia
/*A*/('reconhece a importância de Diderot, Voltaire e Kant e repercute a interferência positiva destes na noção de que cada homem é um exemplo particular no universo.',
	 false,35),
     
/*B*/('faz a inversão da noção essencialista ao apregoar que o Homem primeiramente existe, se descobre, surge no mundo e só após isso se define. Assim, não há natureza humana, pois não há Deus para concebê-la.',
	 true,35),
     
/*C*/('inaugura uma nova ordem político-social, segundo a qual o Homem nada mais é do que um projeto que se lança numa natureza essencialmente humana.',
	 false,35),
     
/*D*/('diz que ser ateu é mais coerente apesar de reconhecer no Homem uma virtu que o filia, definitivamente, a uma consciência a priori infinita.',
	 false,35),     

-- Alternativas da Q1- Iluminismo de Filosofia
/*A*/('apontou a necessidade de limitar a liberdade individual para impedir que o excesso degenerasse em anarquismo.',
	false,36),
    
/*B*/('acentuou que o Estado não possui poder ilimitado, o qual nada mais é do que a somatória do poder dos membros da sociedade.',
	true,36),
    
/*C*/('visou defender a tese de que apenas a federalização política é compatível com a democracia orgânica.',
      false,36),
      
/*D*/('mostrou que, sem centralização e dependência dos poderes ao Executivo, não há paz social.',
	 false,36),
     
/*E*/('procurou salientar que a sociedade industrial somente se desenvolverá a partir de minucioso planejamento econômico.',
	false,36),
    
-- Alternativas da Q2- Iluminismo de Filosofia
/*A*/('os três pensadores defendem o liberalismo clássico. ',
	 false,37),
     
/*B*/('as três ideias propõem a ditadura do proletariado.',
	 false,37),
     
/*C*/('Adam Smith propõe o liberalismo clássico, Thomas Malthus e Karl Marx, o socialismo utópico.',
	 false,37),
     
/*D*/('Thomas Malthus e Adam Smith defendem o pensamento liberal clássico e Karl Marx foi um dos autores do socialismo científico.',
	 true,37),
     
/*E*/('Karl Marx e Adam Smith são considerados anarquistas, e Thomas Malthus, socialista utópico.',
	 false,37),

-- Alternativas da Q3- Iluminismo de Filosofia
/*A*/('define, com suas ideias, os interesses da burguesia como classe, no século XVIII: o comércio como condição para a acumulação de capital, a riqueza como fator de liberdade e do poder de Estado e a propriedade ligada à desigualdade.',
	 true,38),
     
/*B*/('crê, como filósofo iluminista do século XVIII, nas igualdades social e política, pois a filosofia burguesa elabora uma doutrina universalista que confunde a causa da burguesia com a de toda a humanidade.',
	 false,38),
     
/*C*/('critica a centralização do poder na medida em que ela breca a liberdade, impedindo o progresso das técnicas e a expansão do comércio que geram riqueza, e, ao mesmo tempo, aceita a propriedade como fundamento da igualdade.',
	 false,38),
     
/*D*/('considera que a burguesia não se constitui em uma classe no século XVIII, e ela precisa do poder do Estado centralizado para garantir a sua riqueza e, nessa medida, aproxima-se da nobreza para obter apoio político.',
	 false,38),
     
/*E*/('defende, como representante da Ilustração, a liberdade ligada à ausência da propriedade e elabora princípios universais, com direitos e deveres para todos os homens, o que faz a igualdade econômica ser o fundamento da sociedade.',
	 false,38),

-- Alternativas da Q4- Iluminismo de Filosofia
/*A*/('se somente a afirmativa I estiver correta.',false,39),
/*B*/('se somente as afirmativas I e II estiverem corretas.',true,39),
/*C*/('se somente as afirmativas I e III estiverem corretas.',false,39),
/*D*/('se somente as afirmativas II e III estiverem corretas.',false,39),
/*E*/('se todas as afirmativas estiverem corretas.',false,39),

-- Alternativas da Q5- Iluminismo de Filosofia
/*A*/('I, II e III corretas, enquanto IV incorreta.',false,40),
/*B*/('IV correta, enquanto I, II e III incorretas.',false,40),
/*C*/('II e III corretas, enquanto I e IV incorretas.',false,40),
/*D*/('II correta, enquanto I, II e IV incorretas.',false,40),
/*E*/('I e IV corretas, enquanto II e III incorretas.',true,40),     
    
-- Alternativas da Q1- Politica de Filosofia
/*A*/('entravam em conflito.',true,41),
/*B*/('recorriam aos clérigos.',false,41),
/*C*/('consultavam os anciãos.',false,41),
/*D*/('apelavam aos governantes.',false,41),
/*E*/('exerciam a solidariedade.',false,41),

-- Alternativas da Q2- Politica de Filosofia
/*A*/('ético, devido ao comportamento irracionalista que é assumido pelos indivíduos.',
	 false,42),
     
/*B*/('moral, pois o fenômeno é abordado como resultado de comportamentos desregrados.',
	 false,42),
     
/*C*/('pragmático, pois é considerada, sobretudo, a avaliação dos efeitos práticos das ações.',
	 true,42),
     
/*D*/('jurídico, pois é necessária uma legislação mais rigorosa para coibir o fenômeno',
	 false,42),
     
/*E*/('materialista, pois suas causas relacionam-se com a estrutura do sistema capitalista.',
	 false,42), 

-- Alternativas da Q3- Politica de Filosofia
/*A*/('Somente as afirmativas II e III são verdadeiras.',
	 true,43),
    
/*B*/('Todas as afirmativas são verdadeiras.',
	 false,43),
     
/*C*/('Somente as afirmativas I e IV são verdadeiras',
	 false,43),
     
/*D*/('Somente as afirmativas II, III e V são verdadeiras.',
	 false,43),
     
/*E*/('Somente as afirmativas I, II e V são verdadeiras.',
	 false,43), 

-- Alternativas da Q4- Politica de Filosofia
/*A*/('munido de virtude, com disposição nata a praticar o bem a si e aos outros.',
	 false,44),
     
/*B*/('possuidor de fortuna, valendo-se de riquezas para alcançar êxito na política.',
	 false,44),
     
/*C*/('guiado por interesses, de modo que suas ações são imprevisíveis e inconstantes.',
	 true,44),
     
/*D*/('naturalmente racional, vivendo em um estado pré-social e portando seus direitos naturais.',
	 false,44),
     
/*E*/('sociável por natureza, mantendo relações pacíficas com seus pares.',
	 false,44), 

-- Alternativas da Q5- Politica de Filosofia
/*A*/('ao status de cidadania que o indivíduo adquire ao tomar as decisões por si mesmo.',
	 false,45),
     
/*B*/('ao condicionamento da liberdade dos cidadãos à conformidade às leis.',
	 true,45),
     
/*C*/('à possibilidade de o cidadão participar no poder e, nesse caso, livre da submissão às leis.',
	 false,45),
     
/*D*/('ao livre-arbítrio do cidadão em relação àquilo que é proibido, desde que ciente das consequências.',
	 false,45),

-- Alternativas da Q1- Cal de Física
/*A*/('é sempre maior que zero',false,46),
/*B*/('é sempre menor que zero',false,46),
/*C*/('varia conforme o estado de agregação da substância',false,46),
/*D*/('é sempre constante à mesma pressão',true,46),
/*E*/('varia independentemente do estado de agregação da substância',false,46),

-- Alternativas da Q2- Cal de Física
/*A*/('o gelo irá transferir frio para a água.',false,47),
/*B*/('a água irá transferir calor para o gelo.',true,47),
/*C*/('o gelo irá transferir frio para o meio ambiente.',false,47),
/*D*/('a água irá transferir calor para o meio ambiente.',false,47),

-- Alternativas da Q3- Cal de Física
/*A*/('com febre alta, mais de 39°C.',false,48),
/*B*/('com temperatura menor que 36°C.',false,48),
/*C*/('com a temperatura normal de 36°C.',true,48),
/*D*/('com temperatura de 38°C.',false,48),
/*E*/('com temperatura de 34,6°C.',false,48), 

-- Alternativas da Q4- Cal de Física
/*A*/('400 g de água a 100°C e 100 g de vapor de água a 100°C.',
	 false,49),
     
/*B*/('300 g de água a 100°C e 200 g de vapor de água a 120°C.',
	 false,49),
     
/*C*/('500 g de água a 40°C.',
	 false,49),
     
/*D*/('500 g de água a 60°C.',
	 true,49),
     
/*E*/('500 g de água a 80°C.',
	 false,49), 

-- Alternativas da Q5- Cal de Física
/*A*/('dividimos a escala em 100 partes iguais.',
	 false,50),
     
/*B*/('associamos o zero da escala ao estado de energia cinética mínima das partículas de um sistema.',
	 true,50),
     
/*C*/('associamos o zero da escala ao estado de energia cinética máxima das partículas de um sistema.',
	 false,50),
     
/*D*/('associamos o zero da escala ao ponto de fusão do gelo.',
	 false,50),
     
-- Alternativas da Q1- Hidro de Física
/*A*/('50 rad/s',false,51),
/*B*/('100 rad/s',true,51),
/*C*/('150 rad/s',false,51),
/*D*/('200 rad/s',false,51),
/*E*/('250 rad/s',false,51),

-- Alternativas da Q2- Hidro de Física
/*A*/('0,32',false,52),
/*B*/('0,40',false,52),
/*C*/('0,64',false,52),
/*D*/('0,80',true,52),
/*E*/('1,25',false,52), 

-- Alternativas da Q3- Hidro de Física
/*A*/('menor no recipiente que se encontra no Pico da Neblina.',
	 true,53),
     
/*B*/('menor no recipiente que se encontra no nível do mar.',
	 false,53),
     
/*C*/('menor do que 100ºC independentemente do local.',
	 false,53),
     
/*D*/('sempre 100ºC independentemente do local.',
	 false,53),
     
/*E*/('maior no recipiente no qual a fervura iniciou em menos tempo.',
	 false,53), 

-- Alternativas da Q4- Hidro de Física
/*A*/('0,4N',true,54),
/*B*/('1,2N',false,54),
/*C*/('3,2N',false,54),
/*D*/('3,6N',false,54),
/*E*/('4,0N',false,54), 

-- Alternativas da Q5- Hidro de Física
/*A*/('Entra em ebulição a uma temperatura superior a 100ºC.',true,55),
/*B*/('Entra em ebulição a uma temperatura inferior a 100ºC.',false,55),
/*C*/('Entra em ebulição a 100ºC.',false,55),
/*D*/('Não consegue entrar em ebulição.',false,55),

-- Alternativas da Q1- Ondas Eletro de Física
/*A*/('I, apenas.',false,56),
/*B*/('II, apenas.',true,56),
/*C*/('I e II, apenas.',false,56),
/*D*/('I e III, apenas.',false,56),
/*E*/('II e III, apenas.',false,56),

-- Alternativas da Q2- Ondas Eletro de Física
/*A*/('o período da onda é L.',false,57),
/*B*/('o comprimento da onda é L/3.',false,57),
/*C*/('a velocidade instantânea do ponto D da corda é vertical e para baixo.',
	  true,57),
/*D*/('a amplitude da onda é L.',false,57),
/*E*/('a velocidade instantânea do ponto C da corda é nula',false,57), 

-- Alternativas da Q3- Ondas Eletro de Física
/*A*/('Somente a afirmativa I é verdadeira.',false,58),
/*B*/('Somente a afirmativa II é verdadeira.',false,58),
/*C*/('Somente a afirmativa III é verdadeira.',false,58),
/*D*/('Somente as afirmativas I e II são verdadeiras.',false,58),
/*E*/('Somente as afirmativas II e III são verdadeiras.',true,58), 

-- Alternativas da Q4- Ondas Eletro de Física
/*A*/('apenas ondas mecânicas - transversais - já que estas se propagam, tanto no vácuo como no ar.',
	 false,59),
     
/*B*/('apenas ondas eletromagnéticas - longitudinais - já que estas se propagam, tanto no vácuo como no ar.',
	 false,59),
		
/*C*/('ondas eletromagnéticas - transversais - que apresentam as mesmas frequências, velocidade e comprimento de onda, ao passar de um meio para outro.',
	 false,59),
     
/*D*/('ondas mecânicas - transversais - que apresentam as mesmas frequências, velocidade e comprimento de onda, ao passar de um meio para outro.',
	 false,59),
     
/*E*/('tanto ondas eletromagnéticas - transversais - que se propagam no vácuo, como ondas mecânicas - longitudinais - que necessitam de um meio material para a sua propagação.',
	 true,59),  

-- Alternativas da Q5- Ondas Eletro de Física
/*A*/('Raios X são as únicas ondas que não são visíveis.',
	 false,60),
     
/*B*/('Raios gama são as únicas ondas transversais.',
	 false,60),
     
/*C*/('Ondas de rádio são as únicas ondas que transportam energia.',
	 false,60),
     
/*D*/('Ondas sonoras são as únicas ondas longitudinais.',
	 true,60),
     
/*E*/('Ondas de luz são as únicas ondas que se propagam no vácuo com velocidade de 300000 km/s.',
	 false,60),  

-- Alternativas da Q1- Agropecuaria de Geo
/*A*/('agricultura camponesa ocupa 24% das terras porque é formada por grandes propriedades rurais.',
	  false,61),
      
/*B*/('a agricultura camponesa ocupa 74% da mão de obra porque utiliza um grau de mecanização inferior ao agronegócio.',
	 true,61),
     
/*C*/('a agricultura camponesa prioriza a produção de commodities, por isso obtém o total de 14% do crédito agrícola brasileiro.',
     false,61),
     
/*D*/('o agronegócio obtém 86% do crédito porque suas terras têm baixa fertilidade e ocupam as encostas.',
	 false,61),
     
/*E*/('o agronegócio participa com 60% da produção global porque produz para o mercado interno brasileiro.',
     false,61),
     
-- Alternativas da Q2- Agropecuaria de Geo
/*A*/('Zona da Mata Nordestina – plantation açucareira',true,62),
/*B*/('Depressão sertaneja – atividade mineradora',false,62),
/*C*/('Tabuleiros sublitorâneos – pecuária extensiva',false,62),
/*D*/('Depressão sanfranciscana – exploração extrativista',false,62),

-- Alternativas da Q3- Agropecuaria de Geo
/*A*/('De subsistência e patronal.',false,63),
/*B*/('Familiar e itinerante.',false,63),
/*C*/('Patronal e familiar.',true,63),
/*D*/('Familiar e de subsistência.',false,63),
/*E*/('Itinerante e patronal.',false,63),  

-- Alternativas da Q4- Agropecuaria de Geo
/*A*/('Areia, que apresenta um dos mais belos e ricos acervos arquitetônicos da Paraíba, cujo teatro Minerva, o mais antigo do Estado, simboliza a rica cultura advinda com essa produção.',
	 false,64),
     
/*B*/('Bananeiras, em cuja paisagem ainda se destaca a imponente igreja, colégios e rico casario, patrimônios arquitetônicos que atestam esse período áureo.',
	 true,64),
     
/*C*/('Alagoa Grande, cuja importância econômica manteve a cidade na vanguarda cultural, com cinemas e até um importante teatro, o Santa Ignêz, inaugurado no início do século XX.',
	 false,64),
     
/*D*/('Araruna, cidade surgida da antiga propriedade de um barão, o qual, em virtude do clima ameno de altitude, estabeleceu em sua fazenda imensos cafezais em meados do século XIX.',
	 false,64),
     
/*E*/('Campina Grande, cujo volume de produção motivou a chegada do trem em 1907, acontecimento que contribuiu para que a cidade se tomasse a mais importante do interior paraibano.',
	 false,64), 

-- Alternativas da Q5- Agropecuaria de Geo
/*A*/('criação de área turística',false,65),
/*B*/('formação de distrito industrial',false,65),
/*C*/('ampliação de reserva ambiental',false,65),
/*D*/('expansão da fronteira agropecuária',true,65),
     
-- Alternativas da Q1- Geopolitica de Geo
/*A*/('os países membros impuseram, como condição para a volta de Cuba à OEA, o cumprimento do acordo de fechamento da prisão de Guantánamo.',
	  false,66),
      
/*B*/('o retorno de Cuba à OEA deve resultar de um processo de diálogo a pedido do próprio governo cubano.',
	 true,66),
     
/*C*/('a atual decisão da OEA foi criticada por países da América do Sul que não fazem parte dessa organização como, por exemplo, Venezuela e Bolívia.',
     false,66),
     
/*D*/('o Brasil não participou da decisão da OEA, em junho de 2009, mantendo-se alheio ao processo de diálogo e de negociação com Cuba.',
	 false,66),
      
/*E*/('os EUA retiraram-se do processo de discussão da referida Resolução por discordarem da readmissão de Cuba à OEA.',
      false,67),
      
-- Alternativas da Q2- Geopolitica de Geo
/*A*/('Turquia – Relação de belicosidade latente com países próximos em decorrência do fim do Império Otomano.',
	  false,67),
      
/*B*/('Israel – Relação de belicosidade latente com países próximos em decorrência dos conflitos árabe-israelenses.',
	 true,67),
     
/*C*/('Líbano – Relação de belicosidade latente com países próximos em decorrência de ter sido parte do Império Colonial Francês.',
	 false,67),
     
/*D*/('Moldávia – Relação de belicosidade latente com países próximos em decorrência da extinção da União Soviética.',
	 false,67),
     
-- Alternativas da Q3- Geopolitica de Geo
/*A*/('o Mercosul, que visa estreitar as relações com os países do Cone Sul.',
	  false,68),
      
/*B*/('o Nafta, que busca aproximar os países da América do Norte e Central. ',
	 false,68),
     
/*C*/('o Pacto Andino, que surge do chamado Acordo de Cartagena, com objetivo de integração econômica.',
	 false,68),
     
/*D*/('a Unasul, que objetiva criar mecanismos de proteção aos países da América do Sul.',
	 false,68),
     
/*E*/('a Alba, que propõe a unificação política e econômica entre os países da América do Sul e da América Central.',
	 true,68),  

-- Alternativas da Q4- Geopolitica de Geo
/*A*/('O Nafta é um bloco econômico que reúne países do continente norte-americano e substituiu a OEA.',
	 false,69),
     
/*B*/('As organizações financeiras internacionais, como o FMI, o Bird e o Gatt, perderam importância na nova conjuntura multipolar.',
	 false,69),
     
/*C*/('O Mercosul, bloco formado por Argentina, Brasil, Paraguai e Uruguai, eliminou as barreiras alfandegárias entres os países-membros e criou uma moeda única, que entrará em vigor a partir de 2010.',
	 false,69),
     
/*D*/('Os blocos de maior poderio econômico, tecnológico e político-diplomático são o americano, o europeu e o asiático.',
	 true,69),
     
/*E*/('Os dois maiores blocos, em número de países, são o Nafta e Mercosul.',
	 false,69), 

-- Alternativas da Q5- Geopolitica de Geo
/*A*/('China e Índia.',false,70),
/*B*/('Paquistão e China.',false,70),
/*C*/('Paquistão e Índia.',true,70),
/*D*/('Índia, Paquistão e Afeganistão.',false,70),
/*E*/('China, Índia e Paquistão.',false,70),       

-- Alternativas da Q1- Oriente Médio de Geo
/*A*/('Os estados europeus se utilizam de artifícios diversos para conquistar países em outros continentes.',
	 false,71),
     
/*B*/('Os países árabes conseguiram definir uma brecha no protecionismo europeu, criando conflitos civis fictícios.',
	 false,71),
     
/*C*/('Os terroristas podem se aproveitar do enorme fluxo de refugiados das guerras civis dos países árabes para entrarem na Europa.',
	 true,71),
     
/*D*/('Os países do Leste europeu são os mais prejudicados com o fluxo de refugiados das guerras civis por estarem na fronteira continental.',
     false,71),
     
/*E*/('Os signatários dos Acordos de Schengen são os que mais criam problemas para a entrada dos refugiados sírios no continente europeu por via terrestre e marítima.',
     false,71),
     
-- Alternativas da Q2- Oriente Médio de Geo
/*A*/('Arábia Saudita apoia Assad e combate os rebeldes sunitas.',
	  false,72),
      
/*B*/(' O Irã combate Assad e apoia o grupo radical “Estado Islâmico”.',
	 false,72),
     
/*C*/('Os Estados Unidos são aliados de Assad e ajudam a combater os grupos rebeldes moderados.',
	 false,72),
     
/*D*/('A Rússia opõe-se a Assad e apoia os grupos rebeldes moderados.',
	 false,72),
     
/*E*/('O grupo radical “Estado Islâmico” é combatido tanto pelo governo Assad, como pelos Estados Unidos, Irã e Rússia.',
	 true,72), 

-- Alternativas da Q3- Oriente Médio de Geo
/*A*/('o respeito a todas as orientações sexuais nos países que vivem sob regime islâmico e a perseguição a homossexuais no Paquistão e na Índia.',
	 false,73),
     
/*B*/('o apoio unânime dos grupos islâmicos ao atentado ao World Trade Center, em Nova Iorque, e a invasão militar norte-americana no Iraque.',
	 false,73),
     
/*C*/('a situação e os direitos das mulheres nos países do Ocidente e nas áreas em que prevalecem regimes políticos islâmicos.',
	 false,73),
     
/*D*/('a invasão norte-americana no Afeganistão e o apoio soviético ao regime liderado pelo Talibã naquele país.',
	 false,73),
     
/*E*/('os islâmicos que protestaram contra o atentado à redação do jornal Charlie Hebdo, em Paris, e a ação militar do Estado Islâmico.',
	 true,73), 

-- Alternativas da Q4- Oriente Médio de Geo
/*A*/('Na Síria, os deslocados internos marcham em direção aos territórios dominados por paquistaneses.',
	  false,74),
      
/*B*/('Na Somália, a facção do Estado Islâmico controla grande parte do país, expulsando os milicianos.',
	 false,74),
     
/*C*/('No Afeganistão, os deslocados internos migram para o norte em busca de emprego na mineração.',
	 false,74),
     
/*D*/(' Os refugiados da Síria fugiram, principalmente, em função da guerra civil que tenta derrubar Assad.',
	 true,74),
     
/*E*/('Os refugiados deixaram o Afeganistão devido à intensificação do recrutamento para o serviço militar.',
	 false,74), 

-- Alternativas da Q5- Oriente Médio de Geo
/*A*/('Árabe é uma expressão utilizada para expressar os costumes e a cultura muçulmana.',
	 false,75),
     
/*B*/('O Islamismo deve ser a religião oficial de qualquer nação que queira se tornar árabe.',
	 false,75),
     
/*C*/('Árabe refere-se à língua e muçulmano refere-se à religião.',
	 true,75),
     
/*D*/('As diferenças entre mundo árabe e mundo muçulmano são praticamente nulas e tais palavras podem ser utilizadas como sinônimas.',
	 false,75),
     
/*E*/('Árabe é o nome da região geográfica em que habitam os povos islâmicos.',
	 false,75),      

-- Alternativas da Q1 Independecia do Brasil de História  
/*A*/('equilíbrio dos poderes com o controle constitucional do Imperador e as ordens sociais privilegiadas.',
       false,76),
       
/*B*/('ampla participação política de todos os cidadãos, com exceção dos escravos.',
      false,76),

/*C*/('laicização do Estado por influência das ideias liberais.',
       false,76),

/*D*/('predominância do poder do imperador sobre todo o sistema através do Poder Moderador.',
       true,76),

/*E*/('autonomia das Províncias e, principalmente, dos Municípios, reconhecendo-se a formação regionalizada do país.',
	   false,76),
       
-- Alternativas da Q2 Independecia do Brasil de História 
/*A*/('Reconhecimento pioneiro dos Estados Unidos, impedindo a intervenção da força da Santa Aliança no Brasil.',
       false,77),
       
/*B*/('Reconhecimento imediato da Inglaterra, interessada exclusivamente no promissor mercado brasileiro.',
       false,77),
       
/*C*/('Desconfiança dos brasileiros, reforçada após o falecimento de D. João VI, de que o reconhecimento reunificaria os dois reinos.',
       false,77),
       
/*D*/('Reação das potências europeias às ligações privilegiadas com a Áustria, terra natal da Imperatriz.',
       false,77),
       
/*E*/('Expectativa das potências europeias, que aguardavam o reconhecimento de Portugal, fiéis à política internacional traçada a partir do Congresso de Viena.',
       true,77),
       
-- Alternativas da Q3 Independecia do Brasil de História 
/*A*/('o comércio de importação entrou em colapso com a vinda da Família Real (1808);',
      false,78),
      
/*B*/('os Estados Unidos faziam concorrência aos nossos produtos, especialmente o açúcar;',
      false,78),
       
/*C*/('os principais produtos de exportação - açúcar e algodão - não eram suficientes para o equilíbrio da balança comercial do país;',
      true,78),
      
/*D*/('o capitalismo inglês se recusava a fornecer empréstimos para a agricultura;',
       false,78),
       
/*E*/('o sistema bancário era praticamente inexistente, só tendo sido fundado o Banco do Brasil em 1850.',
      false,78),
      
-- Alternativas da Q4 Independecia do Brasil de História       
/*A*/('à mediação da França e dos Estados Unidos e à atribuição do título de Imperador Perpétuo do Brasil a D. João VI.',
       false,79),
       
/*B*/('à mediação da Espanha e à renovação dos acordos comerciais de 1810 com a Inglaterra.',
       false,79),
       
/*C*/('à mediação de Lord Strangford e ao fechamento das Cortes Portuguesas.',
       false,79),

/*D*/('à mediação da Inglaterra e à transferência para o Brasil de dívida em libras contraída por Portugal no Reino Unido.',
       true,79),
       
/*E*/('à mediação da Santa Aliança e ao pagamento à Inglaterra de indenização pelas invasões napoleônicas.',
       false,79),
       
-- Alternativas da Q5 Independecia do Brasil de História
/*A*/('liberal-conservador, que defendia a monarquia constitucional, a integridade territorial e o regime centralizado.',
      true,80),
      
/*B*/('maçônico, que pregava a autonomia provincial, o fortalecimento do executivo e a extinção da escravidão.',
       false,80),
       
/*C*/('liberal-radical, que defendia a convocação de uma Assembleia Constituinte, a igualdade de direitos políticos e a manutenção da estrutura social.',
       false,80),
       
/*D*/('cortesão, que defendia os interesses recolonizadores, as tradições monárquicas e o liberalismo econômico.',
       false,80),
       
/*E*/('liberal-democrático, que defendia a soberania popular, o federalismo e a legitimidade monárquica.',
       false,80),
 
-- Alternativas da Q1 - Revolução Francesa de História   
/*A*/('defesa do mercantilismo e do protecionismo comercial ingleses, ameaçados pela cobiça de outros impérios, sobretudo o francês.',
       false,81),
 
/*B*/('crítica à monarquia inglesa, vista, no contexto da expansão revolucionária francesa, como opressora 
       da própria sociedade inglesa.', 
       true, 81),

/*C*/('alegoria das pretensões francesas sobre a Inglaterra, já que Napoleão Bonaparte era frequentemente considerado, pela burguesia, um líder revolucionário ateu.',
       false,81),
 
/*D*/('apologia da monarquia e da igreja inglesas, contrárias à laicização da política e dos costumes típicos da Europa da época.', 
       false,81),
       
/*E*/('propaganda de setores comerciais ingleses, defensores dos monopólios comerciais e contrários ao livre-cambismo que, à época, ganhava força no país.',
       false,81),      
       
-- Alternativas da Q2 Revolução Francesa de História  
/*A*/('Abolição dos privilégios especiais do clero e da nobreza; Declaração dos Direitos do Homem e do Cidadão; subordinação da Igreja ao Estado; elaboração de uma constituição para a França; reformas administrativas e judiciárias; e ajuda à economia francesa.', 
       true,82),
	
/*B*/('Declaração Universal dos Direitos Humanos; elaboração do Edito de Nantes, que dava liberdade religiosa para os não católicos; criação do Banco da França; legalização da anexação dos territórios da margem esquerda do Reno; elaboração do Código Civil Francês.', 
       false,82),
       
/*C*/('Criação do Código Civil Francês; criação do Banco da França; elaboração da Declaração dos Direitos do Homem e do Cidadão; elaboração das primeiras leis trabalhistas que proibiam o trabalho infantil; concessão do direito ao voto às mulheres.', 
       false, 82),
      
/*D*/('Direito de voto para todos os homens, independente da renda; favorecimento de legislação que incentivava o capitalismo comercial; reforma do sistema educacional com a criação dos liceus clássicos e de ofícios; maior autonomia para as províncias históricas da França; criação de uma estrutura descentralizada de governo na França.', 
       false, 82),
       
/*E*/('Regulamentação das leis trabalhistas na França; extensão do direito de voto para todos os homens e mulheres maiores de 18 anos; reconhecimento do direito de minorias; criação do Código Civil; a França se tornou uma confederação descentralizada, dividida em cantões com alto grau de autonomia política; elaboração da Constituição Civil do Clero.', 
       false, 82),   

-- Alternativas da Q3 Revolução Francesa de História  
/*A*/('da pequena burguesia que, apesar das conquistas econômicas, via-se pressionada pelo aumento no custo de vida.', 
      true, 83),

/*B*/('dos camponeses, já que ambos lutavam pela abolição dos privilégios feudais no campo e posse de terras coletivas.',
      false,83),
      
/*C*/('dos membros do baixo clero, uma vez que lutavam por reformas sociais, mas não eram contra a liberdade religiosa.',
       false,83),

/*D*/('da classe dos girondinos, pois apesar das diferenças de classe, ambos os grupos eram politicamente moderados.',
      false,83),
      
-- Alternativas da Q4 Revolução Francesa de História        
/*A*/('Os sujeitos envolvidos na ação política representada na tela são homens do campo com seus instrumentos de ofício nas mãos.', 
       false,84),

/*B*/('O quadro evoca temas da Revolução Francesa, como a bandeira tricolor e a figura da Liberdade, mas retrata um ato político assentado na teoria bolchevique.',
      false,84),

/*C*/('O quadro mostra tanto o ideário da Revolução Francesa reavivado pelas lutas políticas de 1830 na França quanto a posição política do pintor.',
      true,84),
      
/*D*/('No quadro, vê-se uma barricada do front militar da guerra entre nobres e servos durante a Revolução Francesa, sendo que a Liberdade encarna os ideais aristocráticos.',
      false,84),

-- Alternativas da Q5 Revolução Francesa de História  
/*A*/('o julgamento e a execução de cidadãos suspeitos e o tabelamento do preço do pão.',
       true,85),
       
/*B*/('a prisão do rei e da rainha e a conquista e colonização de territórios no Norte da África.',
       false,85),
       
/*C*/('a vitória na guerra contra a Áustria e a Prússia e o fim do controle sobre os salários dos operários.',
       false,85),
       
/*D*/('a ascensão política dos principais comandantes militares e a implantação da monarquia constitucional.',
      false,85),
      
/*E*/('o início da perseguição e da repressão contra religiosos e a convocação dos Estados Gerais.',
       false,85),
     
-- Alternativas da Q1- Segunda Guerra de História  
/*A*/('crise mundial do petróleo e a flexibilização do trabalho.', false,86),
/*B*/('primeira grande crise do capital e as sequelas da Segunda Guerra Mundial.',true,86),
/*C*/('sequelas da Segunda Guerra Mundial e a flexibilização do trabalho.',false,86),
/*D*/('primeira grande crise do capital e a crise Mundial do petróleo.',false,86),

-- Alternativas da Q2 - Segunda Guerra de História  
/*A*/('Guerra Fria.' ,true,87),
/*B*/('Perestroika.', false,87),						
/*C*/('Glasnost.',false,87),
/*D*/('Holocausto. ',false,87),
/*E*/('Período Bipolar.',false,87),

-- Alternativas da Q3 - Segunda Guerra de História  
/*A*/('foram necessários para a construção de automóveis brasileiros durante a Segunda Guerra Mundial',
     false,88),
     
/*B*/('eram, em sua maioria, gaúchos',
     false,88),
     
/*C*/('eram os seringueiros que foram para a Amazônia durante a Segunda Guerra Mundial',
     true,88),
     
/*D*/('oram necessários para aumentar a produção de borracha no Brasil na Segunda Guerra Mundial, porque uma praga destruiu as seringueiras da Ásia',
     false,88),

-- Alternativas da Q4 - Segunda Guerra de História  
/*A*/('A Conferência de Potsdam definiu a internacionalização de Berlim e a divisão da Alemanha em duas áreas de influência: a área sob influência da União Soviética e a sob influência dos EUA.',
       false,89),

/*B*/('Embora combatido por liberais, trotskistas e social-democratas, o Pacto de Não-Agressão Germano-Soviético foi fundamental para retardar o início da Segunda Guerra Mundial.',
       false,89),

/*C*/('A política da Paz Armada desencadeada por Hitler, ainda que não necessariamente expansionista, abriu o caminho para a guerra, por gerar desconfiança e temor generalizados.', 
       false,89),

/*D*/('A Liga das Nações condenou a anexação da Áustria pela Alemanha nazista, tendo sido veemente o protesto da França e da Inglaterra, que romperam relações diplomáticas com Berlim.',
       false,89),

/*E*/('Em face de sua contribuição na luta contra o Reich nazista, a União Soviética teve o reconhecimento internacional reforçado na Conferência de Teerã e, em lalta, assegurou sua influência no Leste Europeu.', 
       true,89),

-- Alternativas da Q5 - Segunda Guerra de História   
/*A*/('A crise cambial de 1952 resultou, entre outros fatores, da defasagem entre a concessão de licenças e a efetivação das importações, da queda das exportações de algodão decorrente da crise da indústria têxtil mundial e da quebra da safra de trigo nos EUA, que obrigou o governo brasileiroa importar da Argentina esse cereal, em condições menos favoráveis.',
      false,90),
 
/*B*/('Conforme apontado por Carlos Lessa na obra clássica Quinze anos de Política Econômica, a industrialização “não intencional”, que corresponde à política fiscal expansionista adotada no final dos anos 40, mesmo na ausência de medidas de planejamento, teria fortalecido setores da indústria brasileira.', 
       false,90),
 
/*C*/('A Instrução 70, adotada, em 1953, pela Superintendência da Moeda e do Crédito, órgão antecessor do Banco Central do Brasil, estabeleceu taxas múltiplas de câmbio, atribuindo taxas mais depreciadas à importação de máquinas, equipamentos e matérias-primas essenciais.', 
       false, 90),
	 
/*D*/('O período em que a taxa de câmbio oficial manteve-se fixa (CR$ 18,50 por dólar) representou, na prática, vigorosa apreciação da taxa de câmbio nominal.', 
       false,90),
 
/*E*/('A adoção da Instrução 113 da Superintendência da Moeda e do Crédito, que permitia a importação de bens de capital sem necessidade de cobertura cambial, não representou ruptura do tratamento vigente do capital estrangeiro. O governo Vargas, apesar da retórica nacionalista, já vinha adotando políticas que estimulavam a mobilização de recursos de origem externa e orientando inversões em setores prioritários.', 
      true, 90),       
       
-- Alternativas da Q1-- Artigo de Inglês
/*A*/('An/a/the/-/the/an',false,91),
/*B*/('-/the/-/the/-/an ',false,91),
/*C*/('The/the/the/-/the/the',false,91),
/*D*/('An/-/-/the/-/-',false,91),
/*E*/('The/a/-/the/the/the',true,91),
       
-- Alternativas da Q2- Artigo de Inglês
/*A*/('Todas estão corretas.',false,92),
/*B*/('Todas estão incorretas.',false,92),
/*C*/('Apenas os itens I e II estão errados',true,92),
/*D*/('Apenas os itens III, IV, e V estão errados.',false,92),
/*E*/('Apenas os itens I, III e V estão corretos.',false,92), 

-- Alternativas da Q3- Artigo de Inglês
/*A*/('a $1.6 million house.',false,93),
/*B*/('a $5.9 million plan.',false,93),
/*C*/('a $7.2 million jet.',false,93),
/*D*/('a $10.1 million yacht.',false,93),
/*E*/('a $11.5 million project.',true,93), 

-- Alternativas da Q4- Artigo de Inglês
/*A*/("Only in sentences I and II it's necessary to use the article THE.",
	  true,94),
      
/*B*/("It's correct to use THE in all blank spaces.",
	  false,94),
      
/*C*/("In alternatives I, III, IV and V it's correct to complete the spaces with THE.",
	 false,94),
     
/*D*/("About alternative V, it only needs the article in the third space.",
	  false,94),
      
/*E*/("We have to use THE in the second space of phrase number IV.",
	  false,94), 

-- Alternativas da Q5- Artigo de Inglês
/*A*/('a community (ref. 8).',false,95),
/*B*/('a shared destiny (ref. 9).',false,95),
/*C*/('A link (ref. 10).',false,95),
/*D*/('a long way (ref. 11).',false,95),
/*E*/('a Europe (ref. 12).',false,95),  
       
-- Alternativas da Q1- Comp. de Inglês
/*A*/('viaja muito pouco e que essa escolha fez toda a diferença em sua vida.',
	 false,96),
     
/*B*/('festeja o fato de ter sido ousado na escolha que fez em sua vida.',
     true,96),
     
/*C*/('lamenta por ter sido um viajante que encontrou muitas bifurcações.',
	 false,96),
     
/*D*/('reconhece que as dificuldades em sua vida foram todas superadas.',
	 false,96),
     
/*E*/('percorre várias estradas durante as diferentes fases de sua vida.',
	 false,96),

-- Alternativas da Q2- Comp. de Inglês
/*A*/('tem as mesmas características de projetos utópicos como o esperanto.',
	  false,97),
      
/*B*/('facilita o entendimento entre o falante nativo e o não nativo.',
	 false,97),
     
/*C*/('tem status de língua por refletir uma cultura global.',
	 false,97),
     
/*D*/('apresenta padrões de fala idênticos aos da variedade usada pelos falantes nativos.',
	 false,97),
     
/*E*/('altera a estrutura do idioma para possibilitar a comunicação internacional.',
	 true,97), 

-- Alternativas da Q3- Comp. de Inglês
/*A*/('consumirem alimentos industrializados sem o interesse em conhecer a sua composição.',
	  true,98),
      
/*B*/('incentivarem crianças a ingerirem grande quantidade de alimentos processados e com conservantes.',
	  false,98),
      
/*C*/('ignorarem o aumento constante da obesidade causada pela má alimentação na fase de desenvolvimento da criança.',
      false,98),
      
/*D*/('acessarem informações equivocadas sobre a formulação química de alimentos empacotados.',
	  false,98),
      
/*E*/('desenvolverem problemas de saúde pela falta de conhecimento a respeito do teor dos alimentos.',
	  false,98), 

-- Alternativas da Q4- Comp. de Inglês
/*A*/('de o pai dizer que a maçã tem carne e que muda de cor em contato com o ar.',
      false,99),
      
/*B*/('do fato de a criança não saber por que a maçã que estava comendo era marrom.',
	  false,99),
      
/*C*/('da dificuldade que o pai estava enfrentando para dar uma resposta ao filho.',
	  false,99),
      
/*D*/('de um menino de quatro anos entender uma explicação científica sobre a oxidação.',
	  false,99),
      
/*E*/('da escolha inadequada do tipo de linguagem para se conversar com uma criança.',
	  true,99), 

-- Alternativas da Q5- Comp. de Inglês
/*A*/('jeito de reconhecer um erro e se desculpar.',true,100),
/*B*/('forma educada de fazer uma reclamação.',false,100),
/*C*/('tentativa de minimizar um problema.',false,100),
/*D*/('modo irônico de reagir a uma solicitação.',false,100),
/*E*/('estratégia para esconder a verdade.',false,100), 

-- Alternativas da Q1- Verbos de Inglês
/*A*/('give advice',false,101),
/*B*/('clear doubt',false,101),
/*C*/('express possibility',true,101),
/*D*/('impose obligation',false,101),

-- Alternativas da Q2- Verbos de Inglês
/*A*/('adverb, present simple, present perfect.',
	   false,102),
       
/*B*/('adjective, modal, relative pronoun.',
	  true,102),
      
/*C*/('adjectives, passive voice, simple past.',
      false,102),
      
/*D*/('future perfect, possessive case, simple present.',
	  false,102),
      
/*E*/('present perfect, modals, simple past.',false,102), 

-- Alternativas da Q3- Verbos de Inglês
/*A*/('“I will give the tower contract to the person with the highest offer”.',
	  true,103),
      
/*B*/('“I would give the tower contract to the person with the highest offer”.',
	  false,103),
      
/*C*/('“I shall give the tower contract to the person with the highest offer”.',
	  false,103),
      
/*D*/('“I could give the tower contract to the person with the highest offer”.',
     false,103),

-- Alternativas da Q4- Verbos de Inglês
/*A*/('lived together for fifty years.',false,104),
/*B*/('were married for fifty years.',false,104),
/*C*/('got married fifty years ago.',true,104),
/*D*/('were married for a long time.',false,104),

-- Alternativas da Q5- Verbos de Inglês
/*A*/('Your airline should offer its clients a wider range of businesses.',
	  false,105),
      
/*B*/('Business should cross borders and also should your airline.',
	  false,105),
      
/*C*/('Your airline should invest more in business worldwide.',
	  false,105),
      
/*D*/('Business crosses borders and your airline should, too.',
	  true,105),
      
/*E*/('Your airline should keep on doing business abroad so as to improve its results.',
	  false,105), 

-- Alternativas da Q1- Analise Comb.  Matemática
/*A*/('14 000.',true,106),
/*B*/('480',false,106),
/*C*/('8! + 4!',false,106),
/*D*/('72 000',false,106),

-- Alternativas da Q2- Analise Comb.  Matemática
/*A*/('5/128',false,107),
/*B*/('7/128',true,107),
/*C*/('15/256',false,107),
/*D*/('17/256',false,107),
/*E*/('25/512',false,107), 

-- Alternativas da Q3- Analise Comb.  Matemática
/*A*/('140.',false,108),
/*B*/('120.',false,108),
/*C*/('70.',false,108),
/*D*/('60.',true,108),
/*E*/('40.',false,108), 

-- Alternativas da Q4- Analise Comb.  Matemática
/*A*/('360',false,109),
/*B*/('380',false,109),
/*C*/('400',false,109),
/*D*/('420',true,109),

-- Alternativas da Q5- Analise Comb.  Matemática
/*A*/('100',false,110),
/*B*/('800',false,110),
/*C*/('40 320',false,110),
/*D*/('80640',true,110),
/*E*/('3 628 800',false,110), 

-- Alternativas da Q1- Progressão arit.  Matemática
/*A*/('20',false,111),
/*B*/('21',false,111),
/*C*/('22',false,111),
/*D*/('23',true,111),
/*E*/('24',false,111),

-- Alternativas da Q2- Progressão arit.  Matemática
/*A*/('220.000',false,112),
/*B*/('247.500',true,112),
/*C*/('277.500',false,112),
/*D*/('450.000',false,112),
/*E*/('495.000',false,112), 

-- Alternativas da Q3- Progressão arit.  Matemática
/*A*/('2',false,113),
/*B*/('3',false,113),
/*C*/('6',true,113),
/*D*/('7',false,113),
/*E*/('9',false,113), 

-- Alternativas da Q4- Progressão arit.  Matemática
/*A*/('3 + √3',false,114),
/*B*/('3 + ((√3)/2)',false,114),
/*C*/('3 + ((√3)/4)',false,114),
/*D*/('3 + ((√3)/4)',false,114),
/*E*/('3 - √3',true,114), 

-- Alternativas da Q5- Progressão arit.  Matemática
/*A*/('-3/8',false,115),
/*B*/('21/8',false,115),
/*C*/('15/8',true,115),
/*D*/('2',false,115),
/*E*/('-19/8',false,115), 

-- Alternativas da Q1-Progressão geo.  Matemática que na vdd é a Q2
/*A*/('2',false,116),
/*B*/('3',false,116),
/*C*/('4',false,116),
/*D*/('5',false,116),
/*E*/('6',true,116),

-- Alternativas da Q2- Progressão geo.  Matemática
/*A*/('2066',false,117),
/*B*/('5130',false,117),
/*C*/('10330',true,117),
/*D*/('20570',false,117),
/*E*/('20660',false,117), 

-- Alternativas da Q3- Progressão geo.  Matemática
/*A*/('2/3',false,118),
/*B*/('4/3',false,118),
/*C*/('5/3',false,118),
/*D*/('7/3',false,118),
/*E*/('8/3',true,118), 

-- Alternativas da Q4- Progressão geo.  Matemática
/*A*/('36',false,119),
/*B*/('40',false,119),
/*C*/('180',false,119),
/*D*/('360',true,119),
/*E*/('450',false,119), 

-- Alternativas da Q5- Progressão geo.  Matemática
/*A*/('8',true,120),
/*B*/('9',false,120),
/*C*/('10',false,120),
/*D*/('11',false,120),
/*E*/('12',false,120), 

-- Alternativas da Q1- Figuras de linguagem Portugues
/*A*/('Metáfora.',false,121),
/*B*/('Hipérbole.',false,121),
/*C*/('Hipérbato.',false,121),
/*D*/('Metonímia.',true,121),
/*E*/('Pleonasmo.',false,121),

-- Alternativas da Q2- Figuras de linguagem Portugues
/*A*/('invisível',true,122),
/*B*/('expressivo',false,122),
/*C*/('inexistente',false,122),
/*D*/('contraditório',false,122),

-- Alternativas da Q3- Figuras de linguagem Portugues
/*A*/('anáfora.',false,123),
/*B*/('metonímia.',true,123),
/*C*/('perífrase.',false,123),
/*D*/('hipérbole.',false,123),
/*E*/('aliteração.',false,123), 

-- Alternativas da Q4- Figuras de linguagem Portugues
/*A*/('descritivo da paisagem e da vegetação típicas do sertão existente na região Nordeste do país.',
	 false,124),
     
/*B*/('contraposição ao litoral, na concepção dada pelos caiçaras, que identificam o sertão com a presença dos pinheiros.',
	 false,124),
     
/*C*/('analogia à paisagem predominante no Centro-Oeste brasileiro, tal como foi encontrada pelos bandeirantes no século XVII.',
	 false,124),
     
/*D*/('metáfora da cidade-metrópole, referindo-se à aridez do concreto e das construções.',
	 false,124),
     
/*E*/('generalização do ambiente rural, independentemente das características de sua vegetação.',
	 true,124), 
     
-- Alternativas da Q5- Figuras de linguagem Portugues
/*A*/('O registro do modelo de ensino representado pelo uso ultrapassado da tecnologia do giz.',
	 false,125),
     
/*B*/('Uma constatação de que os alunos não precisam escrever à mão.',
	 false,125),
     
/*C*/('Um apelo de aluno para que melhore o ensino.',
	 false,125),
     
/*D*/('Uma crítica irônica em relação à situação do ensino na escola brasileira.',
	 true,125),
     
/*E*/('Uma afirmação de que a relação entre ler e escrever não é explorada na escola.',
	 false,125), 

-- Alternativas da Q1- Interp. Texto de Portugues
/*A*/('intertextualidade',true,126),
/*B*/('contextualidade',false,126),
/*C*/('prolixidade',false,126),
/*D*/('informatividade',false,126),

-- Alternativas da Q2- Interp. Texto de Portugues
/*A*/('o ciclo econômico do tabaco, que foi anterior ao do ouro, sucedeu o da cana-de-açúcar.',
	 false,127),
     
/*B*/('todo o rendimento do tabaco, a exemplo do que ocorria com outros produtos, era direcionado à metrópole.',
	 false,127),
     
/*C*/('não se pode exagerar quanto à lucratividade propiciada pela cana-de-açúcar, já que a do tabaco, desde seu início, era maior.',
	 false,127),
     
/*D*/('os europeus, naquele ano, já conheciam plenamente o potencial econômico de suas colônias americanas.',
	 false,127),
     
/*E*/('a economia colonial foi marcada pela simultaneidade de produtos, cuja lucratividade se relacionava com sua inserção em mercados internacionais.',
	 true,127), 

-- Alternativas da Q3- Interp. Texto de Portugues
/*A*/('A mensagem de paz do texto que introduz a charge apresenta-se substancialmente oposta à imagem violenta retratada.',
	 true,128),
     
/*B*/('O confronto entre os personagens apresenta uma mensagem coerente com a mensagem inicial da charge: de amor e paz.',
	 false,128),
     
/*C*/('Lutar é algo inerente ao ser humano; por isso pode-se afirmar que não há qualquer contradição entre a mensagem verbal e a não verbal.',
	 false,128),
     
/*D*/(' As frases da torcida indicam que esses espectadores não gostam de violência.',
	 false,128),
     
/*E*/('No contexto da charge, a luta pode ser entendida como uma forma de violência pacífica.',
	 false,128), 

-- Alternativas da Q4- Interp. Texto de Portugues
/*A*/('surpreendem leitor com a descrição do que as pessoas faziam durante o seu tempo livre antigamente.',
	 false,129),
     
/*B*/('sensibilizar o leitor sobre o modo como as pessoas se relacionavam entre si num tempo mais aprazível.',
	 true,129),
     
/*C*/('advertir o leitor mais jovem sobre o mau uso que se faz do tempo nos dias atuais.',
	 false,129),
     
/*D*/('incentivar o leitor a organizar melhor o seu tempo sem deixar de ser nostálgico.',
	 false,129),
     
/*E*/('convencer o leitor sobre a veracidade de fatos relativos à vida no passado.',
	 false,129), 
     
-- Alternativas da Q5- Interp. Texto de Portugues
/*A*/('ridiculariza o emprego equivocado do sinal indicador de crase no título da novela.',
	 false,130),
     
/*B*/('deixa subentendido que a presença de crase no título da trama é surpreendente.',
	 true,130),
     
/*C*/('refere-se ao fato de o título da trama desconsiderar as regras do novo Acordo Ortográfico.',
	 false,130),
     
/*D*/('defende que o emprego do sinal grave indicador de crase seja uma opção estilística.',
	 false,130),
     
/*E*/('ironiza a controvérsia entre os gramáticos na discussão sobre a ocorrência de crase em tramas populares.',
	 false,130), 

-- Alternativas da Q1- Orações subordinadas de Portugues
/*A*/('retificação.',true,131),
/*B*/('compensação.',false,131),
/*C*/('complementação.',false,131),
/*D*/('separação.',false,131),
/*E*/('acréscimo.',false,131),

-- Alternativas da Q2- Orações subordinadas de Portugues
/*A*/('para inicia uma oração adverbial condicional, pois restringe o genoma à condição de bactéria.',
	 false,132),
     
/*B*/('e introduz uma oração coordenada sindética aditiva, pois adiciona o projeto à instalação do genoma.',
	 true,132),
     
/*C*/('como introduz uma oração adverbial conformativa, pois exprime acordo ou conformidade de um fato com outro.',
	 false,132),
     
/*D*/('porém indica concessão, pois expressa um fato que se admite em oposição ao da oração principal.',
	 false,132),
     
/*E*/('para que exprime uma explicação: falta muito para a humanidade dominar os segredos da vida.',
	 false,132), 

-- Alternativas da Q3- Orações subordinadas de Portugues
/*A*/('Mulheres, mais escolarizadas, porventura ganham mais, entretanto possuem empecilhos para subir na carreira.',
	 false,133),
     
/*B*/('Mulheres, mais escolarizadas, ainda ganham menos, bem como enfrentam obstáculos para subir na carreira.',
	 true,133),
     
/*C*/('Mulheres, mais escolarizadas, às vezes ganham menos, por conseguinte apresentam especificidades para se elevarem na carreira.',
	 false,133),
     
/*D*/('Mais escolarizadas, mulheres, ainda que enfrentem dificuldades para progredirem na carreira, ganham o mesmo ou mais.',
	 false,133),
     
/*E*/('Mais escolarizadas, mulheres apresentam particularidades para subir na carreira, porquanto já ganham mais.',
	 false,133), 

-- Alternativas da Q4- Orações subordinadas de Portugues
/*A*/('A frase I possibilita a conclusão de que todos os brasileiros, indiscriminadamente, desejam ingressar na Força Aérea Brasileira.',
	  false,134),
      
/*B*/('As frases I e II estão em desconformidade com as normas gramaticais vigentes em relação às Orações Subordinadas Adjetivas.',
	 false,134),
     
/*C*/('A frase I, por conter Oração Subordinada Adjetiva Restritiva, não apresenta vírgulas. Esse fato está em conformidade com as normas gramaticais vigentes. ',
	 true,134),
     
/*D*/('A frase II, por conter Oração Subordinada Adjetiva Restritiva, apresenta vírgulas. Esse fato está em conformidade com as normas gramaticais vigentes.',
	 false,134),

-- Alternativas da Q5- Orações subordinadas de Portugues
/*A*/('substantiva objetiva indireta.',
	 false,135),
     
/*B*/('adverbial final.',
	 false,135),
     
/*C*/('adverbial conformativa.',
	 false,135),
     
/*D*/('adjetiva restritiva.',	
	 false,135),
     
/*E*/('substantiva objetiva direta.',
	 true,135), 

-- Alternativas da Q1- Cadeias Carb. de Química
/*A*/('por ser bastante estável e agir como se tivesse isoladamente ligações simples e ligações duplas.',
	 false,136),
     
/*B*/('pelas distâncias entre os átomos de carbono das ligações simples (1,54 Â) e das ligações duplas  (1,34 Â).',
	false,136),
    
/*C*/('pela variação da posição dos elétrons (sigma) que provocam mudanças nas posições dos átomos de carbono.',
	false,136),
    
/*D*/('por possuir distância intermediária entre os átomos de carbono, comparada com a distância da ligação simples e a distância da ligação dupla.',
	true,136),
    
-- Alternativas da Q2- Cadeias Carb. de Química
/*A*/('É um hidrocarboneto classificado como hidrocarboneto aromático, cuja massa molar é menor do que 75g/mol.',
	 false,137),
     
/*B*/('Em sua fórmula estrutural, existem carbonos do tipo sp3.',
	 false,137),
     
/*C*/('O radical gerado com a perda de um hidrogênio desse composto é chamado de fenil.',
	 true,137),
     
/*D*/('Apresenta, em sua cadeia carbônica, as seguintes particularidades: cíclica, normal, insaturada e heterogênea.',
	 false,137),

-- Alternativas da Q3- Cadeias Carb. de Química
/*A*/('etil, toluil e n-propil.',
	 false,138),
     
/*B*/('butil, benzil e isobutil.',
	 false,138),
     
/*C*/('metil, benzil e propil.',
	 false,138),
     
/*D*/('isopropil, fenil e etil.',
	 true,138),
     
/*E*/('butil, etil e isopropil.',
	 false,138), 

-- Alternativas da Q4- Cadeias Carb. de Química
/*A*/('etanol, obtido a partir da decomposição da matéria orgânica por bactérias.',
	 false,139),
     
/*B*/('gás natural, formado pela ação de fungos decompositores da matéria orgânica.',
	 false,139),
     
/*C*/('óleo de xisto, obtido pela decomposição da matéria orgânica pelas bactérias anaeróbias.',
	 false,139),
     
/*D*/('gás metano, obtido pela atividade de bactérias anaeróbias na decomposição da matéria orgânica.',
	 true,139),
     
/*E*/('gás liquefeito de petróleo, obtido pela decomposição de vegetais presentes nos restos de comida.',
	 false,139), 

-- Alternativas da Q5- Cadeias Carb. de Química
/*A*/('podem ter sido levadas à Europa pela Companhia das Índias Ocidentais e contêm um pigmento que é um polifenol insaturado.',
	 false,140),
     
/*B*/('podem ter sido levadas à Europa por rotas comerciais norte-africanas e contêm um pigmento cuja molécula possui apenas duplas ligações cis.',
	 false,140),
     
/*C*/('podem ter sido levadas à Europa pelos chineses e contêm um pigmento natural que é um poliéster saturado.',
	 false,140),
     
/*D*/('podem ter sido trazidas ao Brasil pelos primeiros degredados e contêm um pigmento que é um polímero natural cujo monômero é o etileno.',
	 false,140),
     
/*E*/('podem ter sido trazidas a Pernambuco durante a invasão holandesa e contêm um pigmento natural que é um hidrocarboneto insaturado.',
	 true,140),     
    
-- Alternativas da Q1- Comp. Iônicos de Química
/*A*/('I a lâmpada está acesa, devido à capacidade de condução de calor.',
	 false,141),
     
/*B*/('II a lâmpada está apagada, porque o açúcar é insolúvel na água.',
	false,141),
    
/*C*/('II a lâmpada está apagada, pois o açúcar é uma substância composta.',
	false,141),
    
/*D*/('I a lâmpada está acesa, devido à movimentação dos íons presentes na solução.',
	true,141),
    
-- Alternativas da Q2-Comp. Iônicos de Química
/*A*/('molecular de fórmula AB2.',	
	 false,142),
     
/*B*/('molecular de fórmula A2B.',
	 false,142),
     
/*C*/('iônico de fórmula AB.',
	 false,142),
     
/*D*/('iônico de fórmula AB2.',
	 true,142),
     
/*E*/('iônico de fórmula A2B.',
	 false,142), 

-- Alternativas da Q3- Comp. Iônicos de Química
/*A*/('Y e Z, apenas.',
	 false,143),
     
/*B*/('X, Y e Z.',
	 false,143),
     
/*C*/('X e Y, apenas.',
	 false,143),
     
/*D*/('Y, apenas.',
	 true,143), 

-- Alternativas da Q4- Comp. Iônicos de Química
/*A*/('os elementos J e G apresentam potenciais de ionização idênticos por possuírem o mesmo número de elétrons no último nível.',
	 false,144),
     
/*B*/('o composto formado por J e Z é iônico e sua fórmula química é ZJ.',
	 true,144),
     
/*C*/('o composto formado por G e Z é molecular e sua fórmula química é ZG2.',
	 false,144),
     
/*D*/('o composto JX apresenta ligação coordenada.',
	 false,144),

-- Alternativas da Q5- Comp. Iônicos de Química
/*A*/('o tomate é um legume.',
	 false,145),
     
/*B*/('o vinagre apresenta caráter básico.',
	 false,145),
     
/*C*/('o azeite de oliva é uma fonte de proteína.',
	 false,145),
     
/*D*/('o principal componente do sal de cozinha é o cloreto de sódio. ',
	 true,145),
     
/*E*/('os alimentos liberam energia para nosso organismo em processo endotérmico.',
	 false,145),       
    
-- Alternativas da Q1- Comp. Mole de Química
/*A*/('iônica, covalente polar, covalente apolar.',
	  true,146),
      
/*B*/('iônica, covalente apolar e covalente polar.',
	 false,146),
     
/*C*/('covalente polar, covalente apolar e iônica.',
     false,146),
     
/*D*/('covalente apolar, covalente polar e iônica.',
     false,146),
     
-- Alternativas da Q2- Comp. Mole de Química
/*A*/('1',
	 false,147),
     
/*B*/('2',
	 false,147),
     
/*C*/('3',
	 true,147),
     
/*D*/('4',
	 false,147),
     
/*E*/('5',
	 false,147), 

-- Alternativas da Q3- Comp. Mole de Química
/*A*/('covalente/iônica, iônica, covalente e iônica.',
	 false,148),
     
/*B*/('covalente/iônica, covalente, covalente e iônica.',
	 false,148),
     
/*C*/('iônica/covalente, covalente, iônica e covalente.',
	 true,148),
     
/*D*/('iônica/covalente, iônica, iônica, covalente.',
	 false,148),

-- Alternativas da Q4- Comp. Mole de Química
/*A*/('o isótopo natural do flúor possui 9 nêutrons.',
	 false,149),
     
/*B*/('o íon F  ̶  tem 8 elétrons.',
	 false,149),
     
/*C*/('o flúor é um elemento da família dos elementos calcogênios.',
	 false,149),
     
/*D*/('no gás flúor, F2, se tem uma ligação covalente polar.',
	 false,149),
     
/*E*/('na molécula do ácido fluorídrico, HF, o flúor é mais eletronegativo que o hidrogênio.',
	 true,149), 

-- Alternativas da Q5- Comp. Mole de Química
/*A*/('Uma ligação iônica e duas ligações covalentes simples.',
	 false,150),
     
/*B*/('Duas ligações covalentes, sendo uma tripla e uma simples.',
	 true,150),
     
/*C*/('Duas ligações covalentes simples.',
	 false,150),
     
/*D*/('Duas ligações iônicas.',
	 false,150),  
     
-- Alternativas da Q1- Cidadania de Socio
/*A*/('etnia e miscigenação racial.',false,151),
/*B*/('sociedade e igualdade jurídica.',false,151),
/*C*/('espaço e sobrevivência cultural.',true,151),
/*D*/('progresso e educação ambiental.',false,151),
/*E*/('bem-estar e modernização econômica.',false,151),

-- Alternativas da Q2- Cidadania de Socio
/*A*/('modernização da educação escolar.',
	 false,152),
     
/*B*/('atualização da disciplina moral cristã.',
	 false,152),
     
/*C*/('divulgação de costumes aristocráticos.',
	 false,152),
     
/*D*/('socialização do conhecimento científico.',
	 false,152),
     
/*E*/('universalização do princípio da igualdade civil.',
	 true,152), 

-- Alternativas da Q3- Cidadania de Socio
/*A*/('apenas I está correta.',
	 false,153),
     
/*B*/('apenas IV está correta.',
	 false,153),
     
/*C*/('apenas I e III estão corretas.',
	 false,153),
     
/*D*/('apenas II e III estão corretas.',
	 false,153),
     
/*E*/('I, II, III e IV estão corretas.',
	 true,153), 

-- Alternativas da Q4- Cidadania de Socio
/*A*/('Ao longo do século passado, através das mudanças sociopolíticas ocorridas principalmente no Brasil, o conceito de cidadania se destituiu totalmente do sentido social, passando a ser um ato puramente individual.',
	 false,154),
     
/*B*/('Ser cidadão hoje é apenas estar em dia com suas obrigações eleitorais, mantendo-se informado sobre os pleitos e os trâmites das eleições, já que a palavra cidadania é sinônimo de “política” enquanto forma de governo.',
	 false,154),
     
/*C*/('Na atual conjuntura, a partir de discussões constantes e uma educação mais intensa e democrática, o termo cidadania ganha um sentido mais amplo de participação na vida social e, principalmente, de legitimidade de direitos e deveres.',
	 true,154),
     
/*D*/('A partir dos conceitos históricos que vão sendo deflagrados a cada período e em cada cultura específica, o conceito de cidadania perde o sentido inicial e passa a ser sinônimo de condição socioeconômica, ou seja, o cidadão e quem detém poder.',
	 false,154),

-- Alternativas da Q5- Cidadania de Socio
/*A*/('fundamentalista-religioso, defendendo a validade de sua proibição por motivos morais.',
	 false,155),
     
/*B*/('político-ideológico, assumindo um viés ateu e materialista sobre essa questão.',
	 false,155),
     
/*C*/('econômico, considerando as despesas estatais na área da saúde pública em todo o mundo.',
	 false,155),
     
/*D*/('filosófico-feminista, defendendo a autonomia da mulher na relação com o próprio corpo.',
	 false,155),
     
/*E*/('estatístico, analisando a ineficácia das restrições legais que proíbem o aborto.',
	 true,155),  

-- Alternativas da Q1- Mov. de Socio
/*A*/('o desenvolvimento que não pode ser alcançado com a presença de áreas verdes.',
	 false,156),
     
/*B*/('a falta de materiais de proteção individual para as pessoas próximas às caçambas.',
	 false,156),
     
/*C*/('o caráter efêmero das construções civis que um dia serão destruídas.',
	 false,156),
     
/*D*/('a situação precária dos trabalhadores ligados ao transporte de carga no Brasil.',
	 false,156),
     
/*E*/('o descarte irregular de lixo e os impactos ambientais e sociais implicados.',
	 true,156),
     
-- Alternativas da Q2- Mov. de Socio
/*A*/('aceleração da reforma agrária ',
	 false,157),
     
/*B*/('reparação de grupos excluídos',
	 true,157),
     
/*C*/('absorção de trabalhadores urbanos',
	 false,157),
     
/*D*/('reconhecimento da diversidade étnica',
	 false,157),

-- Alternativas da Q3- Mov. de Socio
/*A*/('ação de partidos políticos que possuem o objetivo de mudar uma determinada situação em um país ou região.',
	 false,158),
     
/*B*/('determinação social de grupos minoritários que reivindicam melhores situações para determinados indivíduos desprotegidos culturalmente.',
	 false,158),
     
/*C*/('solução definitiva e tranquila de conflitos e desigualdades sociais impostas pelos grupos menos favorecidos aos grupos sociais considerados elitizados.',
	 false,158),
     
/*D*/('ação coletiva com base em uma determinada visão de mundo, objetivando a mudança ou a manutenção das relações sociais numa dada sociedade.',
	 true,158),
     
/*E*/('norma de comportamento determinada pela sociedade para controlar manifestações individuais ou grupais que contrariem os interesses do poder político do país.',
	 false,158), 

-- Alternativas da Q4- Mov. de Socio
/*A*/('interação social.',
	 false,159),
     
/*B*/('mobilidade lateral.',
	 false,159),
     
/*C*/('movimento social.',
	 false,159),
     
/*D*/('princípio preventivo.',
	 false,159),
     
/*E*/('movimento de acomodação urbana.',
	 true,159), 
     

-- Alternativas da Q5- Mov. de Socio
/*A*/('priorizar os interesses econômicos em relação aos seres humanos e à natureza.',
	 false,160),
     
/*B*/('negar a perspectiva científica e suas conquistas por causa de riscos ecológicos.',	
	 false,160),
     
/*C*/('instituir o diálogo público sobre mudanças tecnológicas e suas consequências.',
	 true,160),
     
/*D*/('combater a introdução de tecnologias para travar o curso das mudanças sociais.',
	 false,160),
     
/*E*/('romper o equilíbrio entre benefícios e riscos do avanço tecnológico e científico.',
	 false,160), 
     
-- Alternativas da Q1- Contemporanea de Socio
/*A*/('grupo e de conflito sociais.',
	 false,161),
     
/*B*/('mobilidade e de ação sociais.',
	 false,161),
     
/*C*/('interação e de relação sociais.',
	 true,161),
     
/*D*/('movimento e de instituição sociais.',
	 false,161),
     
/*E*/('alienação e de desigualdade sociais.',
	 false,161),         

-- Alternativas da Q2- Contemporanea de Socio
/*A*/('ampliação do poder dos clérigos no controle dos fiéis.',
	 false,162),
     
/*B*/('adequação dos ritos sacramentais ao cotidiano.',
	 false,162),
     
/*C*/('perda de privacidade em ambiente virtual.',
	 true,162),
     
/*D*/('reinterpretação da noção de pecado.',
	 false,162),
     
/*E*/('modernização das instituições religiosas.',
	 false,162), 

-- Alternativas da Q3- Contemporanea de Socio
/*A*/('um continuo homogêneo e democrático, cuja participação, além de aberta a todos, implica uma linguagem e uma prática de sociabilidade comum.',
	 false,163),
     
/*B*/('um espaço que cria uma cultura global comum por suprimir as distâncias geográficas e as diferenças culturais.',
	 false,163),
     
/*C*/('um espaço heterogêneo e fragmentado em diferentes espaços simbólicos.',
	 true,163),
     
/*D*/('um espaço simétrico de relações sociais, culturais e políticas entre sujeitos virtuais.',
	 false,163),

-- Alternativas da Q4- Contemporanea de Socio
/*A*/('princípios filosóficos baseados no livre-arbítrio e na autonomia individual.',
	 false,164),
     
/*B*/('valores de natureza religiosa fundamentados na preservação da vida.',
	 false,164),
     
/*C*/('valores éticos associados ao direito absoluto à liberdade da pessoa humana.',
	 false,164),
     
/*D*/('realização prévia de consultas públicas sobre a internação obrigatória.',
	 false,164),
     
/*E*/('critérios médicos relacionados à distinção entre saúde e patologia.',	
	 true,164), 

-- Alternativas da Q5- Contemporanea de Socio
/*A*/('questiona a integração das pessoas nas redes virtuais de relacionamento.',
	 true,165),
     
/*B*/('considera as relações sociais como menos importantes que as virtuais.',
	 false,165),
     
/*C*/('enaltece a pretensão do homem de estar em todos os lugares ao mesmo tempo.',
	 false,165),
     
/*D*/('descreve com precisão as sociedades humanas no mundo globalizado.',
	 false,165),
     
/*E*/('concebe a rede de computadores como o espaço mais eficaz para a construção de relações sociais.',
	 false,165);

SELECT * FROM genniusbdfinal.tbquestao;

insert into tbResposta(cod_usuario,cod_questao,cod_alternativa)
values
(1,1,1);

/*
#R.tempo_inicial, R.tempo_final, A.correta,
select  count(Q.id_questao) as qtdeIncorreta from tbresposta as R 
inner join tbAlternativa as A on R.cod_alternativa = A.id_alternativa  
inner join tbQuestao     as Q on A.cod_questao = Q.id_questao
#inner join tbMateria     as M on Q.cod_materia = M.id_materia 
#inner join tbDisciplina  as D on M.cod_disciplina = D.id_disciplina 
where R.cod_questao=1 and A.correta=false
group by Q.id_questao;
*/

select * from tbMateria;
select * from tbquestao;
select * from tbalternativa;
select * from tbResposta;

#Query dos materia das diciplinas
SELECT M.id_materia, M.temas ,D.disciplinas FROM tbmateria as M 
INNER JOIN tbdisciplina as D on D.id_disciplina = M.cod_disciplina
WHERE M.cod_disciplina = 1; 


#Query das questões e das alternativas
SELECT Q.id_questao, Q.edicao,Q.banca,Q.enunciado,M.temas,Q.caminho,Q.nome_imagem,
 A.texto, A.correta FROM tbquestao AS Q 
INNER JOIN tbMateria AS M ON Q.cod_materia = M.id_materia 
LEFT JOIN tbAlternativa AS A ON  A.cod_questao = Q.id_questao
WHERE M.id_materia = 1 ORDER BY Q.id_questao;                        





