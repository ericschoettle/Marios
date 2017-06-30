class Review < ApplicationRecord

  validates :author, :presence => true
  validates :rating, :presence => true
  validates :content_body, :presence => true
end
