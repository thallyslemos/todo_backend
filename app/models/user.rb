class User < ApplicationRecord
    has_many :todo_lists, dependent: :destroy
    has_secure_password
    validates :email, uniqueness: { message: 'Já existe um usuário com esse email' }, presence: { message: 'É necessário fornecer um email' }
end
