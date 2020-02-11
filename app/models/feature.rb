class Feature < ApplicationRecord
  has_many :product_features
  has_many :products, through: :product_features
end
