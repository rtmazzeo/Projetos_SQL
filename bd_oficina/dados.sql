INSERT INTO Clientes (Fname, Minit, Lname, Telefone, Email, Endereco, CPF)
VALUES	('João', 'S', 'Silva', '(11) 1234-5678', 'joao@email.com', 'Rua das Flores, 123', '12345678901'),
    		('Maria', 'A', 'Santos', '(22) 9876-5432', 'maria@email.com', 'Avenida Principal, 456', '98765432102'),
    		('Carlos', 'R', 'Pereira', '(33) 5555-5555', 'carlos@email.com', 'Rua do Comércio, 789', '55555555503'),
    		('Ana', 'M', 'Ferreira', '(44) 8765-4321', 'ana@email.com', 'Rua das Lojas, 101', '87654321004'),
    		('Pedro', 'T', 'Ribeiro', '(55) 1111-2222', 'pedro@email.com', 'Avenida das Praias, 202', '11122233305'),
    		('Sofia', 'C', 'Gomes', '(66) 3333-4444', 'sofia@email.com', 'Rua das Montanhas, 303', '33344455506'),
    		('Ricardo', 'D', 'Oliveira', '(77) 9999-8888', 'ricardo@email.com', 'Avenida dos Parques, 404', '99988877707');
    		
INSERT INTO Carros (Marca, Modelo, Ano, Placa, ClienteID)
VALUES	('Volkswagen', 'Golf', 2019, 'ABC1234', 1),
    		('Ford', 'Fiesta', 2020, 'DEF5678', 2),
    		('Chevrolet', 'Cruze', 2018, 'GHI9012', 3),
    		('Toyota', 'Corolla', 2021, 'JKL3456', 4),
    		('Honda', 'Civic', 2017, 'MNO7890', 5),
    		('Nissan', 'Sentra', 2019, 'PQR1234', 6),
    		('Hyundai', 'Elantra', 2020, 'STU5678', 7);
    		
INSERT INTO Servicos (Descricao, Preco)
VALUES	('Troca de óleo', 50.00),
    		('Revisão de motor', 120.00),
    		('Alinhamento e balanceamento', 80.00),
    		('Troca de pneus', 200.00),
    		('Limpeza interna e externa', 90.00),
    		('Reparo de freios', 110.00),
    		('Troca de bateria', 70.00),
    		('Reparo de suspensão', 95.00),
    		('Troca de filtro de ar', 30.00),
    		('Recarga de ar condicionado', 60.00),
    		('Substituição de correias', 55.00),
    		('Troca de velas', 40.00);
    		
INSERT INTO Funcionarios (Fname, Minit, Lname, CPF, Cargo, Salario)
VALUES	('Lucas', 'M', 'Fernandes', '12345678910', 'Mecânico', 2500.00),
    		('Fernanda', 'S', 'Oliveira', '23456789012', 'Atendente', 1800.00),
    		('Rafael', 'A', 'Santos', '34567890123', 'Gerente', 3500.00),
    		('Isabela', 'T', 'Pereira', '45678901234', 'Mecânico', 2600.00);
    		
INSERT INTO OrdensServico (ClienteID, CarroID, DataEntrada, DataSaida, FuncionarioID, FornecedorID)
VALUES	(1, 1, '2023-08-01', '2023-08-03', 1, 1),
    		(2, 2, '2023-08-02', '2023-08-04', 2, 2),
    		(3, 3, '2023-08-03', '2023-08-05', 1, 3),
    		(4, 4, '2023-08-04', '2023-08-06', 3, 4),
    		(5, 5, '2023-08-05', '2023-08-07', 2, 1),
    		(6, 6, '2023-08-06', '2023-08-08', 4, 2),
    		(7, 7, '2023-08-07', '2023-08-09', 3, 3),
    		(1, 1, '2023-08-08', '2023-08-10', 1, 4),
    		(2, 2, '2023-08-09', '2023-08-11', 2, 1),
    		(3, 3, '2023-08-10', '2023-08-12', 1, 2),
    		(4, 4, '2023-08-11', '2023-08-13', 3, 3),
    		(5, 5, '2023-08-12', '2023-08-14', 2, 4),
    		(6, 6, '2023-08-13', '2023-08-15', 4, 1),
    		(7, 7, '2023-08-14', '2023-08-16', 3, 2),
    		(1, 1, '2023-08-15', '2023-08-17', 1, 3),
    		(2, 2, '2023-08-16', '2023-08-18', 2, 4);
    		
INSERT INTO DetalhesOrdemServico (OrdemID, ServicoID, Quantidade, PecaID, QuantidadePecas)
VALUES	(20230017, 1, 1, 1, 2),
    		(20230018, 2, 1, 2, 4),
    		(20230019, 3, 1, 3, 1),
    		(20230020, 4, 1, 4, 3),
    		(20230021, 5, 1, 5, 2),
    		(20230022, 6, 1, 6, 1),
    		(20230023, 7, 1, 7, 2),
    		(20230024, 8, 1, 8, 3),
    		(20230025, 9, 1, 9, 1),
    		(20230026, 10, 1, 10, 2),
    		(20230027, 11, 1, 1, 1),
    		(20230028, 12, 1, 2, 2),
    		(20230029, 1, 1, 3, 3),
    		(20230030, 4, 1, 4, 4),
    		(20230031, 5, 1, 5, 5),
    		(20230032, 6, 1, 6, 1);
		 		    		
INSERT INTO Pecas (Nome, Fabricante, Preco)
VALUES	('Filtro de Óleo', 'Bosch', 10.00),
    		('Pastilhas de Freio', 'Fremax', 20.00),
    		('Bateria 60Ah', 'Moura', 50.00),
    		('Pneu Aro 15', 'Pirelli', 80.00),
    		('Vela de Ignição', 'NGK', 5.00),
    		('Correia Dentada', 'Dayco', 15.00),
    		('Amortecedor Dianteiro', 'Monroe', 40.00),
    		('Filtro de Ar', 'Fram', 7.00),
    		('Limpador de Parabrisa', 'Bosch', 10.00),
    		('Fluido de Arrefecimento', 'Shell', 8.00);
    		
INSERT INTO Fornecedores (Nome, CNPJ, Telefone, Email, Endereco)
VALUES	('Auto Peças ABC', '12345678901234', '(11) 5555-5555', 'contato@autopecasabc.com', 'Rua das Peças, 123'),
    		('Peças Rápidas XYZ', '23456789012345', '(22) 6666-6666', 'vendas@pecasrapidasxyz.com', 'Avenida das Peças, 456'),
    		('Auto Peças 123', '34567890123456', '(33) 7777-7777', 'atendimento@autopecas123.com', 'Rua das Peças, 789'),
    		('Fornecedora de Peças ABCD', '45678901234567', '(44) 8888-8888', 'compras@fornecedoraabcd.com', 'Avenida das Peças, 101');
