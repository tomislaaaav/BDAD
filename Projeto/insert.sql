.bail ON
.mode columns
.headers on
.nullvalue NULL
PRAGMA foreign_keys = ON;

INSERT INTO EXTRAS VALUES(0, 0, 'Automatico', 0, 5, 0, 0, 'Pele', 0);
INSERT INTO EXTRAS VALUES(1, 0, 'Manual', 1, 5, 0, 1, 'Tecido', 0);
INSERT INTO EXTRAS VALUES(2, 1, 'Manual', 0, 3, 1, 0, 'Pele', 1);
INSERT INTO EXTRAS VALUES(3, 1, 'Manual', 1, 5, 1, 1, 'Tecido', 0);
INSERT INTO EXTRAS VALUES(4, 0, 'Automatico', 0, 3, 0, 0, 'Pele', 0);

INSERT INTO TIPO_VEICULO VALUES('Carro');
INSERT INTO TIPO_VEICULO VALUES('Mota');
INSERT INTO TIPO_VEICULO VALUES('Camiao');
INSERT INTO TIPO_VEICULO VALUES('Carrinha');

INSERT INTO MARCA_VEICULO VALUES('VOLKSWAGEN');
INSERT INTO MARCA_VEICULO VALUES('BMW');
INSERT INTO MARCA_VEICULO VALUES('RENAULT');
INSERT INTO MARCA_VEICULO VALUES('FORD');
INSERT INTO MARCA_VEICULO VALUES('FERRARI');

INSERT INTO MODELO_VEICULO VALUES(2000, 'GOLF', 'VOLKSWAGEN');
INSERT INTO MODELO_VEICULO VALUES(2001, '320', 'BMW');
INSERT INTO MODELO_VEICULO VALUES(2007, 'MEGANE', 'RENAULT');
INSERT INTO MODELO_VEICULO VALUES(2015, 'FIESTA', 'FORD');
INSERT INTO MODELO_VEICULO VALUES(2014, '458', 'FERRARI');
INSERT INTO MODELO_VEICULO VALUES(2012, 'JETTA', 'VOLKSWAGEN');

INSERT INTO ESTADO_ATUAL VALUES('DISPONIVEL');
INSERT INTO ESTADO_ATUAL VALUES('EM MANUTENCAO');
INSERT INTO ESTADO_ATUAL VALUES('ALUGADO');

INSERT INTO TIPO_COMBUSTIVEL VALUES('GASOLINA 95');
INSERT INTO TIPO_COMBUSTIVEL VALUES('GASOLINA 98');
INSERT INTO TIPO_COMBUSTIVEL VALUES('GASOLEO');
INSERT INTO TIPO_COMBUSTIVEL VALUES('ELETRICO');

INSERT INTO VEICULO VALUES('31-CC-69', 5.2, 100, '320', 'ALUGADO', 'Carrinha', 'GASOLEO', 0);
INSERT INTO VEICULO VALUES('16-NU-75', 12.1, 315, 'GOLF', 'ALUGADO', 'Carro', 'GASOLEO', 2);
INSERT INTO VEICULO VALUES('31-JN-16', 8.3, 170, 'FIESTA', 'ALUGADO', 'Carrinha', 'GASOLINA 95', 4);
INSERT INTO VEICULO VALUES('94-94-OC', 7.4, 130, '458', 'ALUGADO', 'Carro', 'GASOLINA 98', 1);
INSERT INTO VEICULO VALUES('89-59-BF', 4.9, 85, 'MEGANE', 'EM MANUTENCAO', 'Carro', 'GASOLINA 95', 3);
INSERT INTO VEICULO VALUES('78-IS-36', 9.1, 120, 'JETTA', 'DISPONIVEL', 'Carro', 'ELETRICO', 1);

INSERT INTO TIPO_CONTRATO VALUES('PART-TIME');
INSERT INTO TIPO_CONTRATO VALUES('EFETIVO');

INSERT INTO CATEGORIA_SALARIAL VALUES(0, 1500);
INSERT INTO CATEGORIA_SALARIAL VALUES(1, 900);
INSERT INTO CATEGORIA_SALARIAL VALUES(2, 1700);

INSERT INTO ESPECIALIZACAO VALUES('MECANICO');
INSERT INTO ESPECIALIZACAO VALUES('ELETRICISTA');
INSERT INTO ESPECIALIZACAO VALUES('GERENTE');
INSERT INTO ESPECIALIZACAO VALUES('CFO');
INSERT INTO ESPECIALIZACAO VALUES('CEO');

INSERT INTO POSICAO_EMPRESA VALUES('SENIOR');
INSERT INTO POSICAO_EMPRESA VALUES('JUNIOR');
INSERT INTO POSICAO_EMPRESA VALUES('NOVATO');

INSERT INTO CODIGO_POSTAL VALUES('4745-457');
INSERT INTO CODIGO_POSTAL VALUES('4475-234');
INSERT INTO CODIGO_POSTAL VALUES('4200-055');
INSERT INTO CODIGO_POSTAL VALUES('4675-432');
INSERT INTO CODIGO_POSTAL VALUES('4321-456');

INSERT INTO LOCALIDADE VALUES('CASTELO DA MAIA');
INSERT INTO LOCALIDADE VALUES('SAO MAMEDE DO CORONADO');
INSERT INTO LOCALIDADE VALUES('PARANHOS');
INSERT INTO LOCALIDADE VALUES('GAIA');
INSERT INTO LOCALIDADE VALUES('ERMESINDE');

/*Clientes*/
INSERT INTO PESSOA VALUES(917912739, 'RUA DOS ARDONIOS', 'ANTONIO', 'CASTELO DA MAIA', '4745-457');
INSERT INTO PESSOA VALUES(918963867, 'RUA DOS SWAGS', 'EDGAR', 'SAO MAMEDE DO CORONADO', '4475-234');
INSERT INTO PESSOA VALUES(919908542, 'RUA DOS ADORO K.', 'MIGUEL', 'PARANHOS', '4200-055');
INSERT INTO PESSOA VALUES(962334824, 'SILICON VALLEY', 'ANDRE', 'GAIA', '4675-432');
INSERT INTO PESSOA VALUES(937486272, 'MOUNTAIN VIEW', 'TITA', 'ERMESINDE', '4321-456');

/*Funcionarios*/
INSERT INTO PESSOA VALUES(924657892, 'Avenida dos Lirios', 'Joao', 'CASTELO DA MAIA', '4745-457');
INSERT INTO PESSOA VALUES(921345689, 'Avenida dos Aliados', 'Joaquim', 'SAO MAMEDE DO CORONADO', '4475-234');
INSERT INTO PESSOA VALUES(958792465, 'Praca da Fonte', 'Samuel', 'PARANHOS', '4200-055');
INSERT INTO PESSOA VALUES(982310135, 'Louvain La Neuve', 'Pedro', 'GAIA', '4675-432');
INSERT INTO PESSOA VALUES(993254654, 'Bruxels', 'Manix', 'ERMESINDE', '4321-456');

INSERT INTO CLIENTE VALUES(20126120, 917912739, 'm_botelho8@hotmail.com');
INSERT INTO CLIENTE VALUES(20130356, 918963867, 'antonio_ramadas@hotmail.com');
INSERT INTO CLIENTE VALUES(20165874, 919908542, 'edgar_swag@hotmail.com');
INSERT INTO CLIENTE VALUES(20182246, 962334824, 'migueladoro@hotmail.com');
INSERT INTO CLIENTE VALUES(20114568, 937486272, 'feup_mail@hotmail.com');

INSERT INTO FUNCIONARIO VALUES(20245646, 924657892, 'EFETIVO', 0, 'NOVATO', 'ELETRICISTA');
INSERT INTO FUNCIONARIO VALUES(20287952, 921345689, 'PART-TIME', 2, 'SENIOR', 'CFO');
INSERT INTO FUNCIONARIO VALUES(20278921, 958792465, 'EFETIVO', 1, 'JUNIOR', 'MECANICO');
INSERT INTO FUNCIONARIO VALUES(20265424, 982310135, 'PART-TIME', 0, 'SENIOR', 'CEO');
INSERT INTO FUNCIONARIO VALUES(20288251, 993254654, 'EFETIVO', 1, 'SENIOR', 'GERENTE');

INSERT INTO ALUGUER VALUES(0, 250, '2014-04-14', '2014-04-05', '31-CC-69',20245646, 20126120);
INSERT INTO ALUGUER VALUES(1, 250, '2014-04-28', '2014-04-15', '16-NU-75',20287952, 20130356);
INSERT INTO ALUGUER VALUES(2, 250, '2014-04-14', '2014-04-05', '31-JN-16',20278921, 20165874);
INSERT INTO ALUGUER VALUES(3, 250, '2014-04-14', '2014-04-05', '94-94-OC',20265424, 20182246);

INSERT INTO TAXA_RISCO VALUES(50, 20126120, 0);
INSERT INTO TAXA_RISCO VALUES(75, 20130356, 1);
INSERT INTO TAXA_RISCO VALUES(25, 20165874, 2);
INSERT INTO TAXA_RISCO VALUES(45, 20182246, 3);

INSERT INTO FRANQUIA VALUES(50, '31-CC-69', 0);
INSERT INTO FRANQUIA VALUES(25, '16-NU-75', 1);
INSERT INTO FRANQUIA VALUES(30, '31-JN-16', 2);
INSERT INTO FRANQUIA VALUES(45, '94-94-OC', 3);