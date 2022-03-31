class Capitulo < ApplicationRecord
  belongs_to :livro
  belongs_to :disciplina
end
