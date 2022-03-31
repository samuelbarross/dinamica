json.extract! livro, :id, :nome, :serie_id, :volume, :ano_edicao, :created_at, :updated_at
json.url livro_url(livro, format: :json)
