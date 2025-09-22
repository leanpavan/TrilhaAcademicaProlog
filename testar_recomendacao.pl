%carrega a base de dados e o motor de inferência
:- consult(base_conhecimento).

testar_recomendacao(Dados_respostas, Trilha_esperada, Pontuacao_esperada) :-
	writeln('--iniciar teste para recomendacao do aluno--'), 
    setup_call_cleanup(
        consult(Dados_respostas),%prepara o ambiente carregando os dados de uma resposta e depois excluindo para nao dar conflito.
        
        (recomenda_trilha(Trilha, Pontuacao),
    	(   (Trilha = Trilha_esperada, Pontuacao = Pontuacao_esperada) -> format('Resultado esperado: Trilha - ~w ', Trilha); %verifica se a trilha recomendada é a esperada
    	format('Trilha não esperada - ~w ', Trilha))),
        
        unload_file(Dados_respostas)%descarrega os dados de uma resposta para nao interferir na proxima.
     ),
    nl,
    nl.

executar_todos :-
    testar_recomendacao('respostas1.pl', inteligencia_artificial, 21),
	testar_recomendacao('respostas2.pl', seguranca_informacao, 22), %aluno que nao curte nada visual, nao gosta de design, logo, esperasse menor recomendacao para design e maior para seguranca.
	testar_recomendacao('respostas3.pl', desenvolvimento_web, 17). %aluno que curte arte e visual, juntamente com infraestrutura e redes.



	
    