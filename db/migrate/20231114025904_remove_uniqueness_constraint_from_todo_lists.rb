class RemoveUniquenessConstraintFromTodoLists < ActiveRecord::Migration[7.0]
  def change
    remove_index :todo_lists, :name
    add_index :todo_lists, :name
  end
end
