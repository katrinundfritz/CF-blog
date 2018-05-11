class RenameAdmin < ActiveRecord::Migration[5.1]
  def change
    rename_column :users, :admin, :author
  end
end
