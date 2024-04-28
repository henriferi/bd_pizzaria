CREATE TABLE Clientes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    telefone VARCHAR(20),
    endereco VARCHAR(255)
);

CREATE TABLE Pedidos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    cliente_id INT,
    data_pedido DATE,
    FOREIGN KEY (cliente_id) REFERENCES Clientes(id)
);

CREATE TABLE Pizzas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    preco DECIMAL(10, 2) NOT NULL
);

CREATE TABLE Ingredientes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL
);

CREATE TABLE Pizza_Ingredientes (
    pizza_id INT,
    ingrediente_id INT,
    PRIMARY KEY (pizza_id, ingrediente_id),
    FOREIGN KEY (pizza_id) REFERENCES Pizzas(id),
    FOREIGN KEY (ingrediente_id) REFERENCES Ingredientes(id)
);

INSERT INTO Clientes (nome, telefone, endereco) VALUES ('Celio Henrique', '(81) 9 8622-3012', 'av norte 5559');
INSERT INTO Clientes (nome, telefone, endereco) VALUES ('Camilly Oliveira', '(81) 9 9898-1102', 'Vasco da gama 1123');
INSERT INTO Pizzas (nome, preco) VALUES ('Presunto', '35.50');
INSERT INTO Pizzas (nome, preco) VALUES ('Calabresa', '40.00');
INSERT INTO Ingredientes (nome) VALUES ('Queijo');
INSERT INTO Ingredientes (nome) VALUES ('Trigo');
INSERT INTO Ingredientes (nome) VALUES ('Sal');
INSERT INTO Ingredientes (nome) VALUES ('Cebola');

INSERT INTO Pizza_Ingredientes (pizza_id, ingrediente_id) VALUES (2, 3);
INSERT INTO Pizza_Ingredientes (pizza_id, ingrediente_id) VALUES (1, 1);


SELECT *FROM Pizzas;

SELECT nome, preco FROM Pizzas; 

SELECT *FROM Clientes WHERE endereco = 'av norte 5559';

SELECT *FROM  Clientes WHERE nome = 'Camilly Oliveira';

SELECT *FROM Pizzas WHERE nome = 'Calabresa';

SELECT *FROM Pizzas WHERE preco = '35.50';

SELECT nome, preco FROM Pizzas ORDER BY preco DESC;

SELECT nome, preco FROM Pizzas ORDER BY preco ASC;

SELECT COUNT(*) FROM Clientes;

SELECT COUNT(*) FROM Ingredientes;

SELECT * FROM Ingredientes LIMIT 2;

SELECT nome, telefone
FROM Clientes
WHERE endereco LIKE '%Vasco da gama 1123%';

SELECT preco FROM Pizzas WHERE nome LIKE '%Presunto%';
    
SELECT COUNT(*) FROM Pizzas WHERE preco > 20.00;

SELECT nome FROM Pizzas WHERE preco > 30.00;

SELECT nome FROM Ingredientes ORDER BY nome ASC;

