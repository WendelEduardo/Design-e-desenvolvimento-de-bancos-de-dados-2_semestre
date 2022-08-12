-- APAGAR TABELA (INCLUSIVE DA LIXEIRA)
DROP TABLE dept PURGE;

-- Resgatando ultima versão da tabela dropada
FLASHBACK TABLE dept TO BEFORE DROP;

desc dept;
cl screen;

-- APAGAR TABELA E SUA RELAÇÕES
DROP TABLE dept CASCADE CONSTRAINTS;

-- Mostrar conteudo da lixeira
SHOW recyclebin;

-- Apagar todo conteudo da lixeira
purge recyclebin;