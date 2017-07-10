Product.destroy_all

50.times do
  product = Product.create!(name: Faker::Food.ingredient,
                  country: Faker::Address.country,
                  cost: Faker::Number.decimal(2,2))
  rand(2...15).times do
    product.reviews.create(author: Faker::Name.name,
                  rating: Faker::Number.between(1,5),
                  content_body: Faker::ChuckNorris.fact)
  end
end

p "Created #{Product.count} products with #{Review.count} reviews"
