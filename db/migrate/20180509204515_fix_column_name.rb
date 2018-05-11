class FixColumnName < ActiveRecord::Migration[5.1]
  def change
    rename_column :comments, :articles_id, :article_id
  end
end
