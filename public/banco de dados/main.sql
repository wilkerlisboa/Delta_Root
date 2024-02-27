USE DeltaRoot;

CREATE TABLE Arquivos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome_do_arquivo VARCHAR(255),
    tipo_mime VARCHAR(100),
    dados_do_arquivo LONGBLOB
);
