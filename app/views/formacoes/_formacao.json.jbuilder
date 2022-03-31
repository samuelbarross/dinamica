json.extract! formacao, :id, :nome, :capitulo_id, :descricao, :url, :created_at, :updated_at
json.url formacao_url(formacao, format: :json)
