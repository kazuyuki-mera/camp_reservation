class ProductFacility < ApplicationRecord
  belongs_to :product
  belongs_to :facility
end
