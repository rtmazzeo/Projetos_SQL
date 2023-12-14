USE oficina;

-- conferencia se foram criadas a tabelas com os dados corretamente

select * from clientes;
select * from carros;
select * from servicos;
select * from funcionarios;
select * from OrdensServico;
select * from Pecas;
select * from Fornecedores;
select * from DetalhesOrdemServico;

-- Recupera os nomes completos dos clientes e seus endereços:

SELECT CONCAT(Fname, ' ', COALESCE(Minit, ''), ' ', Lname) AS NomeCompleto, Endereco
FROM Clientes;

-- Lista os carros (marca, modelo e ano) associados a cada cliente:

SELECT c.Marca, c.Modelo, c.Ano, CONCAT(cl.Fname, ' ', COALESCE(cl.Minit, ''), ' ', cl.Lname) AS NomeCliente
FROM Carros c
JOIN Clientes cl ON c.ClienteID = cl.ClienteID;

-- Recupera o total gasto por cada cliente em serviços:

SELECT CONCAT(Fname, ' ', COALESCE(Minit, ''), ' ', Lname) AS NomeCliente, SUM(s.Preco) AS TotalGasto
FROM Clientes cl
JOIN OrdensServico os ON cl.ClienteID = os.ClienteID
JOIN DetalhesOrdemServico dos ON os.OrdemID = dos.OrdemID
JOIN Servicos s ON dos.ServicoID = s.ServicoID
GROUP BY cl.ClienteID
HAVING TotalGasto IS NOT NULL;

-- Lista os funcionários e seus salários em ordem decrescente de salário:

SELECT CONCAT(Fname, ' ', COALESCE(Minit, ''), ' ', Lname) AS NomeFuncionario, Salario
FROM Funcionarios
ORDER BY Salario DESC;

-- Recupere os carros que foram atendidos por mais de um funcionário:

SELECT CarroID
FROM (
    SELECT CarroID, COUNT(DISTINCT FuncionarioID) AS NumFuncionarios
    FROM OrdensServico
    GROUP BY CarroID
) AS CarrosComMaisDeUmFuncionario
WHERE NumFuncionarios > 1;

-- Liste os clientes que possuem carros com mais de 5 anos de idade:

SELECT CONCAT(Fname, ' ', COALESCE(Minit, ''), ' ', Lname) AS NomeCliente, c.Marca, c.Modelo, c.Ano
FROM Clientes cl
JOIN Carros c ON cl.ClienteID = c.ClienteID
WHERE YEAR(CURRENT_DATE) - c.Ano > 5;

-- Recupere o total gasto em peças por cada ordem de serviço:

SELECT os.OrdemID, SUM(p.Preco * dos.QuantidadePecas) AS TotalGastoPecas
FROM OrdensServico os
JOIN DetalhesOrdemServico dos ON os.OrdemID = dos.OrdemID
JOIN Pecas p ON dos.PecaID = p.PecaID
GROUP BY os.OrdemID;

