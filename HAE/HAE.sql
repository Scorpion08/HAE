CREATE TABLE TB_PESSOA 
(
    CD_CODIGO SERIAL NOT NULL,
    NM_NOME VARCHAR (100),
    NM_CPF VARCHAR (14),
    NM_MATRICULA VARCHAR (20),
    NM_NOME_USUARIO VARCHAR (20),
    NM_SENHA VARCHAR (20),
    NM_CARGO VARCHAR(20)
);



CREATE TABLE TB_USUARIO
(       
    CD_CODIGO SERIAL NOT NULL,
    NM_LOGIN VARCHAR (100),
    VL_SENHA NUMERIC (15),
    NM_TIPO_ACESSO VARCHAR (100)
    
);




CREATE TABLE TB_PROFESSOR
(  
    CD_CODIGO SERIAL NOT NULL,
    NM_NOME_PROJETO VARCHAR (100),
    VL_HORAS_PROJETO VARCHAR (100)
    
);




CREATE TABLE TB_PROJETO
(
    CD_CODIGO SERIAL NOT NULL,
    NM_TIPO_PROJETO VARCHAR (100),
    VL_QTDE_PROJETO NUMERIC    (20),
    CD_PROFESSOR    NUMERIC     (8),
    CD_CRONOGRAMA   NUMERIC    (8)
    
);



CREATE TABLE TB_COORDENADOR
(
    CD_CODIGO SERIAL,
    NM_LISTA_PROJETOS VARCHAR (100)
);



CREATE TABLE TB_ADMINISTRACAO
(
    CD_CODIGO SERIAL NOT NULL,
    NM_PROJETOS_APROVADOS VARCHAR (100),
    NM_PROJETOS_RECUSADOS VARCHAR (100),
    NM_NOME_PROFESSOR     VARCHAR (100),
    NM_NOME_COORDENADOR   VARCHAR (100)
    
);    



CREATE TABLE TB_DIRETOR
(
    CD_CODIGO SERIAL NOT NULL,
    NM_SUBMETER_PROJETO VARCHAR(100),
    NM_PROJETOS_APROVADOS VARCHAR (100),
    CD_PESSOA NUMERIC(8)
);    



CREATE TABLE TB_CRONOGRAMA
(
    CD_CODIGO SERIAL NOT NULL,
    NM_ATIVIDADE VARCHAR (20),
    NM_MES       VARCHAR (20),
    NM_HORARIO   VARCHAR (20),
    CD_PROJETO   NUMERIC   (8)
);    



CREATE TABLE TB_ENDERECO
(
    CD_CODIGO SERIAL NOT NULL,
    NM_RUA    VARCHAR (100),
    NM_BAIRRO VARCHAR (100),
    NM_CIDADE VARCHAR (100),
    CD_PESSOA NUMERIC    (8)
);

INSERT INTO TB_PESSOA
(
    NM_NOME,
    NM_CPF,
    NM_MATRICULA,
    NM_NOME_USUARIO,
    NM_SENHA, 
    NM_CARGO     
)
VALUES
(
    'Administrador',
     NULL,
     1,
     'admin',
     'admin',
     'Administrador'
);
