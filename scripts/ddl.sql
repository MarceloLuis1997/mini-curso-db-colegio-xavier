CREATE TABLE artistas (
  id int PRIMARY KEY AUTO_INCREMENT,
  nome varchar(100) NOT NULL,
  genero varchar(50) NOT NULL,
  popularidade int DEFAULT 0,
  quantidade_seguidores int DEFAULT 0,
  data_cadastro datetime DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE albuns (
  id int PRIMARY KEY AUTO_INCREMENT,
  id_artista int NOT NULL,
  titulo varchar(150) NOT NULL,
  valor decimal NOT NULL DEFAULT 5.00,
  ano_lancamento int NOT NULL,
  FOREIGN KEY (id_artista) REFERENCES artistas (id)
);

CREATE TABLE musicas (
  id int PRIMARY KEY AUTO_INCREMENT,
  id_album int NOT NULL,
  numero int NOT NULL,
  titulo varchar(150) NOT NULL,
  duracao_segundos int NOT NULL,
  quantidade_reproducoes int NOT NULL DEFAULT 0,
  FOREIGN KEY (id_album) REFERENCES albuns (id)
);

CREATE TABLE festivais (
  id int PRIMARY KEY AUTO_INCREMENT,
  nome varchar(100) NOT NULL,
  local varchar(200),
  data date NOT NULL
);

CREATE TABLE festivais_artistas (
  id int PRIMARY KEY AUTO_INCREMENT,
  id_festival int NOT NULL,
  id_artista int NOT NULL,
  FOREIGN KEY (id_festival) REFERENCES festivais (id),
  FOREIGN KEY (id_artista) REFERENCES artistas (id)
);
