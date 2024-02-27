USE DeltaRoot;

CREATE TABLE Arquivos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome_do_arquivo VARCHAR(255),
    tipo_mime VARCHAR(100),
    dados_do_arquivo LONGBLOB
);
CREATE TABLE Jogos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255),
    descricao TEXT,
    preco DECIMAL(10, 2),
    categoria_id INT,
    desenvolvedor_id INT,
    FOREIGN KEY (categoria_id) REFERENCES Categorias(id),
    FOREIGN KEY (desenvolvedor_id) REFERENCES Desenvolvedores(id)
);
CREATE TABLE Categorias (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255)
);
CREATE TABLE Desenvolvedores (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255)
);
CREATE TABLE Clientes (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255),
    email VARCHAR(255),
    endereco VARCHAR(255)
);
CREATE TABLE Pedidos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    cliente_id INT,
    data_pedido DATE,
    status VARCHAR(50),
    FOREIGN KEY (cliente_id) REFERENCES Clientes(id)
);
CREATE TABLE DetalhesPedido (
    id INT PRIMARY KEY AUTO_INCREMENT,
    pedido_id INT,
    jogo_id INT,
    quantidade INT,
    preco_unitario DECIMAL(10, 2),
    FOREIGN KEY (pedido_id) REFERENCES Pedidos(id),
    FOREIGN KEY (jogo_id) REFERENCES Jogos(id)
);

