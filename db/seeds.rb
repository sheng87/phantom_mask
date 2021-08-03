# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
drugstore_list = JSON.parse(File.read('../data/pharmacies.json'))

drugstore_list.each do |drugstore|
  Drugstore.create(drugstore.to_h)
end

user_list = JSON.parse(File.read('../data/users.json'))

user_list.each do |user|
  User.create(user.to_h)
end
