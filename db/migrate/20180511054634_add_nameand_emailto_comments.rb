class AddNameandEmailtoComments < ActiveRecord::Migration[5.1]
  def change
    add_column :comments, :name, :string
    add_column :comments, :email, :string
  end
end
