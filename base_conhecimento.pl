% ###########################################################################################
% FATOS (BASE DE DADOS)
% ###########################################################################################

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
perfil(seguranca_informacao, pesquisa, 3).
perfil(seguranca_informacao, legislacao, 5).
perfil(seguranca_informacao, html_css_js, 0).
perfil(seguranca_informacao, sistema_fisico, 2).
perfil(seguranca_informacao, comunicacao, 3).
perfil(seguranca_informacao, conexoes_rede, 3).

% desenvolvimento web
perfil(desenvolvimento_web, matematica_estatistica, 1).
perfil(desenvolvimento_web, design_digital, 5).
perfil(desenvolvimento_web, pesquisa, 2).
perfil(desenvolvimento_web, legislacao, 1).
perfil(desenvolvimento_web, html_css_js, 5).
perfil(desenvolvimento_web, sistema_fisico, 1).
perfil(desenvolvimento_web, comunicacao, 4).
perfil(desenvolvimento_web, conexoes_rede, 1).

% ciencia de dados
perfil(ciencia_dados, matematica_estatistica, 5).
perfil(ciencia_dados, design_digital, 0).
perfil(ciencia_dados, pesquisa, 4).
perfil(ciencia_dados, legislacao, 3).
perfil(ciencia_dados, html_css_js, 0).
perfil(ciencia_dados, sistema_fisico, 2).
perfil(ciencia_dados, comunicacao, 4).
perfil(ciencia_dados, conexoes_rede, 1).

% inteligencia artificial
perfil(inteligencia_artificial, matematica_estatistica, 3).
perfil(inteligencia_artificial, design_digital, 0).
perfil(inteligencia_artificial, pesquisa, 5).
perfil(inteligencia_artificial, legislacao, 3).
perfil(inteligencia_artificial, html_css_js, 0).
perfil(inteligencia_artificial, sistema_fisico, 1).
perfil(inteligencia_artificial, comunicacao, 2).
perfil(inteligencia_artificial, conexoes_rede, 3).

% redes e infraestrutura
perfil(redes_infraestrutura, matematica_estatistica, 2).
perfil(redes_infraestrutura, design_digital, 0).
perfil(redes_infraestrutura, pesquisa, 3).
perfil(redes_infraestrutura, legislacao, 3).
perfil(redes_infraestrutura, html_css_js, 0).
perfil(redes_infraestrutura, sistema_fisico, 5).
perfil(redes_infraestrutura, comunicacao, 4).
perfil(redes_infraestrutura, conexoes_rede, 5).

% Pergunta/3 -> pergunta(numero_pergunta, desc_pergunta, habilidade_trilha)
pergunta(1, "Você possui afinidade em matemática e estátistica?", matematica_estatistica).
pergunta(2, "Você possui afinidade em design digital?", design_digital).
pergunta(3, "Você possui afinidade em pesquisas?", pesquisa).
pergunta(4, "Você possui afinidade em legislação, voltada ao cenário computacional?", legislacao).
pergunta(5, "Você possui afinidade em linguagens de marcação, HTML e CSS?", html_css_js).
pergunta(6, "Você possui afinidade no manuseio de dispositivos e equipamentos físicos?", sistema_fisico).
pergunta(7, "Você se considera comunicativo?", comunicacao).
pergunta(8, "Você possui interesse em conexões digitais e no funcionamento da internet?", conexoes_rede).