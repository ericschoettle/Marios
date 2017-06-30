class Product < ApplicationRecord
  has_many :reviews, dependent: :destroy

  validates :name, :presence => true
  validates :country, :presence => true
  validates :cost, :presence => true
end
