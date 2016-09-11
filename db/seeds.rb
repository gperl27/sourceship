# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

i = 0
while i < 11
  c = Company.create!(name: "Company #{i}", url: "www.#{i}.com",
                  username: "#{i}company", password: "#{i}password",
                  description: "#{i} is a cool company."
    )
  j = 0
  5.times { c.projects.create!(name: "Project #{j}", description: "About project #{j}",
                       level: "level #{j}", due_date: Time.now, 
                       finished: false
                       )
    j+= 1
          }
  i+=1
end