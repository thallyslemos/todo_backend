class TodoList < ApplicationRecord
    belongs_to :user
    has_many :todos, dependent: :destroy
    accepts_nested_attributes_for :todos
    validates :name, uniqueness: { scope: :user_id,message: 'Já existe uma lista com esse nome' }, presence: { message: 'É necessário fornecer um nome para a lista' }
end
