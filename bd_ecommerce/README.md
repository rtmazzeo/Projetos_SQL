# bd_ecommerce
Construindo seu Primeiro Projeto Lógico de Banco de Dados

## Tabela Cliente:
A tabela "clients" armazena informações sobre os clientes de uma loja virtual. Cada cliente é identificado por um número único (idClient) e fornece detalhes como nome, endereço, CPF e email. Garantimos que nenhum CPF seja repetido na tabela usando uma restrição única. Também é possível associar pedidos a clientes através do campo "idOrderClient".

## Tabela Produto
A tabela "product" é responsável pelo armazenamento de informações sobre os produtos disponíveis na loja. Cada produto tem um número único de identificação (idProduct) e inclui detalhes como nome, categoria, classificação para crianças e tamanho. O campo "Avaliação" mantém a classificação média do produto, e o campo "Size" armazena informações sobre o tamanho do produto.

## Tabela Pedido
A tabela "orders" controla os pedidos feitos pelos clientes. Cada pedido recebe um número de identificação único (idOrder) e pode ter um status como "Cancelado," "Confirmado," ou "Em Processamento." Além disso, inclui uma descrição do pedido, o valor do envio, informações de pagamento e é associado a um cliente através do campo "idOrderClient."

## Tabela Pagamentos
A tabela "payments" armazena informações sobre os métodos de pagamento disponíveis para os clientes. Ela registra o limite disponível para cada método de pagamento por cliente. Chave primária composta por "idClient" e "idPayment" garante unicidade.

## Tabela Estoque
A tabela "productStorage" mantém o controle do estoque de produtos. Cada entrada no estoque é identificada por um número único (idProdStorage) e inclui detalhes como localização e quantidade disponível.

## Tabela Fornecedor
A tabela "supplier" armazena informações sobre os fornecedores de produtos. Cada fornecedor é identificado por um número único (idsupplier) e inclui detalhes como nome social, CNPJ e informações de contato. Garantimos que nenhum CNPJ seja repetido na tabela usando uma restrição única.

## Tabela Vendedor
A tabela "seller" registra informações sobre os vendedores. Cada vendedor é identificado por um número único (idSeller) e fornece detalhes como nome social, nome abreviado, CNPJ, CPF, endereço e informações de contato. Restrições únicas garantem que CNPJ e CPF sejam exclusivos.

## Tabela Produto do Vendedor
A tabela "productSeller" estabelece uma relação entre vendedores e produtos, permitindo que um vendedor tenha múltiplos produtos em seu catálogo. Ela registra a quantidade de cada produto que um vendedor possui.

## Tabela Produto do Pedido
A tabela "productOrder" relaciona produtos a pedidos, rastreando quais produtos estão associados a quais pedidos e a quantidade de cada produto em um pedido. Ela também mantém o status do produto no pedido, como "Disponível" ou "Sem Estoque."

## Tabela Localização de Estoque
A tabela "storageLocation" associa produtos a locais de armazenamento, permitindo o controle preciso do estoque. Cada entrada na tabela indica qual produto está armazenado em qual local.

## Tabela Fornecedor do Produto
A tabela "productSupplier" estabelece uma relação entre produtos e fornecedores, rastreando quais fornecedores fornecem quais produtos e a quantidade disponível de cada produto fornecido pelo fornecedor.

Perguntas

## Consulta 1: Nome do Cliente com o Maior Valor de Envio em um Pedido Não Confirmado
Esta consulta busca o nome do cliente que fez o pedido com o maior valor de envio e que ainda não foi confirmado. Ela combina informações das tabelas 'clients' e 'orders', filtrando os pedidos em processamento ('orderStatus = 'Em Processamento'') e selecionando o cliente com o pedido de envio mais caro.

## Consulta 2: Vendedor com o Maior Número de Produtos em seu Catálogo
Nesta consulta, identificamos o vendedor que possui o maior número de produtos em seu catálogo. Ela utiliza informações das tabelas 'seller' e 'productSeller', contando quantos produtos cada vendedor tem e, em seguida, ordenando os resultados em ordem decrescente e selecionando o primeiro vendedor.

## Consulta 3: Categorias de Produtos com Média de Avaliação Superior a 4.0
Nesta query, estamos identificando as categorias de produtos que têm uma média de avaliação (Avaliação) superior a 4.0. Utilizamos a tabela 'product' para calcular a média das avaliações para cada categoria e, em seguida, filtramos apenas as categorias com média superior a 4.0.

## Consulta 4: Número de Pedidos Realizados por Clientes
Nesta consulta, estamos recuperando quantos pedidos foram realizados por cada cliente. Ela utiliza as tabelas 'clients', 'orders' e 'productOrder', fazendo uma junção das informações relacionadas aos clientes e pedidos, contando o número de pedidos para cada cliente e agrupando os resultados pelo ID do cliente.

## Consulta 5: Recuperação de Pedidos com Produtos Associados
Nesta query, estamos recuperando pedidos juntamente com os produtos associados a eles. Ela combina informações das tabelas 'clients', 'orders' e 'productOrder', mostrando todos os pedidos e seus produtos correspondentes, agrupados pelo ID do cliente.
