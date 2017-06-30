Product.destroy_all

50.times do
  product = Product.create!(name: Faker::Food.ingedient,
                  country: Faker::Space.galaxy,
                  price: Faker::Number.decimal(2,2))
  5.times do
    product.reviews.create(author: Faker::Beer.name,
                  rating: Faker::Number.between(1,5),
                  content_body: Faker::ChuckNorris.fact)
end

p "Created #{Product.count} products"