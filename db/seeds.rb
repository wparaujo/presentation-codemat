# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Creating valid user
puts "Creating User"
user = User.create!({
  first_name: "Example",
  last_name: "Example",
  email: "example@example.ex",
  password_digest: "hashexample1234"
})

puts "Creating an user's dojo"
dojo = user.dojos.create({
  title: "Example Dojo",
  category: "Category Example"
})

puts "Creating Theme"
theme = Theme.create!({
  name: "Theme Example"
})

puts "Associating theme and dojo"
theme.dojos << dojo
