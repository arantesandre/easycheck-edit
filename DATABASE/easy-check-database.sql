CREATE DATABASE railway;
USE railway;

CREATE TABLE usuarios (
   id INT AUTO_INCREMENT PRIMARY KEY,
   cnpj VARCHAR(20),
   nome_empresa VARCHAR(255),
   nome VARCHAR(255) NOT NULL,
   email VARCHAR(255) NOT NULL UNIQUE,
   senha VARCHAR(255) NOT NULL,
   foto LONGTEXT
   
);

CREATE TABLE clientes (
   id_cliente INT AUTO_INCREMENT PRIMARY KEY,
   nome VARCHAR(255) NOT NULL,
   email VARCHAR(255),
   celular VARCHAR(20), 
   data_nascimento DATE, 
   cpf VARCHAR(15) NOT NULL UNIQUE, 
   cargo VARCHAR(200),
   pis VARCHAR(15),  
   cep VARCHAR(10), 
   rua VARCHAR(200),
   numero INT,
   bairro VARCHAR(200),
   cidade VARCHAR(100),
   usuario_id INT,
   FOREIGN KEY (usuario_id) REFERENCES usuarios(id)
);

SELECT * FROM usuarios;

DROP DATABASE railway;