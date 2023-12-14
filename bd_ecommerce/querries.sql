use ecommerce;

select *  from clients;
select * from product;
select * from orders;
select * from supplier;

-- Pergunta 1: Qual é o nome do cliente que fez o pedido com o maior valor de envio e ainda não foi confirmado?

SELECT concat(c.Fname, ' ', Minit, ' ', c.Lname) AS Cliente, o.sendValue FROM clients c
	JOIN orders o ON c.idClient = o.idOrderClient
	WHERE o.orderStatus = 'Em Processamento'
	ORDER BY o.sendValue DESC
	LIMIT 1;
    
-- Qual é o vendedor com o maior número de produtos em seu catálogo?

SELECT s.SocialName, COUNT(ps.idProduct) AS TotalProdutos FROM seller s
	LEFT JOIN productSeller ps ON s.idSeller = ps.idPSeller
	GROUP BY s.idSeller
	ORDER BY TotalProdutos DESC
	LIMIT 1;
    
-- Quais categorias de produtos têm uma média de avaliação (Avaliação) superior a 4.0?
SELECT category, ROUND(AVG(Avaliação), 2) AS MédiaAvaliação
FROM product
GROUP BY category
HAVING MédiaAvaliação > 4.0;

-- Recuperar quantos pedidos foram realizados pelos clientes?
select c.idClient, Fname, count(*) as Number_of_orders from clients c
		inner join orders o On c.idClient = o.idOrderClient
		inner join productOrder p on p.idPOorder = o.idOrder
    group by idClient;
    
-- recuperação de pedido com produto associado
select * from clients c 
			inner join orders o ON c.idClient = o.idOrderClient
			inner join productOrder p ON p.idPOorder = o.idOrder
		group by idClient;
        
SELECT c.idClient, concat(c.Fname,' ', c.Minit,'.',' ', c.Lname) as Cliente, c.CPF, c.Address, c.Email
	FROM clients c
		INNER JOIN orders o ON c.idClient = o.idOrderClient
		INNER JOIN productOrder p ON p.idPOorder = o.idOrder
		GROUP BY c.idClient, c.Fname, c.Minit, c.Lname, c.CPF, c.Address, c.Email;