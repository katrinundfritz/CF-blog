class RenameAdmin < ActiveRecord::Migration[5.1]
  def change
    rename_column :comments, :admin, :author
  end
end
