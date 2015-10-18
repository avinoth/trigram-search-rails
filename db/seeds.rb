# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


(0..100).each do |p|
  Post.create(title: Faker::Commerce.product_name, content: Faker::Company.catch_phrase)
  puts "Created #{p}"
end
