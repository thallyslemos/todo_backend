class TodoList < ApplicationRecord
    has_many :todos, dependent: :destroy
    accepts_nested_attributes_for :todos
    validates :name, uniqueness: { message: 'Já existe uma lista com esse nome' }, presence: { message: 'É necessário fornecer um nome para a lista' }
end
