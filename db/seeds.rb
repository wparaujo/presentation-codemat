# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Creating valid user
puts "Creating themes."
Theme.create([
  {name: "C++", icon_name: "fa fa-code"},
  {name: "Swift", icon_name: "fa fa-code"},
  {name: "Ruby", icon_name: "fa fa-code"},
  {name: "Python", icon_name: "fa fa-code"},
  {name: "Javascript", icon_name: "fa fa-code"},
  {name: "Node", icon_name: "fa fa-code"}
  # {name: "Jogos", icon_name: "fa fa-gamepad"},
  # {name: "Ambiente", icon_name: "fa fa-tree"},
  # {name: "Humanas", icon_name: "fa fa-map"},
  # {name: "Arte", icon_name: "fa fa-brush"},
  # {name: "Tecnologia", icon_name: "fa fa-code"},
  # {name: "Música", icon_name: "fa fa-music"},
  # {name: "Outros", icon_name: "fa fa-arrows-alt"}
])
puts "Done."
