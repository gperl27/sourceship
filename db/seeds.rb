# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

i = 0
while i < 11
  Company.create!(name: "Company #{i}", url: "www.#{i}.com",
                  username: "#{i}company", password: "#{i}password",
                  description: "#{i} is a cool company."
    )
  i+=1
end