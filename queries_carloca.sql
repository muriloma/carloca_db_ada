--carros disponíveis para alugar
SELECT * FROM locacoes
WHERE status <> 'ativo';


--carros disponíveis para alugar em 2024-02-09
SELECT * FROM locacoes JOIN carros ON locacoes.carro_id = carros.id
WHERE status <> 'ativo'
AND (status <> 'reservado' 
     OR (status = 'reservado' 
         AND previsao_devolucao < '2024-02-09'
        )
    );


--atualizando a quilometragem do carro após finalizada uma locação
UPDATE carros
SET quilometragem = (
  SELECT quilometragem_fim
  FROM locacoes
  WHERE id = 5
)
WHERE id = (
  SELECT carro_id
  FROM locacoes
  WHERE id = 5
);


--clientes com alugueis ativos
SELECT l.cliente_id, clientes.nome, clientes.cpf, l.carro_id, carros.modelo, carros.cor, l.data_locacao, l.previsao_devolucao, l.status
FROM clientes JOIN (
  locacoes AS l JOIN carros ON l.carro_id = carros.id
  )
ON clientes.id = l.cliente_id
WHERE l.status = 'ativo';