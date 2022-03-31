class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  # devise :database_authenticatable, :registerable,
  #        :recoverable, :rememberable, :validatable

	devise :invitable, :database_authenticatable, :registerable,
	:recoverable, :rememberable, :trackable, :validatable

  enum perfil: [:admin, :secretario, :professor, :prefeito, :gestao_dinamica]
end
