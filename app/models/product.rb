class Product < ApplicationRecord
  

  validates :name, :presence => true
  validates :country, :presence => true
  validates :cost, :presence => true
end
