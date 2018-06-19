create database  GenniusDB;

use GenniusDB;

create table tbUsuario(
id_usuario int primary key not null auto_increment,
nome_completo varchar(100) not null,
email varchar(50)not null,
senha varchar(8) not null
);

create table  tbDisciplina(
id_disciplina int primary key auto_increment,
disciplinas varchar(20)
);

create table if not exists tbMateria(
id_materia int primary key auto_increment,
temas varchar(50),
cod_disciplina int,
foreign key (cod_disciplina) references tbDisciplina(id_disciplina)
);

create table  tbQuestao(
id_questao int primary key not null auto_increment,
edicao varchar(10),
banca varchar(40),
prova varchar(45),
enunciado text(300),
caminho varchar(50),
nome_imagem varchar(50),
cod_materia int,
foreign key (cod_materia) references tbMateria(id_materia)
);

create table  tbAlternativa(
id_alternativa int primary key not null auto_increment,
texto text(300),
correta bool,
cod_questao int,
foreign key (cod_questao) references tbQuestao(id_questao)
);

create table  tbResposta(
id_resposta int primary key auto_increment,
tempo_inicial datetime,
tempo_final datetime,
cod_usuario int,
cod_questao int,
cod_alternativa int,
foreign key(cod_usuario) references tbUsuario(id_usuario),
foreign key(cod_questao) references tbQuestao(id_questao),
foreign key(cod_alternativa)references tbAlternativa(id_alternativa)
);

create table tbEscolha(
id_escolha int primary key auto_increment,
cod_usuario int,
cod_disciplina int,
foreign key (cod_usuario) references tbUsuario(id_usuario),
foreign key (cod_disciplina) references tbDisciplina(id_disciplina)
); 

insert into tbusuario(nome,sobrenome,email,senha,data_cadastro)
values
('Gustavo','Mendes Ribeiro Costa','Gcosta@123.com','123456',current_date());

select*from tbUsuario;

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

/*('ARTE MODERNA',1),
  ('EXPRESSIONISMO',1),*/

-- Temas de Artes
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

/*     
-- Q1 Arte Moderna - Artes 
	(null,null,null,
     null,
	 null,3),
     
-- Q1 Expressionismo - Artes 
	(null,null,null,
     null,
	 null,2),
*/

-- Q1 Renascimeto - Artes 
    ('2017','VUNESP','UNESP',
     'A pintura representa no martírio de Cristo os seguintes princípios culturais do Renascimento italiano:',
	 'Artes-Renascimento e Humanismo','img-Q1',1),

-- Q1 Bioquímica Celular - Biologia
	 ('2017',null,'Fac. Albert Einstein- Medicina',
     'A fenilcetonúria, também conhecida como PKU, é uma doença genética humana caracterizada pela incapacidade de metabolizar o aminoácido fenilalanina. Como consequência, há acúmulo de fenilalanina no organismo, o que interfere negativamente no desenvolvimento cerebral e provoca deficiência intelectual. É um tipo de distúrbio que afeta crianças de ambos os sexos, que, na maioria das vezes, nascem de pais normais. O diagnóstico, quando realizado precocemente pelo teste do pezinho, é útil para se estabelecer uma dieta planejada que previne a deficiência intelectual. Considerando essas informações, pode-se inferir que os fenilcetonúricos',
	 null,null,2),
     
-- Q1 Ecologia - Biologia
	(null,null,null,
     null,
	 null,null,3),  
     
-- Q1 Genética - Biologia 
    ('2014',null,'FUVEST',
	 'Para que a célula possa transportar, para seu interior, o colesterol da circulação sanguínea, é necessária a presença de uma determinada proteína em sua membrana. Existem mutações no gene responsável pela síntese dessa proteína que impedem a sua produção. Quando um homem ou uma mulher possui uma dessas mutações, mesmo tendo também um alelo normal, apresenta hipercolesterolêmica, ou seja, aumento do nível de colesterol no sangue. A hipercolesterolêmica devida a essa mutação tem, portanto, herança',
	 null,null,4),
     
-- Q1 Existencialismo - Filosofia
	 ('2016','INEP','ENEM',
	 'Ser ou não ser – eis a questão. Morrer – dormir – Dormir! Talvez sonhar. Aí está o obstáculo! Os sonhos que hão de vir no sono da morte Quando tivermos escapado ao tumulto vital Nos obrigam a hesitar: e é essa a reflexão Que dá à desventura uma vida tão longa. SHAKESPEARE, W. Hamlet. Porto Alegre: L&PM, 2007. Este solilóquio pode ser considerado um precursor do existencialismo ao enfatizar a tensão entre',
	 null,null,5),

-- Q1 Iluminismo - Filosofia
	(null,null,'FATEC',
     'As grandes revoluções burguesas do século XVIII refletem, em parte, algumas ideias dos filósofos iluministas, dentre as quais podemos destacar a que',
	 null,null,6),
     
-- Q1 Política - Filosofia
	 ('2015','INEP','ENEM',
     'A natureza fez os homens tão iguais, quanto às faculdades do corpo e do espírito, que, embora por vezes se encontre um homem manifestamente mais forte de corpo, ou de espírito mais vivo do que outro, mesmo assim, quando se considera tudo isto em conjunto, a diferença entre um e outro homem não é suficientemente considerável para que um deles possa com base nela reclamar algum benefício a que outro não possa igualmente aspirar. HOBBES, T. Leviatã. São Paulo Martins Fontes, 2003 Para Hobbes, antes da constituição da sociedade civil, quando dois homens desejavam o mesmo objeto, eles',
	 null,null,7),
     
-- Q1 Calorimetria - Física
     (null,null,'FMU',
     'A temperatura durante a mudança de estado, para uma dada substância,',
	 null,null,8), 
     
-- Q1 Hidroestática - Física
     ('2017','EFOMM','Marinha',
	 'Um cubo de 25,0 kg e 5,0 m de lado flutua na água. O cubo é, então, afundado ligeiramente para baixo por Dona Marize e, quando liberado, oscila em um movimento harmônico simples com uma certa frequência angular. Desprezando-se as forças de atrito, essa frequência angular é igual a:',
	 null,null,9),

-- Q1 Ondas Eletromágneticas - Física     
	 (null,'UFG',null,
     'As ondas eletromagnéticas foram previstas por Maxwell e comprovadas experimentalmente por Hertz (final do século XlX). Essa descoberta revolucionou o mundo moderno. Sobre as ondas eletromagnéticas são feitas as afirmações: I. Ondas eletromagnéticas são ondas longitudinais que se propagam no vácuo com velocidade constante c = 3,0 × 108 m/s. II. Variações no campo magnético produzem campos elétricos variáveis que, por sua vez, produzem campos magnéticos também dependentes do tempo e assim por diante, permitindo que energia e informações sejam transmitidas a grandes distâncias. III. São exemplos de ondas eletromagnéticas muito frequentes no cotidiano: ondas de rádio, sonoras, micro-ondas e raios X. Está correto o que é afirmado em:',
	 null,null,10),
      
-- Q1 Agropecuaria Brasileira - Geografia
    (null,'UFJF','Pism(Programa de Ingresso Seletivo Misto)',
     'A partir do gráfico e das características da estrutura agrária brasileira, reconhece-se que',
	 'Geo-Agropecuaria Brasileira','imgQ1',11),
     
-- Q1 Geopolitica Mundial - Geografia
     ('2010',null,'FUVEST',
     'A Organização dos Estados Americanos (OEA) revogou, por meio da Resolução de 03/06/2009, a decisão, tomada em 1962, que excluía Cuba dessa organização. Em relação a esse tema, é correto afirmar que',
	 null,null,12),
     
-- Q1 Oriente Médio - Geografia
    ('2016','PUCRJ',null,
     'Observe a charge e marque a opção correta, levando-se em conta a emigração em massa do Oriente Médio em direção à Europa.',
	 'Geo-Oriente Medio','imgQ1',13),
      
   	                 
-- Q1 Independência do Brasil - História  
	(null,'CESGRARIO',null,
     'A Constituição imperial brasileira, promulgada em 1824, estabeleceu linhas básicas da estrutura e do funcionamento do sistema político imperial tais como o(a):',
     null,null,14),
      
-- Q2 Independência do Brasil - História
	(null,'CESGRARIO',null,
    'Assinale a opção que apresenta um fato que caracterizou o processo de reconhecimento da Independência do Brasil pelas principais potências mundiais:',
	 null,null,14),
	    
-- Q3 Independência do Brasil - História
	(null,'FGV',null,
    'No Brasil, durante o Primeiro Império, a situação financeira era precária, pelo fato de que:',
     null,null,14),

-- Q4 Independência do Brasil - História    
	(null,'USP','FUVEST',
    'O reconhecimento da independência brasileira por Portugal foi devido principalmente:',
     null,null,14),

-- Q5 Independência do Brasil - História
	(null,'USP','FUVEST',
    'A organização do Estado brasileiro que se seguiu à Independência resultou no projeto do grupo:',
     null,null,14),
     
-- Q1 Revolução Francesa - História 
	('2016','USP','FUVEST',
    'A imagem pode ser corretamente lida como uma',
     'Hist-Revolucao Francesa','imgQ1',15),

-- Q2 Revolução Francesa - História 
	('2016','PUCPR', null,
    'A Revolução Francesa foi um dos momentos mais importantes no processo de formação do mundo contemporâneo. Foi um movimento violento que sepultou o absolutismo na cena política e o mercantilismo na economia, tendo um papel de grande destaque a burguesia, interessada em instituir um regime que atendesse aos seus interesses. Durante a revolução tomou forma um corpo legislativo denominado Assembleia Nacional, que tomou parte central na consolidação das reformas objetivadas pela revolução. Dentre as principais reformas realizadas na fase moderada da Revolução Francesa (1789-1791), pela Assembleia Nacional, podemos citar CORRETAMENTE:', 
    null,null,15),
      
-- Q3 Revolução Francesa - História  
	('2016','UEG',null,
    'Socialmente, os sans-culottes representam os citadinos que vivem de seu trabalho, seja como artesãos, seja como profissionais de ofício; alguns, depois de uma vida laboriosa, se tornam pequenos proprietários na cidade, e usufruem as rendas de um imóvel. PÉRONNET, Michel. Revolução Francesa em 50 Palavras-chaves. São Paulo: Brasiliense, 1988. p. 248. ',
    null,null,15),
      
-- Q4 Revolução Francesa - História        
	('2014','UNICAMP','COMVEST',
     'Observe a obra do pintor Delacroix, intitulada A Liberdade guiando o povo (1830), e assinale a alternativa correta.',
	  'Hist-Revolucao Francesa','imgQ4',15),
      
-- Q5 Revolução Francesa - História
	('2014','PUCSP',null,
	'“O Terror, que se tornou oficial durante certo tempo, é o instrumento usado para reprimir a contrarrevolução(...). É a parte sombria e mesmo terrível desse período da Revolução [Francesa], mas é preciso levar em conta o outro lado dessa política.Michel Vovelle. A revolução francesa explicada à minha neta. São Paulo: Unesp, 2007, p. 74-75. ”São exemplos dos “dois lados” da política revolucionária desenvolvida na França, durante o período do Terror,',
     null,null,15),     
     
-- Q1 Segunda Guerra Mundial - História 
	('2014','FUNCAB',null,
    'O processo mundial de expansão e consolidação das políticas sociais segue os efeitos do período histórico em que há a(s):',
     null,null,16),
     
-- Q2 Segunda Guerra Mundial - História 
	(null,null,null,
	 'A bipolarização do poder mundial – que vigorou desde o fim da Segunda Guerra Mundial até o final da década de 80 – manteve o mundo em permanente tensão, embora sem provocar confrontos armados diretos entre EUA e URSS. Este período ficou conhecido como:',
     null,null,16),
      
 -- Q3 Segunda Guerra Mundial - História 
  ('2009','MOVENS','PC-PA Investigador',
   'Os homens e as mulheres conhecidos como “soldados da borracha” foram importantes para os esforços do Brasil na Segunda Guerra Mundial como os pracinhas da Força Expedicionária Brasileira (FEB) foram nos campos de batalha da Itália. Considerando essas informações, é correto afirmar que os “soldados da borracha”:',
    null,null,16),
    
-- Q4 Segunda Guerra Mundial - História 
	('2013','CESPE','Diplomata - Prova 2',
     'A Segunda Guerra Mundial (1939-1945) é, geralmente, considerada o grande momento de inflexão do século XX. Decorrência de duas décadas de instabilidade política, comoção social e crise econômica, ela foi o mais universalizado dos conflitos e, ao chegar ao fim, gerou uma ordem internacional que se afastava dos padrões vigentes, a rigor, desde a Idade Moderna. Relativamente aos fatores que determinaram o início de hostilidades e às conferências que estabeleceram as balizas do novo cenário mundial, assinale a opção correta.',
     null,null,16),
      
-- Q5 Segunda Guerra Mundial - História 
	('2013','CESPE','Diplomata - Prova 2',
     'Assinale a opção correta no que diz respeito à análise da economia brasileira na década posterior ao fim da Segunda Guerra Mundial.',
     null,null,16),     
     
-- Q1 Artigos - IngLês
    ('2015',null,'Esc.Naval',
     'Which sequence best completes the quotation below? “__________ Ebola outbreak in West Africa is already __________ global threat to __________ public health and it’s vital that __________ UK remains at __________ forefront of responding to __________ epidemic.” Michael Fallon, Defense Secretary, 2014.',
	 null,null,17), 
     
-- Q1 Compreensão de Texto - IngLês
    ('2014','INEP','ENEM',
     'The Road Not Taken (by Robert Frost) Two roads diverged in a wood, and I — I took the one less traveled by, And that has made all the difference. Disponível em: http://www.poetryfoundation.org. Acesso em: 29 nov. 2011 (fragmento). Estes são os versos finais do famoso poema The Road Not Taken, do poeta americano Robert Frost. Levando-se em consideração que a vida é comumente metaforizada como uma viagem, esses versos indicam que o autor',
	 null,null,18),
      
-- Q1 Verbos - IngLês
    ('2014','UERJ',NULL,
     'Wiser and 4older Sometimes the world of science and medicine produces something that can only be described as 1unalloyed good news. We are used to stories about pollution scares and increases in the rates of cancer, but bubbling beneath is the stark reality that we live at a time when humans are healthier and 5live longer than at any time in our history. The Office for National Statistics figures, recently released, make heartening if surprising reading. They show that 2most men are surviving until the age of 85, while women are living four years longer. Furthermore, we can expect these figures to increase as the century progresses. What’s driving this extraordinary increase in human 6longevity? The increase has been driven by a number of advances. Firstly, the huge reduction in neonatal and infant deaths. These days, nearly all babies born in a prosperous advanced nation can expect to survive into adulthood. Over half the couples in the world are having fewer than two children each. This is partly because almost everywhere infant mortality is falling, globally faster today than at any time in human history. Sanitation, vaccination and better diets have increased lifespans once we survive infancy, but they cannot wholly explain why people are living into their eighties and beyond. A cut in physical stress and a huge reduction in exposure to toxic and carcinogenic substances in the environment may explain much of the increase. In the 1950s, thousands died or became very ill during the London smogs. That threat, along with numerous other environmental containments, has gone. We have also begun to stop smoking and we are drinking less, too. Finally, life is much safer than it used to be. As psychologist Steven Pinker shows in his book, The better angels of our nature, the history of all societies has shown an amazing decline in violence over the past century. We are ten times less likely to be murdered today than we were two hundred years ago, and three times less likely to be killed on the roads than we were in the 1960s. So, can the increase in longevity continue? According to gerontologists, there is no clear answer. Currently the maximum human lifespan is 122 years, attained by the French woman Jeanne Calment who died in 1997. Significantly, no one has come close to her astonishing record. Instead, more and more of us are dodging the bullets of middle age and living to our personal genetic potential. So how long is the natural human lifespan? The answer seems to be that, in a world where infectious diseases are kept at bay and where we are safe from predators and starvation, and provided we keep our lifestyles in check, 3most people should reach 80 or 90. Something very big is going on, wrote Ban Ki-moon, the United Nations secretary general. He warned that “the social and economic implications of this phenomenon are profound, extending far beyond the individual 7older person and the immediate family, touching broader society and the global community in unprecedented ways”. What the figures show more than anything is that we need a rapid and radical rethink of how we treat 8the elderly among us, as they will soon be the majority. most people should reach 80 or 90. (ref. 3) The function of should in the fragment above is to:',
	 null,null,19),
     
-- Q1 Análise Combinatória - Matemática
    ('2014','UEMG',NULL,
     'Na Copa das Confederações de 2013, no Brasil, onde a seleção brasileira foi campeã, o técnico Luiz Felipe Scolari tinha à sua disposição 23 jogadores de várias posições, sendo: 3 goleiros, 8 defensores, 6 meio-campistas e 6 atacantes. Para formar seu time, com 11 jogadores, o técnico utiliza 1 goleiro , 4 defensores , 3 meio-campistas e 3 atacantes. Tendo sempre Júlio César como goleiro e Fred como atacante, o número de times distintos que o técnico poderá formar é',
	 null,null,20),
     
-- Q1 Progressão Aritimética - Matemática
    ('2009','PUC-RIO',NULL,
     'Temos uma progressão aritmética de 20 termos onde o 1° termo é igual a 5. A soma de todos os termos dessa progressão aritmética é 480. O décimo termo é igual a:',
	 null,null,21),

-- Q1 Progressão Geométrica - Matemática
    ('2016','PUC-RS',NULL,
     'Dada a sequência numérica (a, - a, a, -a, a, -a, ...) com a e R, a soma de seus termos só existirá se',
	 null,null,22),
     
-- Q1 Figuras de Linguagem - Português
    ('2016','IFBA',null,
     'Analise a imagem a seguir e identifique a figura de linguagem em evidência no título da manchete.',
	 'Port-Figuras Linguagem','imgQ1',23),     
     
-- Q1 Interpretação de Texto - Português
    ('2015','UEG',NULL,
     'Há entre o enunciado “não atacar é o melhor ataque” e o ditado futebolístico “a melhor defesa é o ataque” uma relação denominada de',
	 'Port-Interpretacao Texto','imgQ1',24),
     
-- Q1 Orações Subordinadas - Português
    ('2018',null,'ITA',
     'O Brasil será, em poucas décadas, um dos países com maior número de idosos do mundo, e precisa correr para poder atendê-los no que eles têm de melhor e mais saudável: o desejo de viver com independência e autonomia. [...] O mantra da velhice no século XXI é “envelhecer no lugar”, o que os americanos chamam de aging in place. O conceito que guia novas políticas e negócios voltados para os longevos tem como principal objetivo fazer com que as pessoas consigam permanecer em casa o maior tempo possível, sem que, para isso, precisem de um familiar por perto. Não se trata de apologia da solidão, mas de encarar um dado da realidade contemporânea: as residências não abrigam mais três gerações sob o mesmo teto e boa parte dos idosos de hoje prefere, de fato, morar sozinha, mantendo-se dona do próprio nariz. Disponível em: <http://veja.abril.com.br/brasillenvelhecer-no-seculo-xxi/>, 18 mar. 2016. Adaptado. Acesso em: 10 ago. 17 A conjunção em destaque na frase “Não se trata de apologia da solidão, mas de encarar um dado da realidade contemporânea: ...” possui a função semântica de',
	 null,null,25),

-- Q1 Cadeias Carbônicas - Química
    ('2016','UECE',null,
     'O benzeno é usado principalmente para produzir outras substâncias químicas. Seus derivados mais largamente produzidos incluem o estireno, que é usado para produzir polímeros e plásticos, fenol, para resinas e adesivos, e ciclohexano, usado na manufatura de nylon. Quantidades menores de benzeno são usadas para produzir alguns tipos de borrachas, lubrificantes, corantes, detergentes, fármacos, explosivos e pesticidas. O benzeno não é representado apenas por uma estrutura de Lewis, mas por mais de um arranjo para descrever sua estrutura, que corresponde ao efeito mesomérico ou ressonância e é identificada',
	 null,null,26), 
     
-- Q1 Compostos Iônicos - Química
    ('2013','CEFET-MG',null,
     'Considere o esquema a seguir.',
	 'Qui-Compostos Ionicos','imgQ1',27),
     
-- Q1 Compostos Moleculares - Química
    ('2017','IF-SUL',null,
     'As ligações químicas existentes na formação das substâncias NaCL, HCL e CL2 são, respectivamente,',
	 null,null,28),

-- Q1 Cidadania - Sociologia
    ('2017','INEP','ENEM',
     'Art. 231. São reconhecidos aos índios sua organização social, costumes, línguas, crenças e tradições, e os direitos originários sobre as terras que tradicionalmente ocupam, competindo à União demarcá-las, proteger e fazer respeitar todos os seus bens. BRASIL. Constituição da República Federativa do Brasil de 1988. Disponível em: www.planalto.gov. br. Acesso em: 27 abr. 2017. A persistência das reivindicações relativas à aplicação desse preceito normativo tem em vista a vinculação histórica fundamental entre',
	 null,null,29),

-- Q1 Movimentos Sociais - Sociologia
    ('2014','UEA',null,
     'A questão colocada em debate pela charge é',
	 'Soc-Movimentos Sociais','imgQ1',30),  
     
-- Q1 Sociologia Contemporânea - Sociologia
    ('2015','UEMA',null,
     'As novas tecnologias de comunicação têm moldado a vida moderna, a exemplo da situação expressa na charge.',
	 'Soc-Contemporanea','imgQ1',31);    

insert into tbAlternativa(texto,correta,cod_questao)
values

-- Alternativas da Q1- Renascimento de Artes  
/*A*/('a imitação das formas artísticas medievais e a ênfase na natureza espiritual de Cristo.',
      false,1),
      
/*B*/('a preocupação intensa com a forma artística e a ausência de significado religioso do quadro.',
      false,1),
      
/*C*/('a disposição da figura de Cristo em perspectiva geométrica e o conteúdo realista da composição.',
      true,1),
      
/*D*/('a gama variada de cores luminosas e a concepção otimista de uma humanidade sem pecado.',
       false,1),
       
/*E*/('a idealização do corpo do Salvador e a noção de uma divindade desvinculada dos dramas humanos.',
      false,1),

-- Alternativas da Q1- Bioquímica de Biologia
/*A*/('são heterozigotos e devem seguir uma dieta com algumas restrições lipídicas.',
      false,2),
      
/*B*/('são homozigotos e devem seguir uma dieta com algumas restrições proteicas.',
      true,2),
      
/*C*/('podem ser heterozigotos ou homozigotos e sua dieta deve ser rica em proteínas. ',
      false,2),
      
/*D*/('podem ser heterozigotos ou homozigotos e devem evitar proteínas e lipídios.',
	  false,2),
      
-- Alternativas da Q1- Ecologia de Biologia
/*A*/('I.',false,3),
/*B*/('II.',false,3),
/*C*/('III.',false,3),
/*D*/('IV.',false,3),
/*E*/('V.',true,3),
      
-- Alternativas da Q1- Genética de Biologia
/*A*/('autossômica dominante.',true,4),
/*B*/('autossômica recessiva.',false,4),
/*C*/('ligada ao X dominante.',false,4),
/*D*/('ligada ao X recessiva.',false,4),
/*E*/('autossômica codominante.',false,4),

-- Alternativas da Q1- Existencialismo de Filosofia
/*A*/('consciência de si e angústia humana.',
      true,5),
      
/*B*/('inevitabilidade do destino e incerteza moral.',
      false,5),
      
/*C*/('tragicidade da personagem e ordem do mundo.',
      false,5),
      
/*D*/('racionalidade argumentativa e loucura iminente.',
      false,5),
      
/*E*/('dependência paterna e impossibilidade de ação.',
      false,5),

-- Alternativas da Q1- Iluminismo de Filosofia
/*A*/('apontou a necessidade de limitar a liberdade individual para impedir que o excesso degenerasse em anarquismo.',
	false,6),
    
/*B*/('acentuou que o Estado não possui poder ilimitado, o qual nada mais é do que a somatória do poder dos membros da sociedade.',
	true,6),
    
/*C*/('visou defender a tese de que apenas a federalização política é compatível com a democracia orgânica.',
      false,6),
      
/*D*/('mostrou que, sem centralização e dependência dos poderes ao Executivo, não há paz social.',
	 false,6),
     
/*E*/('procurou salientar que a sociedade industrial somente se desenvolverá a partir de minucioso planejamento econômico.',
	false,6),
    
-- Alternativas da Q1- Politica de Filosofia
/*A*/('entravam em conflito.',true,7),
/*B*/('recorriam aos clérigos.',false,7),
/*C*/('consultavam os anciãos.',false,7),
/*D*/('apelavam aos governantes.',false,7),
/*E*/('exerciam a solidariedade.',false,7),

-- Alternativas da Q1- Cal de Física
/*A*/('é sempre maior que zero',false,8),
/*B*/('é sempre menor que zero',false,8),
/*C*/('varia conforme o estado de agregação da substância',false,8),
/*D*/('é sempre constante à mesma pressão',true,8),
/*E*/('varia independentemente do estado de agregação da substância',false,8),

-- Alternativas da Q1- Hidro de Física
/*A*/('50 rad/s',false,9),
/*B*/('100 rad/s',true,9),
/*C*/('150 rad/s',false,9),
/*D*/('200 rad/s',false,9),
/*E*/('250 rad/s',false,9),

-- Alternativas da Q1- Ondas Eletro de Física
/*A*/('I, apenas.',false,10),
/*B*/('II, apenas.',true,10),
/*C*/('I e II, apenas.',false,10),
/*D*/('I e III, apenas.',false,10),
/*E*/('II e III, apenas.',false,10),

-- Alternativas da Q1- Agropecuaria de Geo
/*A*/('agricultura camponesa ocupa 24% das terras porque é formada por grandes propriedades rurais.',
	  false,11),
      
/*B*/('a agricultura camponesa ocupa 74% da mão de obra porque utiliza um grau de mecanização inferior ao agronegócio.',
	 true,11),
     
/*C*/('a agricultura camponesa prioriza a produção de commodities, por isso obtém o total de 14% do crédito agrícola brasileiro.',
     false,11),
     
/*D*/('o agronegócio obtém 86% do crédito porque suas terras têm baixa fertilidade e ocupam as encostas.',
	 false,11),
     
/*E*/('o agronegócio participa com 60% da produção global porque produz para o mercado interno brasileiro.',
     false,11),
     
-- Alternativas da Q1- Geopolitica de Geo
/*A*/('os países membros impuseram, como condição para a volta de Cuba à OEA, o cumprimento do acordo de fechamento da prisão de Guantánamo.',
	  false,12),
      
/*B*/('o retorno de Cuba à OEA deve resultar de um processo de diálogo a pedido do próprio governo cubano.',
	 true,12),
     
/*C*/('a atual decisão da OEA foi criticada por países da América do Sul que não fazem parte dessa organização como, por exemplo, Venezuela e Bolívia.',
     false,12),
     
/*D*/('o Brasil não participou da decisão da OEA, em junho de 2009, mantendo-se alheio ao processo de diálogo e de negociação com Cuba.',
	 false,12),
      
/*E*/('os EUA retiraram-se do processo de discussão da referida Resolução por discordarem da readmissão de Cuba à OEA.',
      false,12),

-- Alternativas da Q1- Oriente Médio de Geo
/*A*/('Os estados europeus se utilizam de artifícios diversos para conquistar países em outros continentes.',
	 false,13),
     
/*B*/('Os países árabes conseguiram definir uma brecha no protecionismo europeu, criando conflitos civis fictícios.',
	 false,13),
     
/*C*/('Os terroristas podem se aproveitar do enorme fluxo de refugiados das guerras civis dos países árabes para entrarem na Europa.',
	 true,13),
     
/*D*/('Os países do Leste europeu são os mais prejudicados com o fluxo de refugiados das guerras civis por estarem na fronteira continental.',
     false,13),
     
/*E*/('Os signatários dos Acordos de Schengen são os que mais criam problemas para a entrada dos refugiados sírios no continente europeu por via terrestre e marítima.',
     false,13),

-- Alternativas da Q1 Independecia do Brasil de História  
/*A*/('equilíbrio dos poderes com o controle constitucional do Imperador e as ordens sociais privilegiadas.',
       false,14),
       
/*B*/('ampla participação política de todos os cidadãos, com exceção dos escravos.',
      false,14),

/*C*/('laicização do Estado por influência das ideias liberais.',
       false,14),

/*D*/('predominância do poder do imperador sobre todo o sistema através do Poder Moderador.',
       true,14),

/*E*/('autonomia das Províncias e, principalmente, dos Municípios, reconhecendo-se a formação regionalizada do país.',
	   false,14),
       
-- Alternativas da Q2 Independecia do Brasil de História 
/*A*/('Reconhecimento pioneiro dos Estados Unidos, impedindo a intervenção da força da Santa Aliança no Brasil.',
       false,15),
       
/*B*/('Reconhecimento imediato da Inglaterra, interessada exclusivamente no promissor mercado brasileiro.',
       false,15),
       
/*C*/('Desconfiança dos brasileiros, reforçada após o falecimento de D. João VI, de que o reconhecimento reunificaria os dois reinos.',
       false,15),
       
/*D*/('Reação das potências europeias às ligações privilegiadas com a Áustria, terra natal da Imperatriz.',
       false,15),
       
/*E*/('Expectativa das potências europeias, que aguardavam o reconhecimento de Portugal, fiéis à política internacional traçada a partir do Congresso de Viena.',
       true,15),
       
-- Alternativas da Q3 Independecia do Brasil de História 
/*A*/('o comércio de importação entrou em colapso com a vinda da Família Real (1808);',
      false,16),
      
/*B*/('os Estados Unidos faziam concorrência aos nossos produtos, especialmente o açúcar;',
      false,16),
       
/*C*/('os principais produtos de exportação - açúcar e algodão - não eram suficientes para o equilíbrio da balança comercial do país;',
      true,16),
      
/*D*/('o capitalismo inglês se recusava a fornecer empréstimos para a agricultura;',
       false,16),
       
/*E*/('o sistema bancário era praticamente inexistente, só tendo sido fundado o Banco do Brasil em 1850.',
      false,16),
      
-- Alternativas da Q4 Independecia do Brasil de História       
/*A*/('à mediação da França e dos Estados Unidos e à atribuição do título de Imperador Perpétuo do Brasil a D. João VI.',
       false,17),
       
/*B*/('à mediação da Espanha e à renovação dos acordos comerciais de 1810 com a Inglaterra.',
       false,17),
       
/*C*/('à mediação de Lord Strangford e ao fechamento das Cortes Portuguesas.',
       false,17),

/*D*/('à mediação da Inglaterra e à transferência para o Brasil de dívida em libras contraída por Portugal no Reino Unido.',
       true,17),
       
/*E*/('à mediação da Santa Aliança e ao pagamento à Inglaterra de indenização pelas invasões napoleônicas.',
       false,17),
       
-- Alternativas da Q5 Independecia do Brasil de História
/*A*/('liberal-conservador, que defendia a monarquia constitucional, a integridade territorial e o regime centralizado.',
      true,18),
      
/*B*/('maçônico, que pregava a autonomia provincial, o fortalecimento do executivo e a extinção da escravidão.',
       false,18),
       
/*C*/('liberal-radical, que defendia a convocação de uma Assembleia Constituinte, a igualdade de direitos políticos e a manutenção da estrutura social.',
       false,18),
       
/*D*/('cortesão, que defendia os interesses recolonizadores, as tradições monárquicas e o liberalismo econômico.',
       false,18),
       
/*E*/('liberal-democrático, que defendia a soberania popular, o federalismo e a legitimidade monárquica.',
       false,18),
 
-- Alternativas da Q1 - Revolução Francesa de História   
/*A*/('defesa do mercantilismo e do protecionismo comercial ingleses, ameaçados pela cobiça de outros impérios, sobretudo o francês.',
       false,19),
 
/*B*/('crítica à monarquia inglesa, vista, no contexto da expansão revolucionária francesa, como opressora 
       da própria sociedade inglesa.', 
       true, 19),

/*C*/('alegoria das pretensões francesas sobre a Inglaterra, já que Napoleão Bonaparte era frequentemente considerado, pela burguesia, um líder revolucionário ateu.',
       false,19),
 
/*D*/('apologia da monarquia e da igreja inglesas, contrárias à laicização da política e dos costumes típicos da Europa da época.', 
       false,19),
       
/*E*/('propaganda de setores comerciais ingleses, defensores dos monopólios comerciais e contrários ao livre-cambismo que, à época, ganhava força no país.',
       false,19),      
       
-- Alternativas da Q2 Revolução Francesa de História  
/*A*/('Abolição dos privilégios especiais do clero e da nobreza; Declaração dos Direitos do Homem e do Cidadão; subordinação da Igreja ao Estado; elaboração de uma constituição para a França; reformas administrativas e judiciárias; e ajuda à economia francesa.', 
       true,20),
	
/*B*/('Declaração Universal dos Direitos Humanos; elaboração do Edito de Nantes, que dava liberdade religiosa para os não católicos; criação do Banco da França; legalização da anexação dos territórios da margem esquerda do Reno; elaboração do Código Civil Francês.', 
       false,20),
       
/*C*/('Criação do Código Civil Francês; criação do Banco da França; elaboração da Declaração dos Direitos do Homem e do Cidadão; elaboração das primeiras leis trabalhistas que proibiam o trabalho infantil; concessão do direito ao voto às mulheres.', 
       false, 20),
      
/*D*/('Direito de voto para todos os homens, independente da renda; favorecimento de legislação que incentivava o capitalismo comercial; reforma do sistema educacional com a criação dos liceus clássicos e de ofícios; maior autonomia para as províncias históricas da França; criação de uma estrutura descentralizada de governo na França.', 
       false, 20),
       
/*E*/('Regulamentação das leis trabalhistas na França; extensão do direito de voto para todos os homens e mulheres maiores de 18 anos; reconhecimento do direito de minorias; criação do Código Civil; a França se tornou uma confederação descentralizada, dividida em cantões com alto grau de autonomia política; elaboração da Constituição Civil do Clero.', 
       false, 20),   

-- Alternativas da Q3 Revolução Francesa de História  
/*A*/('da pequena burguesia que, apesar das conquistas econômicas, via-se pressionada pelo aumento no custo de vida.', 
      true, 21),

/*B*/('dos camponeses, já que ambos lutavam pela abolição dos privilégios feudais no campo e posse de terras coletivas.',
      false,21),
      
/*C*/('dos membros do baixo clero, uma vez que lutavam por reformas sociais, mas não eram contra a liberdade religiosa.',
       false,21),

/*D*/('da classe dos girondinos, pois apesar das diferenças de classe, ambos os grupos eram politicamente moderados.',
      false,21),
      
-- Alternativas da Q4 Revolução Francesa de História        
/*A*/('Os sujeitos envolvidos na ação política representada na tela são homens do campo com seus instrumentos de ofício nas mãos.', 
       false,22),

/*B*/('O quadro evoca temas da Revolução Francesa, como a bandeira tricolor e a figura da Liberdade, mas retrata um ato político assentado na teoria bolchevique.',
      false,22),

/*C*/('O quadro mostra tanto o ideário da Revolução Francesa reavivado pelas lutas políticas de 1830 na França quanto a posição política do pintor.',
      true,22),
      
/*D*/('No quadro, vê-se uma barricada do front militar da guerra entre nobres e servos durante a Revolução Francesa, sendo que a Liberdade encarna os ideais aristocráticos.',
      false,22),

-- Alternativas da Q5 Revolução Francesa de História  
/*A*/('o julgamento e a execução de cidadãos suspeitos e o tabelamento do preço do pão.',
       true,23),
       
/*B*/('a prisão do rei e da rainha e a conquista e colonização de territórios no Norte da África.',
       false,23),
       
/*C*/('a vitória na guerra contra a Áustria e a Prússia e o fim do controle sobre os salários dos operários.',
       false,23),
       
/*D*/('a ascensão política dos principais comandantes militares e a implantação da monarquia constitucional.',
      false,23),
      
/*E*/('o início da perseguição e da repressão contra religiosos e a convocação dos Estados Gerais.',
       false,23),
     
-- Alternativas da Q1- Segunda Guerra de História  
/*A*/('crise mundial do petróleo e a flexibilização do trabalho.', false,24),
/*B*/('primeira grande crise do capital e as sequelas da Segunda Guerra Mundial.',true,24),
/*C*/('sequelas da Segunda Guerra Mundial e a flexibilização do trabalho.',false,24),
/*D*/('primeira grande crise do capital e a crise Mundial do petróleo.',false,24),

-- Alternativas da Q2 - Segunda Guerra de História  
/*A*/('Guerra Fria.' ,true,25),
/*B*/('Perestroika.', false,25),						
/*C*/('Glasnost.',false,25),
/*D*/('Holocausto. ',false,25),
/*E*/('Período Bipolar.',false,25),

-- Alternativas da Q3 - Segunda Guerra de História  
/*A*/('foram necessários para a construção de automóveis brasileiros durante a Segunda Guerra Mundial',false,26),
/*B*/('eram, em sua maioria, gaúchos',false,26),
/*C*/('eram os seringueiros que foram para a Amazônia durante a Segunda Guerra Mundial',true,26),
/*D*/('oram necessários para aumentar a produção de borracha no Brasil na Segunda Guerra Mundial, porque uma praga destruiu as seringueiras da Ásia',false,26),

-- Alternativas da Q4 - Segunda Guerra de História  
/*A*/('A Conferência de Potsdam definiu a internacionalização de Berlim e a divisão da Alemanha em duas áreas de influência: a área sob influência da União Soviética e a sob influência dos EUA.',
       false,27),

/*B*/('Embora combatido por liberais, trotskistas e social-democratas, o Pacto de Não-Agressão Germano-Soviético foi fundamental para retardar o início da Segunda Guerra Mundial.',
       false,27),

/*C*/('A política da Paz Armada desencadeada por Hitler, ainda que não necessariamente expansionista, abriu o caminho para a guerra, por gerar desconfiança e temor generalizados.', 
       false,27),

/*D*/('A Liga das Nações condenou a anexação da Áustria pela Alemanha nazista, tendo sido veemente o protesto da França e da Inglaterra, que romperam relações diplomáticas com Berlim.',
       false,27),

/*E*/('Em face de sua contribuição na luta contra o Reich nazista, a União Soviética teve o reconhecimento internacional reforçado na Conferência de Teerã e, em lalta, assegurou sua influência no Leste Europeu.', 
       true,27),

-- Alternativas da Q5 - Segunda Guerra de História   
/*A*/('A crise cambial de 1952 resultou, entre outros fatores, da defasagem entre a concessão de licenças e a efetivação das importações, da queda das exportações de algodão decorrente da crise da indústria têxtil mundial e da quebra da safra de trigo nos EUA, que obrigou o governo brasileiroa importar da Argentina esse cereal, em condições menos favoráveis.',
      false,28),
 
/*B*/('Conforme apontado por Carlos Lessa na obra clássica Quinze anos de Política Econômica, a industrialização “não intencional”, que corresponde à política fiscal expansionista adotada no final dos anos 40, mesmo na ausência de medidas de planejamento, teria fortalecido setores da indústria brasileira.', 
       false,28),
 
/*C*/('A Instrução 70, adotada, em 1953, pela Superintendência da Moeda e do Crédito, órgão antecessor do Banco Central do Brasil, estabeleceu taxas múltiplas de câmbio, atribuindo taxas mais depreciadas à importação de máquinas, equipamentos e matérias-primas essenciais.', 
       false, 28),
	 
/*D*/('O período em que a taxa de câmbio oficial manteve-se fixa (CR$ 18,50 por dólar) representou, na prática, vigorosa apreciação da taxa de câmbio nominal.', 
       false,28),
 
/*E*/('A adoção da Instrução 113 da Superintendência da Moeda e do Crédito, que permitia a importação de bens de capital sem necessidade de cobertura cambial, não representou ruptura do tratamento vigente do capital estrangeiro. O governo Vargas, apesar da retórica nacionalista, já vinha adotando políticas que estimulavam a mobilização de recursos de origem externa e orientando inversões em setores prioritários.', 
      true, 28),       
       
-- Alternativas da Q1-- Artigo de Inglês
/*A*/('An/a/the/-/the/an',false,29),
/*B*/('-/the/-/the/-/an ',false,29),
/*C*/('The/the/the/-/the/the',false,29),
/*D*/('An/-/-/the/-/-',false,29),
/*E*/('The/a/-/the/the/the',true,29),
       
-- Alternativas da Q1- Comp. de Inglês
/*A*/('viaja muito pouco e que essa escolha fez toda a diferença em sua vida.',
	 false,30),
     
/*B*/('festeja o fato de ter sido ousado na escolha que fez em sua vida.',
     true,30),
     
/*C*/('lamenta por ter sido um viajante que encontrou muitas bifurcações.',
	 false,30),
     
/*D*/('reconhece que as dificuldades em sua vida foram todas superadas.',
	 false,30),
     
/*E*/('percorre várias estradas durante as diferentes fases de sua vida.',
	 false,30),

-- Alternativas da Q1- Verbos de Inglês
/*A*/('give advice',false,31),
/*B*/('clear doubt',false,31),
/*C*/('express possibility',true,31),
/*D*/('impose obligation',false,31),

-- Alternativas da Q1- Analise Comb.  Matemática
/*A*/('14 000.',true,32),
/*B*/('480',false,32),
/*C*/('8! + 4!',false,32),
/*D*/('72 000',false,32),

-- Alternativas da Q1- Progressão arit.  Matemática
/*A*/('20',false,33),
/*B*/('21',false,33),
/*C*/('22',false,33),
/*D*/('23',true,33),
/*E*/('24',false,33),

-- Alternativas da Q1-Progressão geo.  Matemática que na vdd é a Q2
/*A*/('a > 1',false,34),
/*B*/('a = 1',false,34),
/*C*/('0 < a < 1',false,34),
/*D*/('a = 0 ',true,34),
/*E*/('a < 0',false,34),

-- Alternativas da Q1- Figuras de linguagem Portugues
/*A*/('Metáfora.',false,35),
/*B*/('Hipérbole.',false,35),
/*C*/('Hipérbato.',false,35),
/*D*/('Metonímia.',true,35),
/*E*/('Pleonasmo.',false,35),

-- Alternativas da Q1- Interp. Texto de Portugues
/*A*/('intertextualidade',true,36),
/*B*/('contextualidade',false,36),
/*C*/('prolixidade',false,36),
/*D*/('informatividade',false,36),

-- Alternativas da Q1- Orações subordinadas de Portugues
/*A*/('retificação.',true,37),
/*B*/('compensação.',false,37),
/*C*/('complementação.',false,37),
/*D*/('separação.',false,37),
/*E*/('acréscimo.',false,37),

-- Alternativas da Q1- Cadeias Carb. de Química
/*A*/('por ser bastante estável e agir como se tivesse isoladamente ligações simples e ligações duplas.',
	 false,38),
     
/*B*/('pelas distâncias entre os átomos de carbono das ligações simples (1,54 Â) e das ligações duplas  (1,34 Â).',
	false,38),
    
/*C*/('pela variação da posição dos elétrons (sigma) que provocam mudanças nas posições dos átomos de carbono.',
	false,38),
    
/*D*/('por possuir distância intermediária entre os átomos de carbono, comparada com a distância da ligação simples e a distância da ligação dupla.',
	true,38),
    
-- Alternativas da Q1- Comp. Iônicos de Química
/*A*/('I a lâmpada está acesa, devido à capacidade de condução de calor.',
	 false,39),
     
/*B*/('II a lâmpada está apagada, porque o açúcar é insolúvel na água.',
	false,39),
    
/*C*/('II a lâmpada está apagada, pois o açúcar é uma substância composta.',
	false,39),
    
/*D*/('I a lâmpada está acesa, devido à movimentação dos íons presentes na solução.',
	true,39),
    
-- Alternativas da Q1- Comp. Mole de Química
/*A*/('iônica, covalente polar, covalente apolar.',
	  true,40),
      
/*B*/('iônica, covalente apolar e covalente polar.',
	 false,40),
     
/*C*/('covalente polar, covalente apolar e iônica.',
     false,40),
     
/*D*/('covalente apolar, covalente polar e iônica.',
     false,40),
     
-- Alternativas da Q1- Cidadania de Socio
/*A*/('etnia e miscigenação racial.',false,41),
/*B*/('sociedade e igualdade jurídica.',false,41),
/*C*/('espaço e sobrevivência cultural.',true,41),
/*D*/('progresso e educação ambiental.',false,41),
/*E*/('bem-estar e modernização econômica.',false,41),

-- Alternativas da Q1- Mov. de Socio
/*A*/('o desenvolvimento que não pode ser alcançado com a presença de áreas verdes.',
	 false,42),
     
/*B*/('a falta de materiais de proteção individual para as pessoas próximas às caçambas.',
	 false,42),
     
/*C*/('o caráter efêmero das construções civis que um dia serão destruídas.',
	 false,42),
     
/*D*/('a situação precária dos trabalhadores ligados ao transporte de carga no Brasil.',
	 false,42),
     
/*E*/('o descarte irregular de lixo e os impactos ambientais e sociais implicados.',
	 true,42),

-- Alternativas da Q1- Contemporanea de Socio
/*A*/('grupo e de conflito sociais.',
	 false,43),
     
/*B*/('mobilidade e de ação sociais.',
	 false,43),
     
/*C*/('interação e de relação sociais.',
	 true,43),
     
/*D*/('movimento e de instituição sociais.',
	 false,43),
     
/*E*/('alienação e de desigualdade sociais.',
	 false,43);

insert into tbResposta(cod_usuario,cod_questao,cod_alternativa)
values
(1,1,3),
(1,2,7),
(1,3,14),
(1,4,15),
(1,5,20),
(1,6,26),
(1,7,30),
(1,8,38),
(1,9,41),
(1,10,46);

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


/*Em desenvolvimento
R.tempo_inicial, R.tempo_final, A.correta,
select R.cod_usuario,R.cod_alternativa,Q.enunciado, A.texto, A.correta count(A.id_alternativa) as qtdeIncorreta from tbresposta as R 
inner join tbQuestao as Q on Q.id_questao = R.cod_questao
inner join tbAlternativa as A on A.id_alternativa = R.cod_alternativa
where R.cod_alternativa = 1;
#inner join tbMateria     as M on Q.cod_materia = M.id_materia 
#inner join tbDisciplina  as D on M.cod_disciplina = D.id_disciplina 
where R.cod_questao = 1 
group by Q.id_questao;
*/


/*
#Query das alternativas com as respostas
SELECT Q.id_questao, Q.edicao,Q.banca,Q.enunciado,M.temas, A.correta  FROM tbquestao as Q 
INNER JOIN tbMateria AS M ON Q.cod_materia = M.id_materia 
LEFT  JOIN  tbAlternativa AS A ON  A.cod_questao = Q.id_questao
INNER JOIN tbresposta AS R on R.cod_alternativa = A.id_alternativa
WHERE Q.COD_MATERIA = 1 AND correta = true
GROUP BY  Q.id_questao, Q.edicao,Q.banca,Q.enunciado,M.temas 
ORDER BY Q.id_questao ;
*/

/*
-- Desempenho do usuário
SELECT count(id_resposta) as qtdeCertas FROM tbResposta where certo = false group by month(data) ;

*/