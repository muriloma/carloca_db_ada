CREATE TABLE categorias (
  id INT AUTO_INCREMENT PRIMARY KEY,
  categoria VARCHAR(50) UNIQUE NOT NULL
);

CREATE TABLE carros (
  id INT AUTO_INCREMENT PRIMARY KEY,
  modelo VARCHAR(100) NOT NULL,
  montadora VARCHAR(50) NOT NULL,
  cor ENUM ('branco', 'preto', 'prata'),
  versao VARCHAR(100) NOT NULL,
  categoria_id INT,
  quilometragem INT DEFAULT 0 NOT NULL,
  disponivel BOOLEAN DEFAULT true NOT NULL,
  FOREIGN KEY (categoria_id) REFERENCES categorias(id) ON DELETE CASCADE
);

CREATE TABLE clientes (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(100) NOT NULL,
  data_nasc DATE NOT NULL,
  cpf CHAR(11) NOT NULL,
  cnh CHAR(9) NOT NULL
);

CREATE TABLE franquias (
  id INT AUTO_INCREMENT PRIMARY KEY,
  cidade VARCHAR(100) NOT NULL,
  uf CHAR(2) NOT NULL,
  cep CHAR(8) NOT NULL,
  rua VARCHAR(100) NOT NULL,
  numero INT
);

CREATE TABLE locacoes (
  id INT AUTO_INCREMENT PRIMARY KEY,
  cliente_id INT,
  carro_id INT,
  previsao_locacao DATE NOT NULL,
  previsao_devolucao DATE NOT NULL,
  data_locacao DATE DEFAULT NULL,
  data_devolucao DATE DEFAULT NULL,
  local_locacao_id INT,
  local_devolucao_id INT,
  quilometragem_ini INT NOT NULL,
  quilometragem_fim INT NOT NULL,
  status VARCHAR(100) CHECK (status IN ('reservado', 'ativo', 'finalizado')),
  FOREIGN KEY (cliente_id) REFERENCES clientes(id),
  FOREIGN KEY (carro_id) REFERENCES carros(id),
  FOREIGN KEY (local_locacao_id) REFERENCES franquias(id),
  FOREIGN KEY (local_devolucao_id) REFERENCES franquias(id)
);
