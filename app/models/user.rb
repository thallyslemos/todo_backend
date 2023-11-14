class User < ApplicationRecord
    has_many :todo_lists, dependent: :destroy
    has_secure_password
    validates :email, uniqueness: { message: 'Já existe um usuário com esse email' }, presence: { message: 'É necessário fornecer um email' }, format: { with: URI::MailTo::EMAIL_REGEXP, message: 'Email inválido' }
    validates :password, length: { minimum: 6, message: 'A senha deve ter no mínimo 6 caracteres' }
  end
