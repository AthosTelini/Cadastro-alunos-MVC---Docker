-- Tabela Escola
CREATE TABLE IF NOT EXISTS escola (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    endereco VARCHAR(255),
    cidade VARCHAR(100),
    estado VARCHAR(2),
    contato VARCHAR(50)
);

-- Tabela Professor
CREATE TABLE IF NOT EXISTS professor (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    area_atuacao VARCHAR(255),
    contato VARCHAR(50),
    cat VARCHAR(100)
);

-- Tabela Alunos
CREATE TABLE IF NOT EXISTS alunos (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    data_nascimento DATE,
    ano_turma VARCHAR(50),
    observacao TEXT,
    senha VARCHAR(255),
    id_escola INT,
    id_professor INT,
    CONSTRAINT fk_escola FOREIGN KEY (id_escola) REFERENCES escola(id) ON DELETE SET NULL,
    CONSTRAINT fk_professor FOREIGN KEY (id_professor) REFERENCES professor(id)
);

-- Tabela Usuários Admin
CREATE TABLE IF NOT EXISTS usuarios_admin (
    id SERIAL PRIMARY KEY,
    nome_completo VARCHAR(255) NOT NULL,
    usuario VARCHAR(100) UNIQUE NOT NULL,
    senha VARCHAR(255) NOT NULL
);


INSERT INTO usuarios_admin (nome_completo, usuario, senha)
VALUES ('Administrador do Sistema', 'admin', '8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918');
ON CONFLICT (usuario) DO NOTHING;