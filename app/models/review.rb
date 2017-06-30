class Review < ApplicationRecord
  belongs_to :product

  validates :author, :presence => true
  validates :rating, :presence => true
  validates :content_body, :presence => true

  validates :content_body, length: { in: 50..250 }

  # validates :rating, :inclusion => 1..5
  validates_inclusion_of :rating, :in => 1..5

end
