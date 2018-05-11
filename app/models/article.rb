class Article < ApplicationRecord
  has_many :comments
  validates :title, presence: true
  validates :body, presence: true

  def self.search(search_term)
    if Rails.env.development?
      Article.where("body LIKE ?", "%#{search_term}%")
    else
      Article.where("body, title ilike ?", "%#{search_term}%")
    end
  end

#  def highest_rating_comment
#    comments.rating_desc.first
#  end

#  def lowest_rating_comment
#    comments.rating_asc.first
#  end

#  def average_rating
#  comments.average(:rating).to_f
#  end

end
