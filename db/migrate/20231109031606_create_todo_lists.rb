class CreateTodoLists < ActiveRecord::Migration[7.0]
  def change
    create_table :todo_lists do |t|
      t.string :name
      t.datetime :created_at

      t.timestamps
    end
  end
end
