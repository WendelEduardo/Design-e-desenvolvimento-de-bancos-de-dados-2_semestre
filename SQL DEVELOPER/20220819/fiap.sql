CREATE TABLE dept (
    deptno       NUMBER(2)
        CONSTRAINT dept_pk PRIMARY KEY,
    dname        VARCHAR2(14)
        CONSTRAINT dept_dname_nn NOT NULL,
    loc          VARCHAR2(13)
        CONSTRAINT dept_loc_nn NOT NULL,
    create_table DATE
);

CREATE TABLE emp (
    id_empregado NUMBER
        CONSTRAINT emp_pk PRIMARY KEY,
    nome         VARCHAR2(50)
        CONSTRAINT emp_nome_nn NOT NULL,
    salario      NUMBER(10, 2)
        CONSTRAINT emp_sal_ck CHECK ( salario > 0 ),
    email        VARCHAR2(80)
        CONSTRAINT emp_email_uk UNIQUE,
    deptno       NUMBER(2)
);

INSERT INTO emp VALUES (
    1,
    'Zé',
    1000,
    'a@a',
    NULL
);

ALTER TABLE emp
    ADD CONSTRAINT emp_dep_fk FOREIGN KEY ( deptno )
        REFERENCES dept ( deptno );

CREATE TABLE emp (
    id_empregado NUMBER
        CONSTRAINT emp_pk PRIMARY KEY,
    nome         VARCHAR2(50)
        CONSTRAINT emp_nome_nn NOT NULL,
    salario      NUMBER(10, 2)
        CONSTRAINT emp_sal_ck CHECK ( salario > 0 ),
    email        VARCHAR2(80)
        CONSTRAINT emp_email_uk UNIQUE,
    deptno       NUMBER(2)
        CONSTRAINT dept_emp_fk
            REFERENCES dept
);

DROP TABLE dept;

DROP TABLE emp;

DESC dept;
DESC emp;

CL SCREEN;