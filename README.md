# Sales Data Warehouse Project

Este repositório contém a implementação de um **Data Warehouse** para análise de vendas, construído utilizando **SQL Server** e **SQL Power Architect**. O projeto tem como objetivo centralizar dados de vendas, produtos, clientes, campanhas e tempo em um único ambiente para facilitar a análise e relatórios.

## Descrição

O projeto simula um **Data Warehouse** para a análise de vendas de uma loja fictícia, com base em dados como:

- **Vendas**
- **Produtos**
- **Clientes**
- **Campanhas de Marketing**
- **Tempo (Datas)**

### Tecnologias Utilizadas

- **SQL Server**: Utilizado para a criação das tabelas de dados e processamento do **Data Warehouse**.
- **SQL Power Architect**: Ferramenta de modelagem de dados utilizada para criar o **modelo de dados dimensional** do projeto.

## Estrutura do Projeto

O projeto está estruturado em dois principais componentes:

1. **Modelagem Dimensional**: Definição de tabelas de dimensões e fato, incluindo:
   - **dim_cliente**: Informações sobre os clientes.
   - **dim_produto**: Informações sobre os produtos.
   - **dim_tempo**: Informações sobre as datas.
   - **dim_campanha**: Detalhes sobre as campanhas de marketing.
   - **fato_vendas**: Fatos de vendas, como quantidade e valor de vendas.

2. **Processo de Carga e Inserção de Dados**: Scripts SQL para inserir dados fictícios nas tabelas, criando um cenário completo para análise.

## Como Executar

1. **Pré-requisitos**:
   - Ter o **SQL Server** instalado e configurado em sua máquina.
   - Ter o **SQL Power Architect** para visualização e modelagem do banco de dados.

2. **Passos**:
   1. Clone o repositório:
      ```bash
      git clone https://github.com/Gustavo-Pasciano93/sales_dw_project.git
      ```
   2. Importe os scripts SQL no seu **SQL Server Management Studio (SSMS)** ou qualquer outro cliente SQL compatível.
   3. Execute os scripts de criação das tabelas e de inserção de dados.
   4. Utilize as consultas SQL fornecidas para análise de dados e geração de relatórios.

## Consultas SQL

Diversas consultas SQL foram criadas para realizar a análise de dados, incluindo:
- **Total de vendas por cliente**
- **Vendas por produto**
- **Análise de campanhas de marketing**
- **Comparação de vendas entre períodos**

Veja as consultas no arquivo `queries.sql`.

## Contribuições

Se você deseja contribuir para o projeto, fique à vontade para abrir **issues** e **pull requests**.

## Licença

Este projeto está licenciado sob a **MIT License** - veja o arquivo [LICENSE](LICENSE) para mais detalhes.

---

**Gustavo Pasciano**  
*Data Engineering Enthusiast*  
*GitHub: [Gustavo-Pasciano93](https://github.com/Gustavo-Pasciano93)*  
