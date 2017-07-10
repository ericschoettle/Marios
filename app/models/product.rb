class Product < ApplicationRecord
  has_many :reviews, dependent: :destroy

  validates :name, :country, :cost, :presence => true

  scope :five_most_recent, -> { order(created_at: :desc).limit(5) }
  scope :made_in_usa, -> { where("country like ?", "United States") }
  scope :five_most_reviewed, -> {(
    select("products.id, products.name, products.country, count(reviews.id) as reviews_count")
    .joins(:reviews)
    .group("products.id")
    .order("reviews_count DESC")
    .limit(5)
  )}
end
