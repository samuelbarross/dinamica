class CoordenacaoPedagogica < ApplicationRecord
  belongs_to :prefeitura
  belongs_to :user
  belongs_to :ano_letivo
  belongs_to :contrato
end
