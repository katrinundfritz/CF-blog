class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :article
#  scope :rating_desc, -> { order(rating: :desc) }
#  scope :rating_asc, -> { order(rating: :asc) }
  validates :body, presence: true
  validates :name, presence: true
  validates :email, presence: true

#  validates :rating, numericality: { only_integer: true }
end
