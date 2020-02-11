class Product < ApplicationRecord
  belongs_to :room
  belongs_to :reservation
  has_many :images
  has_many :product_categories
  has_many :product_facilities
  has_many :product_features
  has_many :categories, through: :product_categories
  has_many :facilities, through: :product_facilities
  has_many :features,   through: :product_features
end
