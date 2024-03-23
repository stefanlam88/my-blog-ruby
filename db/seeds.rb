# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
User.destroy_all

User.create!([{
  email: "stefan1@gmail.com",
  name: "Alex 1",
  date_of_birth: "1986-01-03"
},
{
  email: "stefan2@gmail.com",
  name: "Stefan 2",
  date_of_birth: "1988-01-03"
},
{
  email: "stefan3@gmail.com",
  name: "Johnny 3",
  date_of_birth: "1990-01-03"
}])

p "Created #{User.count} Users"