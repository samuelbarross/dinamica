rails g scaffold AnoLetivo ano:integer
rails g scaffold Estado nome:string{100} sigla:string{2} codigo_ibge:string{2}
rails g scaffold Cidade nome:string{200} estado:references codigo_ibge:string{10}
rails g scaffold Prefeitura nome:string cidade:references
rails g scaffold Contrato prefeitura:references ano_letivo:references
rails g scaffold Nivel nome:string codigo:string{5}
rails g scaffold Serie nome:string codigo:string{5} nivel:references
rails g scaffold Materia nome:string codigo:string{10}
rails g scaffold Disciplina nome:string codigo:string{10} materia:references
rails g scaffold Livro nome:string serie:references volume:integer ano_edicao:string{50}
rails g scaffold Capitulo nome:string numero:integer livro:references disciplina:references
rails g scaffold PlanejamentoPedagogico capitulo:references numero_semana:integer
rails g scaffold Formacao nome:string capitulo:references descricao:text url:string
rails g scaffold AtividadeComplementar nome:string capitulo:references descricao:text url:string tipo:integer
rails g scaffold CoordenacaoPedagogica Prefeitura:references user:references ano_letivo:references contrato:references

Perfis de Usuário
- admin
- secretario
- professor
- prefeito
- gestao_dinamica