class DeleteColumn < ActiveRecord::Migration[5.0]
  def up
    remove_column :users, :email
    rename_column :users, :name, :username
  end

  def down
    create_column :users, :email
    rename_column :users, :username,:name
  end
end
