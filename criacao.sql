ALTER DATABASE [DW_VENDAS] SET RECOVERY SIMPLE;



CREATE TABLE dbo.dim_campanha (
                id_campanha INT NOT NULL,
                nome_campanha VARCHAR(100) NOT NULL,
                meio VARCHAR(50) NOT NULL,
                investimento FLOAT NOT NULL,
                incio DATETIME NOT NULL,
                fim DATETIME NOT NULL,
                CONSTRAINT dim_campanha_pk PRIMARY KEY (id_campanha)
)

CREATE TABLE dbo.dim_tempo (
                id_tempo INT NOT NULL,
                data DATETIME NOT NULL,
                ano INT NOT NULL,
                ms INT NOT NULL,
                dia INT NOT NULL,
                trimestre INT NOT NULL,
                nome_mes VARCHAR(15) NOT NULL,
                CONSTRAINT dim_tempo_pk PRIMARY KEY (id_tempo)
)

CREATE TABLE dbo.dim_produto (
                id_produto INT NOT NULL,
                nome_produto VARCHAR(100) NOT NULL,
                categoria VARCHAR(50) NOT NULL,
                marca VARCHAR(50) NOT NULL,
                preo_base FLOAT NOT NULL,
                CONSTRAINT dim_produto_pk PRIMARY KEY (id_produto)
)

CREATE TABLE dbo.dim_cliente (
                id_cliente INT NOT NULL,
                nome_cliente VARCHAR(100) NOT NULL,
                email_do_cliente VARCHAR(150) NOT NULL,
                GneroMFo CHAR(1) NOT NULL,
                idade_co_cliente INT NOT NULL,
                loc_cliente VARCHAR(200) NOT NULL,
                CONSTRAINT dim_cliente_pk PRIMARY KEY (id_cliente)
)

CREATE TABLE dbo.fato_vendas (
                id_fato INT NOT NULL,
                id_cliente INT NOT NULL,
                id_produto INT NOT NULL,
                id_tempo INT NOT NULL,
                id_campanha INT NOT NULL,
                quantidade INT NOT NULL,
                valor_unitario FLOAT NOT NULL,
                valor_total FLOAT NOT NULL,
                desconto FLOAT NOT NULL,
                lucro FLOAT NOT NULL,
                CONSTRAINT fato_vendas_pk PRIMARY KEY (id_fato, id_cliente, id_produto, id_tempo, id_campanha)
)

ALTER TABLE dbo.fato_vendas ADD CONSTRAINT dim_campanha_fato_vendas_fk
FOREIGN KEY (id_campanha)
REFERENCES dbo.dim_campanha (id_campanha)
ON DELETE NO ACTION
ON UPDATE NO ACTION

ALTER TABLE dbo.fato_vendas ADD CONSTRAINT dim_tempo_fato_vendas_fk
FOREIGN KEY (id_tempo)
REFERENCES dbo.dim_tempo (id_tempo)
ON DELETE NO ACTION
ON UPDATE NO ACTION

ALTER TABLE dbo.fato_vendas ADD CONSTRAINT dim_produto_fato_vendas_fk
FOREIGN KEY (id_produto)
REFERENCES dbo.dim_produto (id_produto)
ON DELETE NO ACTION
ON UPDATE NO ACTION

ALTER TABLE dbo.fato_vendas ADD CONSTRAINT dim_cliente_fato_vendas_fk
FOREIGN KEY (id_cliente)
REFERENCES dbo.dim_cliente (id_cliente)
ON DELETE NO ACTION
ON UPDATE NO ACTION

INSERT INTO dbo.dim_cliente(ID_Cliente, Nome_Cliente, email_do_cliente, GneroMFo, idade_co_cliente, loc_cliente)
VALUES
(1, 'João Silva', 'joao.silva@email.com', 'M', 34, 'Sudeste'),
(2, 'Maria Oliveira', 'maria.oliveira@email.com', 'F', 29, 'Nordeste'),
(3, 'Carlos Souza', 'carlos.souza@email.com', 'M', 40, 'Sul'),
(4, 'Ana Costa', 'ana.costa@email.com', 'F', 23, 'Centro-Oeste'),
(5, 'Paulo Lima', 'paulo.lima@email.com', 'M', 50, 'Norte');


INSERT INTO dbo.dim_produto(ID_Produto, Nome_Produto, Categoria, Marca, preo_base)
VALUES
(1, 'Smartphone X1', 'Eletrônicos', 'TechBrand', 1500.00),
(2, 'Notebook Z2', 'Eletrônicos', 'Innovatech', 3200.00),
(3, 'Fone Bluetooth', 'Acessórios', 'SoundPro', 200.00),
(4, 'Camiseta Polo', 'Vestuário', 'ClothBrand', 80.00),
(5, 'Tênis Running', 'Esportes', 'RunFast', 250.00);


INSERT INTO dbo.dim_tempo(ID_Tempo, Data, Ano, ms, Dia, Trimestre, Nome_Mes)
VALUES
(1, '20240115', 2024, 1, 15, 1, 'Janeiro'),
(2, '20240220', 2024, 2, 20, 1, 'Fevereiro'),
(3, '20240310', 2024, 3, 10, 1, 'Março'),
(4, '20240405', 2024, 4, 5, 2, 'Abril'),
(5, '20240525', 2024, 5, 25, 2, 'Maio');


INSERT INTO dbo.dim_campanha(ID_Campanha, Nome_Campanha, Meio, Investimento, incio, Fim)
VALUES
(1, 'Promoção Verão', 'Email', 5000.00, '20240101', '20240228'),
(2, 'Lançamento Novo Produto', 'Google Ads', 15000.00, '20240301', '20240331'),
(3, 'Desconto Aniversário', 'Social Media', 8000.00, '20240401', '20240430'),
(4, 'Black Friday', 'TV e Rádio', 30000.00, '20241101', '20241130'),
(5, 'Natal de Ofertas', 'Email e SMS', 20000.00, '20241201', '20241231');


INSERT INTO dbo.fato_vendas(id_fato, ID_Cliente, ID_Produto, ID_Tempo, ID_Campanha, Quantidade, Valor_Unitario, Valor_Total, Desconto, Lucro)
VALUES
(1, 1, 1, 1, 1, 2, 1500.00, 3000.00, 100.00, 2900.00),
(2, 2, 2, 2, 2, 1, 3200.00, 3200.00, 200.00, 3000.00),
(3, 3, 3, 3, 3, 3, 200.00, 600.00, 50.00, 550.00),
(4, 4, 4, 4, 4, 5, 80.00, 400.00, 20.00, 380.00),
(5, 5, 5, 5, 5, 1, 250.00, 250.00, 10.00, 240.00);


