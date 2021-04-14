puts "Clearing old data..."
Cohort.destroy_all
Student.destroy_all

# This will create 5 cohorts using a random date
puts "Seeding cohorts..."
c1 = Cohort.create(
  name: "nyc-dumbo-web-#{Faker::Date.forward(days: 365).strftime("%m%d%Y")}",
  current_mod: rand(1..5)
)
c2 = Cohort.create(
  name: "nyc-dumbo-web-#{Faker::Date.forward(days: 365).strftime("%m%d%Y")}",
  current_mod: rand(1..5)
)
c3 = Cohort.create(
  name: "nyc-dumbo-web-#{Faker::Date.forward(days: 365).strftime("%m%d%Y")}",
  current_mod: rand(1..5)
)
c4 = Cohort.create(
  name: "nyc-dumbo-web-#{Faker::Date.forward(days: 365).strftime("%m%d%Y")}",
  current_mod: rand(1..5)
)
c5 = Cohort.create(
  name: "nyc-dumbo-web-#{Faker::Date.forward(days: 365).strftime("%m%d%Y")}",
  current_mod: rand(1..5)
)

puts "Seeding students..."
# TODO: create seed data for students
# check your schema and make sure to create students with all the necessary data
50.times do 
  name = Faker::Name.name
  age = rand(18..25)
  email = Faker::Internet.email
  cohort_id = Cohort.ids.sample

  Student.create(name: name, age: age, email: email, cohort_id: cohort_id)
end


puts "Done!"