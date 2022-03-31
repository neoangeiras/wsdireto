#Criando um webservice usando apenas o Harbour
==============================================

Componentes utilizados:
1. mod_harbour 2.0
2. Mercury MVC

Para testar, pode chamar diretamente pelo browser:

`localhost/wsdireto/wsbarra?codbarra=<seu_codigo_de_barra>`

O Arquivo `produtos.dbf` tem apenas 50 registros, suficiente para realizar os testes necessários.

O retorno é gerado em formato Hash, composto de até 3 campos:

1. "sucesso", vai indicar "true" ou "false"
2. "erro", descrição do erro ou "OK" quando achar o código
3. "descpro", descrição do produto pesquisado
