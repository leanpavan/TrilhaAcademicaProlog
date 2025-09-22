# TrilhaAcademicaProlog
Sistema Especialista para Recomendação de Trilha Acadêmica desenvolvido utilizando Prolog para a disciplina de Programação Lógica e Funcional.


<ul> Alunos:
  <li>Leandro José da Silva Pavan</li>
  <li>Lucas da Costa Paula</li>
  <li>Guilherme Arcanjo de Morais</li>
  <li>Renan Americo Herculano</li>
</ul>
<p>Professor: FRANK COELHO DE ALCANTARA </p>
<p>Instituição PUCPR - Pontifícia Universidade Católica do Paraná</p>
<p>Disciplina: Programação lógica e funcional</p>

<h1>Instruções para a execução</h1>
<h2>Questionário interativo</h2>
<ul>
  <li>Para executar o questinário, basta utilizar o arquivo "base_conhecimneto.pl" e carregá-lo no <a href = "https://swish.swi-prolog.org"> Swish </a>.</li>
  <li>Após isso, utilize a aba de consultas e digite: iniciar</li>
  <li>Com isso, será exibido perguntas sobre quais disciplinas o usuário tem afinidade, a fim de traçar o perfil do usuário e, por meio disso, exibir qual trilha é mais compátivel com ele.
</ul>

<h2>Testar programa com respostas de alunos pré definidos</h2>
<ul>
  <li>Como o Swish online tem restrição quanto ao acesso a arquivos externos por segurança, é necessário instalar o SWI Prolog nesse <a href = "https://www.swi-prolog.org/"> site </a> e seguir as intruções de instalação padrão. </li>
  <li>Tivemos um imprevisto com o uso do comando <strong>setup_call_cleanup</strong> no Windows, que diferente da diretiva <strong> consult </strong> apenas, ela se perde do diretório comum entre os arquivos e, por isso, é necessário executar o prompt de comando no diretório que está todos os arquivos </li>
  <li>Após isso: digite o comando <strong>& "C:\Program Files\swipl\bin\swipl.exe"</strong> no powerShell. Depois, basta carregar o arquivo de teste pelo comando <strong> ['testar_recomendacao.pl'].</strong> -  Por último, digite <strong> executar_todos. </strong> para carregar os dados das respostas e executar cada verificação.
