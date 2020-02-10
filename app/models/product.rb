class Product < ApplicationRecord
  has_one  :room
  has_many :images
  has_many :categories, through: :product_categories
  has_many :equipments, through: :product_equipments
  has_many :features,   through: :product_features
  belongs_to :reservation
end
