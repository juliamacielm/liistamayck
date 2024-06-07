create database lista2mayck_22c;
use lista2mayck_22c;

CREATE TABLE Livros (
    id INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(255),
    autor VARCHAR(255),
    ano_publicacao INT,
    disponivel BOOLEAN,
    categoria VARCHAR(100),
    isbn VARCHAR(20),
    editora VARCHAR(100),
    quantidade_paginas INT,
    idioma VARCHAR(50)
);

SELECT * FROM livros WHERE disponivel = 'Disponível';

SELECT * FROM livros WHERE editora = 'HarperCollins';

SELECT * FROM livros WHERE ano_publicacao BETWEEN 2000 AND 2010;

SELECT autor, COUNT() AS numero_livros FROM livros GROUP BY autor HAVING quantidade_paginas > 3;

SELECT * FROM livros WHERE titulo LIKE ('Senhor');

SELECT * FROM livros WHERE categoria IN ('Fantasia', 'Ficção Científica', 'Fábula');

SELECT DISTINCT Idioma FROM livros;

SELECT * FROM livros WHERE quantidade_paginas BETWEEN 200 AND 400;

SELECT titulo, ano_publicacao FROM livros ORDER BY ano_publicacao;
