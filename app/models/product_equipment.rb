class ProductEquipment < ApplicationRecord
  belongs_to :product
  belongs_to :equipment
end
