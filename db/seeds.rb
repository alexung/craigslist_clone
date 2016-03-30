# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

10.times do
  Category.create(title: Forgery('lorem_ipsum').words(3));
end
50.times do
  Article.create(category_id: rand(1..10), title: Forgery('lorem_ipsum').words(5), description: Forgery('lorem_ipsum').words(50), price: Forgery('monetary').money, address: Forgery('address').street_address)
end
