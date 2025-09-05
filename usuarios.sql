CREATE TABLE Usuarios (
    id_usuario INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    telefone VARCHAR(20)
);

CREATE TABLE Categorias (
    id_categoria INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    nome_categoria VARCHAR(100) NOT NULL
);

CREATE TABLE Livros (
    id_livro INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    titulo VARCHAR(200) NOT NULL,
    autor VARCHAR(100) NOT NULL,
    ano_publicacao INT,
    categoria_id INT,
    FOREIGN KEY (categoria_id) REFERENCES Categorias(id_categoria)
);

CREATE TABLE Emprestimos (
    id_emprestimo INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    id_usuario INT,
    data_emprestimo DATE NOT NULL,
    data_devolucao DATE,
    FOREIGN KEY (id_usuario) REFERENCES Usuarios(id_usuario)
);

CREATE TABLE ItensEmprestimo (
    id_item INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    id_emprestimo INT,
    id_livro INT,
    FOREIGN KEY (id_emprestimo) REFERENCES Emprestimos(id_emprestimo),
    FOREIGN KEY (id_livro) REFERENCES Livros(id_livro)
);



