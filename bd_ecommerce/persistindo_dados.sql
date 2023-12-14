use ecommerce;

insert into clients (Fname, Minit, Lname, CPF, Address, Email)
	VALUES ('João', 'S', 'Silva', '12345678901', 'Rua A, 123', 'joao.silva@email.com'),
			('Maria', 'A', 'Santos', '23456789012', 'Av. B, 456', 'maria.santos@email.com'),
			('Pedro', 'R', 'Oliveira', '34567890123', 'Rua C, 789', 'pedro.oliveira@email.com'),
			('Ana', 'D', 'Costa', '45678901234', 'Av. D, 101', 'ana.costa@email.com'),
			('Lucas', 'P', 'Pereira', '56789012345', 'Rua E, 210', 'lucas.pereira@email.com'),
			('Larissa', 'L', 'Lima', '67890123456', 'Av. F, 321', 'larissa.lima@email.com'),
			('José', 'M', 'Martins', '78901234567', 'Rua G, 456', 'jose.martins@email.com'),
			('Amanda', 'C', 'Carvalho', '89012345678', 'Av. H, 789', 'amanda.carvalho@email.com'),
			('Marcos', 'B', 'Barbosa', '90123456789', 'Rua I, 987', 'marcos.barbosa@email.com'),
			('Cristina', 'F', 'Ferreira', '01234567890', 'Av. J, 654', 'cristina.ferreira@email.com'),
			('Rafael', 'G', 'Gonçalves', '11223344556', 'Rua K, 147', 'rafael.goncalves@email.com'),
			('Carolina', 'K', 'Kuhn', '12121212121', 'Av. L, 963', 'carolina.kuhn@email.com'),
			('Eduardo', 'J', 'Júnior', '23232323232', 'Rua M, 258', 'eduardo.junior@email.com'),
			('Luis', 'N', 'Nunes', '34343434343', 'Av. N, 159', 'luis.nunes@email.com'),
			('Mariana', 'O', 'Oliveira', '45454545454', 'Rua O, 753', 'mariana.oliveira@email.com'),
			('Carlos', 'H', 'Henrique', '56565656565', 'Av. P, 369', 'carlos.henrique@email.com'),
			('Fernanda', 'E', 'Esteves', '67676767676', 'Rua Q, 852', 'fernanda.esteves@email.com'),
			('Roberto', 'Q', 'Queiroz', '78787878787', 'Av. R, 741', 'roberto.queiroz@email.com'),
            ('Isabela', 'W', 'Wagner', '89898989898', 'Rua S, 963', 'isabela.wagner@email.com'),
			('Henrique', 'Z', 'Zimmermann', '90909090909', 'Av. T, 456', 'henrique.zimmermann@email.com');

INSERT INTO product (Pname, classification_kids, category, Avaliação, Size)
VALUES 
    ('Smartphone', false, 'Eletronico', 4.5, 'M'),
    ('Camiseta Infantil', true, 'Vestimenta', 3.0, 'L'),
    ('Boneca de Pelúcia', false, 'Brinquedos', 4.8, 'S'),
    ('Biscoitos de Chocolate', true, 'Alimentos', 4.2, 'XL'),
    ('Sofá de Couro', false, 'Móveis', 4.9, 'M'),
    ('Tablet', false, 'Eletronico', 3.5, 'S'),
    ('Vestido de Noite', true, 'Vestimenta', 4.0, 'L'),
    ('Carrinho de Controle Remoto', false, 'Brinquedos', 4.7, 'M'),
    ('Cereais Matinais', true, 'Alimentos', 3.8, 'XL'),
    ('Mesa de Jantar', false, 'Móveis', 4.6, 'L'),
    ('TV de 55 polegadas', false, 'Eletronico', 4.1, 'S'),
    ('Jaqueta de Couro', true, 'Vestimenta', 3.9, 'M'),
    ('Quebra-Cabeça de 1000 Peças', false, 'Brinquedos', 4.3, 'L'),
    ('Leite em Pó', true, 'Alimentos', 4.4, 'S'),
    ('Cama Queen', false, 'Móveis', 3.7, 'XL'),
    ('Fones de Ouvido Bluetooth', false, 'Eletronico', 4.2, 'S'),
    ('Blusa de Lã', true, 'Vestimenta', 3.6, 'M'),
    ('Blocos de Construção', false, 'Brinquedos', 4.0, 'XL'),
    ('Pacote de Macarrão Instantâneo', true, 'Alimentos', 3.5, 'L'),
    ('Escrivaninha de Madeira', false, 'Móveis', 4.8, 'S'),
    ('Notebook', false, 'Eletronico', 4.9, 'L'),
    ('Sapatos de Corrida', true, 'Vestimenta', 3.4, 'XL'),
    ('Quebra-Cabeça de 500 Peças', false, 'Brinquedos', 4.5, 'S'),
    ('Barras de Cereal', true, 'Alimentos', 4.6, 'M'),
    ('Sofá-cama', false, 'Móveis', 3.3, 'L'),
    ('Câmera DSLR', false, 'Eletronico', 4.7, 'XL'),
    ('Blusa de Algodão', true, 'Vestimenta', 3.2, 'S'),
    ('Bonecos de Ação', false, 'Brinquedos', 4.8, 'M'),
    ('Iogurte', true, 'Alimentos', 3.1, 'XL'),
    ('Mesa de Café', false, 'Móveis', 4.9, 'S'),
    ('Relógio Inteligente', false, 'Eletronico', 4.0, 'L'),
    ('Calças Jeans', true, 'Vestimenta', 3.3, 'M'),
    ('Quebra-Cabeça de 100 Peças', false, 'Brinquedos', 4.1, 'S'),
    ('Bolachas', true, 'Alimentos', 3.4, 'XL'),
    ('Estante de Livros', false, 'Móveis', 4.2, 'L'),
    ('Fritadeira Elétrica', false, 'Eletronico', 3.5, 'S'),
    ('Vestido de Verão', true, 'Vestimenta', 4.2, 'M'),
    ('Carro de Brinquedo', false, 'Brinquedos', 4.3, 'XL'),
    ('Cereal Integral', true, 'Alimentos', 3.7, 'S'),
    ('Sofá de Canto', false, 'Móveis', 4.4, 'L');

INSERT INTO orders (idOrderClient, orderStatus, orderDescription, sendValue, paymentCash, idPayment)
VALUES
    (1, 'Confirmado', 'Pedido de Smartphone', 20.0, true, 101),
    (2, 'Em Processamento', 'Pedido de Camiseta Infantil', 15.5, false, 102),
    (3, 'Confirmado', 'Pedido de Boneca de Pelúcia', 25.0, true, 103),
    (4, 'Em Processamento', 'Pedido de Biscoitos de Chocolate', 30.0, false, 104),
    (5, 'Em Processamento', 'Pedido de Sofá de Couro', 18.0, true, 105),
    (6, 'Confirmado', 'Pedido de Tablet', 22.5, false, 106),
    (7, 'Em Processamento', 'Pedido de Vestido de Noite', 27.0, true, 107),
    (8, 'Confirmado', 'Pedido de Carrinho de Controle Remoto', 12.0, false, 108),
    (9, 'Confirmado', 'Pedido de Cereais Matinais', 21.0, true, 109),
    (10, 'Em Processamento', 'Pedido de Mesa de Jantar', 14.5, false, 110),
    (11, 'Confirmado', 'Pedido de TV de 55 polegadas', 19.0, true, 111),
    (12, 'Em Processamento', 'Pedido de Jaqueta de Couro', 23.0, false, 112),
    (13, 'Em Processamento', 'Pedido de Quebra-Cabeça de 1000 Peças', 16.0, true, 113),
    (14, 'Confirmado', 'Pedido de Leite em Pó', 17.5, false, 114),
    (15, 'Em Processamento', 'Pedido de Cama Queen', 29.0, true, 115),
    (16, 'Em Processamento', 'Pedido de Fones de Ouvido Bluetooth', 18.0, false, 116),
    (17, 'Confirmado', 'Pedido de Blusa de Lã', 20.0, true, 117),
    (18, 'Em Processamento', 'Pedido de Blocos de Construção', 15.5, false, 118),
    (19, 'Confirmado', 'Pedido de Pacote de Macarrão Instantâneo', 25.0, true, 119),
    (20, 'Em Processamento', 'Pedido de Escrivaninha de Madeira', 30.0, false, 120),
    (1, 'Em Processamento', 'Pedido de Notebook', 18.0, true, 121),
    (2, 'Confirmado', 'Pedido de Sapatos de Corrida', 22.5, false, 122),
    (3, 'Em Processamento', 'Pedido de Quebra-Cabeça de 500 Peças', 27.0, true, 123),
    (4, 'Confirmado', 'Pedido de Barras de Cereal', 12.0, false, 124),
    (5, 'Confirmado', 'Pedido de Sofá-cama', 21.0, true, 125),
    (6, 'Em Processamento', 'Pedido de Câmera DSLR', 14.5, false, 126),
    (7, 'Confirmado', 'Pedido de Blusa de Algodão', 19.0, true, 127),
    (8, 'Em Processamento', 'Pedido de Bonecos de Ação', 23.0, false, 128),
    (9, 'Em Processamento', 'Pedido de Iogurte', 16.0, true, 129),
    (10, 'Confirmado', 'Pedido de Mesa de Café', 17.5, false, 130),
    (11, 'Em Processamento', 'Pedido de Relógio Inteligente', 29.0, true, 131),
    (12, 'Em Processamento', 'Pedido de Calças Jeans', 18.0, false, 132),
    (13, 'Confirmado', 'Pedido de Quebra-Cabeça de 100 Peças', 20.0, true, 133),
    (14, 'Em Processamento', 'Pedido de Bolachas', 15.5, false, 134),
    (15, 'Confirmado', 'Pedido de Estante de Livros', 25.0, true, 135),
    (16, 'Em Processamento', 'Pedido de Fritadeira Elétrica', 30.0, false, 136),
    (17, 'Em Processamento', 'Pedido de Vestido de Verão', 18.0, true, 137),
    (18, 'Confirmado', 'Pedido de Carro de Brinquedo', 22.5, false, 138),
    (19, 'Em Processamento', 'Pedido de Cereal Integral', 27.0, true, 139),
    (20, 'Confirmado', 'Pedido de Sofá de Canto', 12.0, false, 140),
    (1, 'Confirmado', 'Pedido de Smartphone', 21.0, true, 141),
    (2, 'Em Processamento', 'Pedido de Camiseta Infantil', 14.5, false, 142),
    (3, 'Confirmado', 'Pedido de Boneca de Pelúcia', 19.0, true, 143),
    (4, 'Em Processamento', 'Pedido de Biscoitos de Chocolate', 23.0, false, 144),
    (5, 'Em Processamento', 'Pedido de Sofá de Couro', 16.0, true, 145),
    (6, 'Confirmado', 'Pedido de Tablet', 17.5, false, 146),
    (7, 'Em Processamento', 'Pedido de Vestido de Noite', 29.0, true, 147),
    (8, 'Em Processamento', 'Pedido de Carrinho de Controle Remoto', 18.0, false, 148),
    (9, 'Confirmado', 'Pedido de Cereais Matinais', 20.0, true, 149),
    (20, 'Em Processamento', 'Pedido de Mesa de Jantar', 15.5, false, 150);
    
insert into productStorage (quantity, StorageLocation)
values 
	(1, 'Canoas'), 
	(2, 'Campinas'), 
	(3, 'Rio Claro'), 
	(4, 'Ouro Preto'), 
	(5, 'São Paulo'),
    (6, 'Manaus');
    

INSERT INTO supplier (SocialName, CNPJ, contato)
VALUES ('Tectoy Brinquedos', '11111111111111', '1122334455'),
('Madeira Móveis', '22222222222222', '2233445566'),
('EletroTech', '33333333333333', '3344556677'),
('EcoPrint', '44444444444444', '4455667788'),
('BioTech Farmacêutica', '55555555555555', '5566778899'),
('FashionFab Roupas', '66666666666666', '6677889900'),
('EletroParts Express', '77777777777777', '7788990011'),
('GreenGroove Alimentos', '88888888888888', '8899001122'),
('MetaTools Eletronicos', '99999999999999', '9900112233'),
('TechFuel Eletrônicos', '10101010101010', '1011223344'),
('SkyLine Comunicações', '13131313131311', '1122334455'),
('NatureHarvest Alimentos', '12121212121212', '2233445566');

INSERT INTO seller (SocialName, AbstName, CNPJ, CPF, sellerAddress, contato)
VALUES ('TechWiz Electronics', 'ElectroTech', '11111111111111', '123456789', '123 Main St', '1122334455'),
('FurniturePlus', 'Wooden Wonders', '22222222222222', '234567890', '456 Elm St', '2233445566'),
('FashionPalace', 'GlamStyle', '33333333333333', '345678901', '789 Oak St', '3344556677'),
('PrintHub', 'EcoPrint', '44444444444444', '456789012', '567 Maple St', '4455667788'),
('HealthWave', 'BioTech', '55555555555555', '567890123', '890 Pine St', '5566778899'),
('StyleSavvy', 'FashionFab', '66666666666666', '678901234', '901 Cedar St', '6677889900'),
('FoodFusion', 'GreenGroove', '77777777777777', '789012345', '234 Birch St', '7788990011');


insert into productSeller (idPSeller, idProduct, Pquantity)
values (1, 2, 10),				
		(2, 4, 7),
		(3, 5, 2),
		(4, 1, 6),
		(5, 3, 10);
        
insert into productOrder (idPOproduct, idPOorder, poQuantity, poStatus)
values (1, 51, 1, default),
		(1, 54, 1, default),
		(2, 55, 1, 'Sem estoque'),
		(3, 100, 1, default),
		(4, 63, 1, 'Sem estoque'),
        (5, 72, 1, default);

insert into storageLocation (idLproduct, idLstorage, location)
values (1, 2, 'São Paulo'),				
		(2, 4, 'Minas Gerais'),
		(3, 5, 'Bahia'),
		(4, 1, 'Rio Grande do Sul'),
		(5, 3, 'Rio de Janeiro');

insert into productSupplier (idPsSupplier, idPsProduct, quantity)
values (25, 4, 10),				
		(32, 1, 7),
		(33, 5, 2),
		(34, 2, 6),
		(27, 3, 10);






