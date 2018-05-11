class AddReviewedFlag < ActiveRecord::Migration[5.1]
  def change
    add_column :comments, :reviewed, :boolean
  end
end
