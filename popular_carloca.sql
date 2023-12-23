INSERT INTO clientes
(nome, data_nasc, cpf, cnh)
VALUES
('Regan','1999-08-11','25625520292','571607558'),
  ('Karleigh','1975-03-08','64316253432','181076113'),
  ('Ross','1971-09-17','88181673411','364712253'),
  ('Jack','1983-04-03','74685420330','736173262'),
  ('Marcia','1977-07-25','53421488125','923368373'),
  ('Keely','1992-01-26','38511817718','012065707'),
  ('Nelle','1998-06-19','22424653032','886334013'),
  ('Prescott','1990-12-26','73357732085','686971212'),
  ('Bell','1977-05-13','75529412080','094528348'),
  ('Brenna','1989-05-26','11928130435','215694588');


INSERT INTO categorias (categoria)
VALUES
('sedam medio'),
('sedam grande'),
('sedam compacto'),
('hatch'),
('suv'),
('coupe'),
('esporte'),
('conversivel');


INSERT INTO carros 
(modelo, montadora, cor, versao, categoria_id, quilometragem, disponivel)
VALUES
('gol', 'volkswagen', 'prata', '1.0 confortline', 4, 0, true),
('accord', 'honda', 'preto', '2.0 top', 2, 4000, true),
('focus', 'ford', 'branco', '2.0 flex', 4, 8500, false),
('nivus', 'volkswagen', 'preto', '1.0 tsi', 5, 0, false),
('kicks', 'nissan', 'branco', '1.5', 5, 600, true),
('mercedes-benz c-class coupe', 'mercedes-benz', 'preto', '1.6 turbo flex', 2, 3875, false);


INSERT INTO franquias
(cidade, uf, cep, rua, numero)
VALUES
('rio de janeiro', 'rj', '20010080', 'rua dali', 15), 
('santos', 'sp', '11010020', 'rua do outro lado', 654),
('salvador', 'ba', '41800560', 'esquina paranoia delirante', 11); 


INSERT INTO locacoes 
(cliente_id, carro_id, previsao_locacao, previsao_devolucao, data_locacao, data_devolucao, local_locacao_id, local_devolucao_id, quilometragem_ini, quilometragem_fim, status)
VALUES
(1, 2, '2023-01-15', '2023-01-20', '2023-01-15', '2023-01-20', 1, 2, 100, 300, 'ativo'),
(2, 5, '2023-02-10', '2023-02-15', '2023-02-10', '2023-02-15', 2, 3, 50, 200, 'finalizado'),
(3, 3, '2023-03-05', '2023-03-10', '2023-03-05', '2023-03-10', 1, 3, 200, 500, 'reservado'),
(4, 1, '2023-04-20', '2023-04-25', '2023-04-20', '2023-04-25', 2, 1, 30, 150, 'ativo'),
(5, 6, '2023-05-15', '2023-05-20', '2023-05-15', '2023-05-20', 3, 2, 80, 250, 'finalizado'),
(6, 4, '2023-06-10', '2023-06-15', '2023-06-10', '2023-06-15', 1, 2, 150, 400, 'ativo'),
(7, 2, '2023-07-25', '2023-07-30', '2023-07-25', '2023-07-30', 2, 3, 120, 350, 'finalizado'),
(8, 1, '2023-08-15', '2023-08-20', '2023-08-15', '2023-08-20', 3, 1, 40, 180, 'reservado'),
(9, 5, '2023-09-10', '2023-09-15', '2023-09-10', '2023-09-15', 1, 2, 90, 300, 'ativo'),
(10, 6, '2023-10-05', '2023-10-10', '2023-10-05', '2023-10-10', 2, 3, 180, 500, 'reservado');