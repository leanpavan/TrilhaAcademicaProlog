% ###############################################################################################################
% FATOS (BASE DE DADOS)
% ###############################################################################################################

% Trilha/2 -> trilha(nome_trilha, desc_trilha)
trilha(seguranca_informacao, "Trilha que envolve práticas e medidas adotadas para proteger dados e informações contra acessos não autorizados, garantindo sua confidencialidade, integridade e disponibilidade.").
trilha(desenvolvimento_web, "Trilha que envolve criação de interfaces e sistemas web, através de HTML, CSS, JS, de forma criativa e agradavéis para os usuários.").
trilha(ciencia_dados, "Trilha que envolve a pratica de coleta, processamento e analise de grandes volumes de dados.").
trilha(inteligencia_artificial, "Trilha que envolve praticas e aplicações das potencialidades de inteligencias artificiais para inovação e produção de conhecimento.").
trilha(redes_infraestrutura, "Trilha que envolve projetos de infraestrutura de redes, bem como a implantação, configuração e administração de redes de computadores.").

% Perfil/3 -> perfil(nome_trilha, habilidade_trilha, peso)
% segurança da informação
perfil(seguranca_informacao, matematica_estatistica, 4).
perfil(seguranca_informacao, design_digital, 0).
perfil(seguranca_informacao, pesquisa_aed, 3).
perfil(seguranca_informacao, legislacao, 5).
perfil(seguranca_informacao, sistema_fisico, 2).
perfil(seguranca_informacao, comunicacao, 3).
perfil(seguranca_informacao, conexoes_rede, 3).
perfil(seguranca_informacao, ataques_cibernetico, 5).
perfil(seguranca_informacao, html_css_js, 0).
perfil(seguranca_informacao, python, 2).
perfil(seguranca_informacao, redes_neurais, 0).

% desenvolvimento web
perfil(desenvolvimento_web, matematica_estatistica, 1).
perfil(desenvolvimento_web, design_digital, 5).
perfil(desenvolvimento_web, pesquisa_aed, 2).
perfil(desenvolvimento_web, legislacao, 1).
perfil(desenvolvimento_web, sistema_fisico, 1).
perfil(desenvolvimento_web, comunicacao, 4).
perfil(desenvolvimento_web, conexoes_rede, 1).
perfil(desenvolvimento_web, ataques_cibernetico, 0).
perfil(desenvolvimento_web, html_css_js, 5).
perfil(desenvolvimento_web, python, 3).
perfil(desenvolvimento_web, redes_neurais, 0).

% ciencia de dados
perfil(ciencia_dados, matematica_estatistica, 5).
perfil(ciencia_dados, design_digital, 0).
perfil(ciencia_dados, pesquisa_aed, 5).
perfil(ciencia_dados, legislacao, 3).
perfil(ciencia_dados, sistema_fisico, 2).
perfil(ciencia_dados, comunicacao, 4).
perfil(ciencia_dados, conexoes_rede, 1).
perfil(ciencia_dados, ataques_cibernetico, 0).
perfil(ciencia_dados, html_css_js, 0).
perfil(ciencia_dados, python, 4).
perfil(ciencia_dados, redes_neurais, 0).

% inteligencia artificial
perfil(inteligencia_artificial, matematica_estatistica, 5).
perfil(inteligencia_artificial, design_digital, 0).
perfil(inteligencia_artificial, pesquisa_aed, 4).
perfil(inteligencia_artificial, legislacao, 3).
perfil(inteligencia_artificial, sistema_fisico, 1).
perfil(inteligencia_artificial, comunicacao, 2).
perfil(inteligencia_artificial, conexoes_rede, 3).
perfil(inteligencia_artificial, ataques_cibernetico, 1).
perfil(inteligencia_artificial, html_css_js, 0).
perfil(inteligencia_artificial, python, 4).
perfil(inteligencia_artificial, redes_neurais, 5).

% redes e infraestrutura
perfil(redes_infraestrutura, matematica_estatistica, 2).
perfil(redes_infraestrutura, design_digital, 0).
perfil(redes_infraestrutura, pesquisa_aed, 3).
perfil(redes_infraestrutura, legislacao, 3).
perfil(redes_infraestrutura, sistema_fisico, 5).
perfil(redes_infraestrutura, comunicacao, 4).
perfil(redes_infraestrutura, conexoes_rede, 5).
perfil(redes_infraestrutura, ataques_cibernetico, 2).
perfil(redes_infraestrutura, html_css_js, 0).
perfil(redes_infraestrutura, python, 0).
perfil(redes_infraestrutura, redes_neurais, 0).

% Pergunta/3 -> pergunta(numero_pergunta, desc_pergunta, habilidade_trilha)
pergunta(1, "Você possui afinidade em matemática e estátistica?", matematica_estatistica).
pergunta(2, "Você possui afinidade em design digital?", design_digital).
pergunta(3, "Você possui afinidade em análise exploratória de dados ?", pesquisa_aed).
pergunta(4, "Você possui afinidade em legislação, voltada ao cenário computacional?", legislacao).
pergunta(5, "Você possui afinidade no manuseio de dispositivos e equipamentos físicos?", sistema_fisico).
pergunta(6, "Você se considera comunicativo?", comunicacao).
pergunta(7, "Você possui interesse em conexões digitais e no funcionamento da internet?", conexoes_rede).
pergunta(8, "Você possui interesse em compreender ataques cibernéticos?", ataques_cibernetico).
pergunta(9, "Você possui afinidade em HTML, CSS e JS?", html_css_js).
pergunta(10, "Você possui afinidade em Python?", python).
pergunta(11, "Você possui interesse em redes neurais?", redes_neurais).

% Resposta/2 -> resposta(N_pergunta, Resposta_usuario) // dinamica
:- dynamic(resposta/2).

% ###############################################################################################################
% REGRAS
% ###############################################################################################################

% calcular_pontuacao/2: calculo dos pesos de acordo com o perfil de cada trilha
calcular_pontuacao(Trilha, Pontuacao) :-
    findall(Peso, (
        perfil(Trilha, Habilidade, Peso),
        pergunta(N_pergunta, _, Habilidade), % Ignora a descrição da pergunta
        resposta(N_pergunta, s)   % tava escrito "sim" ao inves de "s"
    ), Pesos),
    soma_lista(Pesos, Pontuacao).

% soma_lista/2: realizar soma da lista de pesos
soma_lista([], 0). % Caso base: a soma dos elementos da lista e vazio
soma_lista([H|T], Soma) :- % Caso recursivo: para uma lista nao vazia
    soma_lista(T, Soma_resto),
    Soma is H + Soma_resto.

% todas_pontuacoes/1: gerar lista de resultados contendo trilha e pontuação total
todas_pontuacoes(Resultados) :-
    findall((Trilha,Pontuacao),
        (trilha(Trilha, _), calcular_pontuacao(Trilha, Pontuacao)),
        Resultados).

% exibir_respostas/2: exibir quais foram as respostas do usuario para cada pergunta, com seus pesos
exibir_respostas(N_pergunta, Trilha) :- % caso recursivo
    resposta(N_pergunta, Resposta_usuario),
    perfil(Trilha, Habilidade, Peso),
    pergunta(N_pergunta,_, Habilidade),
    
    format("~w ~t~30| Resposta: ~w - Peso: ~w~n", [Habilidade, Resposta_usuario, Peso]),
    Proximo is N_pergunta + 1,
    exibir_respostas(Proximo, Trilha).

exibir_respostas(N_pergunta, _) :- % caso base, fim das respostas
    \+ resposta(N_pergunta, _), !,
    format("~nFim da execução do programa..").

% exibir_trilhas/1: exibir o ranking de trilhas de acordo em ordem decrescente
exibir_trilhas(Resultados) :-
    forall(member((Trilha,Pontuacao), Resultados),
           format("~w: ~t~31|~w pontos.~n", [Trilha, Pontuacao])).

% recomenda_trilha/2: calcular as pontuações e gerar a recomendação de trilha
recomenda_trilha(TrilhaMax, PontMax) :-
    todas_pontuacoes(Resultados),
    max_pontuacao(Resultados, (TrilhaMax, PontMax)),
    
    trilha(TrilhaMax, Descricao),
    format("~nTrilha recomendada: ~w.~ndescrição:~w.~ncom pontuação ~w~n~n", [TrilhaMax, Descricao, PontMax]),
    
    format("Ranking de trilhas por aptidão:~n"),
	sort(2, @>=, Resultados, ResultadosOrdenados),
    exibir_trilhas(ResultadosOrdenados).

% max_pontuação/2: calcular a pontuação maxima para recomendação
max_pontuacao([X], X).   % caso base: so um elemento
max_pontuacao([(T1,P1),(T2,P2)|Resto], Max) :-
    ( P1 >= P2 ->
        max_pontuacao([(T1,P1)|Resto], Max)
    ; 
        max_pontuacao([(T2,P2)|Resto], Max)
    ).


% #############################################################################################################
% Motor de Inferência e Interface com o Usuário

% execucar/0: fluxo do sistema
executar :-
    iniciar,
    faz_perguntas(1),
    recomenda_trilha(Trilha, _),
    format("~nHabilidades/interesses de acordo com suas respostas que levaram a essa recomendação:~n"),
	exibir_respostas(1, Trilha).
    
% iniciar/0: mensagem de inicio
iniciar :-
    % Limpa respostas antigas
    retractall(resposta(_, _)),
    writeln("Bem-vindo ao Sistema Especialista para Recomendação de Trilha Acadêmica"),
    writeln("Para encontrar a melhor trilha para você, responda todas as perguntas com s ou n").
    
% faz_pergunta/1 - recursivo
faz_perguntas(N_pergunta) :-
    pergunta(N_pergunta, Descricao, _),
    format("~n~n--------------------------------------------------~n~n"),
    format("~w~n",[Descricao]),
    read(Resposta_usuario),
    assertz(resposta(N_pergunta, Resposta_usuario)),
    
    Proximo is N_pergunta + 1,
    faz_perguntas(Proximo).

%faz_pergunta: caso base, fim das perguntas
faz_perguntas(N_pergunta) :-
    \+ pergunta(N_pergunta, _, _), !,
    format("~nFim das perguntas, calculando recomendação... ~n~n").
