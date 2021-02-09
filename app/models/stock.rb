class Stock < ApplicationRecord
  has_many :operations
  has_many :products, through: :operations
end
