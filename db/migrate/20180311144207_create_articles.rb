class CreateArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :articles do |t|
      t.string :title
      t.string :body
      t.date :releasedate
      t.string :image_url

      t.timestamps
    end
  end
end
