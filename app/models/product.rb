class Product < ApplicationRecord
  has_many :operations
  has_many :stocks, through: :operations
end
