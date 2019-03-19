# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.destroy_all

10.times do
    Product.create(
        product_name: Faker::Games::ElderScrolls.unique.dragon,
        description: Faker::Games::ElderScrolls.race,
        price: Faker::Commerce.price(range = 0.00..999999.99, as_string = false),
        quantity: Faker::Number.between(0, 20)
    )
end

AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?