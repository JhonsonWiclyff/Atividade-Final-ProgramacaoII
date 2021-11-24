/* Database_Logico_1: */

CREATE DATABASE dbLivraria;

CREATE TABLE dbLivraria.tbEditora (
    id INTEGER PRIMARY KEY,
    Cidade VARCHAR(300),
    Nome VARCHAR(300)
);

CREATE TABLE dbLivraria.tbLivro (
    isbn INTEGER PRIMARY KEY,
    Titulo VARCHAR(300),
    Ano YEAR,
    fk_Editora_id INTEGER,
    fk_Categoria_id INTEGER,
    fk_Autor_id INTEGER
);

CREATE TABLE dbLivraria.tbCategoria (
    id INTEGER PRIMARY KEY,
    Descricao VARCHAR(300)
);

CREATE TABLE dbLivraria.tbAutor (
    id INTEGER PRIMARY KEY,
    Nome VARCHAR(300),
    Nacionalidadde VARCHAR(300)
);
 
ALTER TABLE dbLivraria.tbLivro ADD CONSTRAINT FK_tbLivro_2
    FOREIGN KEY (fk_Editora_id)
    REFERENCES dbLivraria.tbEditora (id)
    ON DELETE CASCADE;
 
ALTER TABLE dbLivraria.tbLivro ADD CONSTRAINT FK_tbLivro_3
    FOREIGN KEY (fk_Categoria_id)
    REFERENCES dbLivraria.tbCategoria (id)
    ON DELETE CASCADE;
 
ALTER TABLE dbLivraria.tbLivro ADD CONSTRAINT FK_tbLivro_4
    FOREIGN KEY (fk_Autor_id)
    REFERENCES dbLivraria.tbAutor (id)
    ON DELETE CASCADE;