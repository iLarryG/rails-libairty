# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

Place.create!(user_id: 1, name: "My Garden", kind: "garden", city: "Brussels", address: "63 rue fernand bernier st gilles", description: "blablabla", day_price: 12, night_price: 20)



5.times do
  User.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    password: Faker::Internet.password
    )

end

10.times do

  Place.create!(
    name: ["My Eden", "Crazy Rooftop", "Nicest place on earth"].sample,
    kind: ["garden", "balcony", "garden with a pool", "rooftop"].sample,
    city: Faker::Address.city,
    address: Faker::Address.street_address,
    description: Faker::Lorem.paragraph,
    day_price: [10,5,15].sample,
    night_price: [10,15,20].sample,
    user: User.all.sample
    )
end





