class Feature < ApplicationRecord
  has_many :products, through: :product_features
end
