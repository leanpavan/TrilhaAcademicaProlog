% Ciencia de dados
trilha(ciencia_de_dados, 'Análise e interpretação de grandes volumes de
dados para extrair conhecimento.').
perfil(ciencia_de_dados, matematica_estatistica, 5).
perfil(ciencia_de_dados, prog_python, 3).
pergunta(1, 'Você tem afinidade com matemática e estatística?',matematica_estatistica).
pergunta(2, 'Você possui conhecimentos de programacao em Python?',prog_python).

iniciar :-
    format("Bem-vindo ao sistema de trilhas~n"),
    format("Para encontrar a melhor trilha para voce, responda todas as perguntas com s ou n ~n~n"),
	faz_perguntas.
    %calcular_pontuacao
    %exibir_ranking

faz_perguntas :-
    pergunta(N_pergunta, Descricao, Habilidade_associada),
    format("~w~n",[Descricao]),
    read_line_to_string(user_input, InputStr),
	validar_resposta(N_pergunta,InputStr),
    fail.
    faz_perguntas.

validar_resposta(N_pergunta, 's') :-
    assertz(resposta(N_pergunta, s)).
validar_resposta(N_pergunta, _) :-
    assertz(resposta(N_pergunta, n)).

calcular_pontuacao(Trilha, Pontuacao) :-
    findall(Peso, (perfil(Trilha, Habilidade_associada, Peso),
            resposta(Habilidade_associada, sim)),
    		Pesos),
    soma_lista(Pesos, Pontuacao).

soma_lista([], 0). % Caso base: a soma dos elementos da lista e vazio
% Caso recursivo: para uma lista nao vazia
soma_lista([H|T], Soma) :-
    soma_lista(T, Soma_resto),
    Soma is H + Soma_resto.

recomenda(Melhor_trilha, Melhor_pontuacao) :-
