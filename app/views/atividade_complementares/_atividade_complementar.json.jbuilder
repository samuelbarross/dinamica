json.extract! atividade_complementar, :id, :nome, :capitulo_id, :descricao, :url, :tipo, :created_at, :updated_at
json.url atividade_complementar_url(atividade_complementar, format: :json)
