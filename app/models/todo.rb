class Todo < ApplicationRecord
  belongs_to :todo_list
  validates  :title, presence: {message: 'É necessário fornecer um nome para o item'}
end
