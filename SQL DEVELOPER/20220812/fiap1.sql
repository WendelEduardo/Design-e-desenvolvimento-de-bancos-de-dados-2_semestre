-- Apagar uma tabela
DROP TABLE dept;

-- Exemplo de criação de tabela.
CREATE TABLE dept (
    deptno      NUMBER(2),
    dname       VARCHAR2(14),
    loc         VARCHAR2(13),
    create_date DATE
);

-- Descreve e exibe a estrutura da tabela
DESCRIBE dept;
DESC dept;

-- Limpa a tela
clear screen;
cl screen;

-- Adicionando um campo na tabela
ALTER TABLE dept ADD total_sal NUMBER(10, 2);

-- Modificando um campo na tabela
ALTER TABLE dept MODIFY
    total_sal NUMBER(12, 2);

-- Modificando o nome de uma coluna da tabela
ALTER TABLE dept RENAME COLUMN total_sal TO total_salary;

-- Excluindo uma coluna da tabela
ALTER TABLE dept DROP COLUMN total_salary;





/*
    Exemplo
*/