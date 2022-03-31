class Contrato < ApplicationRecord
  belongs_to :prefeitura
  belongs_to :ano_letivo
end
