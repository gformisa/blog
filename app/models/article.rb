class Article < ApplicationRecord
  has_many :comments # This line defines a has_many association between the Article model and the Comment model.
  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 10 }
end
