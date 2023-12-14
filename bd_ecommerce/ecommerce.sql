-- Criação do banco de dados para o cenário de E-commerce

-- drop database ecommerce;
create database ecommerce;
use ecommerce;

-- Tabela Cliente
create table clients(
	idClient int auto_increment primary key,
    Fname varchar(10),
    Minit char(3),
    Lname varchar(10),
    CPF char(11) not null,
    Address varchar(30),
    Email varchar(50),
    constraint unique_cpf_client unique(CPF)
    );
    
alter table clients auto_increment=1;

-- Tabela Produto
create table product(
	idProduct int auto_increment primary key,
    Pname varchar(30) not null,
    classification_kids bool default false,
    category enum('Eletronico','Vestimenta','Brinquedos','Alimentos','Móveis'),
    Avaliação float default 0,
    Size varchar(10)
    );
    
-- Tabela Pedido
create table orders(
	idOrder int auto_increment primary key,
    idOrderClient int,
    orderStatus enum('Cancelado','Confirmado','Em Processamento') default 'Em Processamento',
    orderDescription varchar(255),
    sendValue float default 10,
    paymentCash bool default false,
    idPayment int,
    constraint fk_orders_client foreign key (idOrderClient) references clients(idClient)
);

create table payments(
	idClient int,
    idPayment int,
    typePayment enum('Dois Cartões','Cartão','Boleto'),
    limitAvailable float,
    primary key(idClient, idPayment)
    );

    
-- Tabela estoque
create table productStorage(
idProdStorage int auto_increment primary key,
StorageLocation varchar(255),
quantity int default 0
);

create table supplier(
idsupplier int auto_increment primary key,
SocialName varchar(255) not null,
CNPJ char(15) not null,
contato char(11) not null,
constraint unique_supplier unique(CNPJ)
);

create table seller(
idSeller int auto_increment primary key,
SocialName varchar(255) not null,
AbstName varchar(255),
CNPJ char(15),
CPF char(9),
sellerAddress varchar(255),
contato char(11) not null,
constraint unique_cnpj_seller unique (CNPJ),
constraint unique_cpf_seller unique (CPF)
);

create table productSeller(
idPSeller int,
idProduct int,
Pquantity int default 1,
primary key (idPseller, idProduct),
constraint fk_product_seller foreign key (idPSeller) references seller(idSeller),
constraint fk_product_product foreign key (idProduct) references product(idProduct)
);

create table productOrder(
idPOproduct int,
idPOorder int,
poQuantity int default 1,
poStatus enum('Disponível','Sem Estoque') default 'Disponível',
primary key (idPOproduct, idPOorder),
constraint fk_productorder_seller foreign key (idPOproduct) references product(idProduct),
constraint fk_productorder_productr foreign key (idPOorder) references orders(idOrder)
);

create table storageLocation(
	idLproduct int,
    idLstorage int,
    location varchar(255) not null,
    primary key (idLproduct, idLstorage),
    constraint fk_storage_location_product foreign key (idLproduct) references product(idProduct),
    constraint fk_storage_location_storage foreign key (idLstorage) references productStorage (idProdStorage)    
);

create table productSupplier(
	idPsSupplier int, 
    idPsProduct int,
    quantity int not null,
    primary key (idPsSupplier, idPsProduct),
    constraint fk_product_supplier_supplier foreign key (idPsSupplier) references supplier (idSupplier),
    constraint fk_product_supplier_product foreign key (idPsProduct) references product (IdProduct)
);

use information_schema;
show tables;
select * from referential_constraints where constraint_schema = 'ecommerce';

