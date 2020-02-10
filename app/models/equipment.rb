class Equipment < ApplicationRecord
  has_many :products, through: :product_equipments
end
