class Facility < ApplicationRecord
  has_many :product_facilities
  has_many :products, through: :product_facilities
end
