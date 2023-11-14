class RenameLoginToNameInUsers < ActiveRecord::Migration[7.0]
  def change
    rename_column :users, :login, :name
  end
end
