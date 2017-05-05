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
  {name: "Programação", iconName: "fa fa-code"},
  {name: "Exatas", iconName: "fa fa-thermometer-2"},
  {name: "Empreendedorismo", iconName: "fa fa-navicon"},
  {name: "Jogos", iconName: "fa fa-gamepad"},
  {name: "Ambiente", iconName: "fa fa-tree"},
  {name: "Humanas", iconName: "fa fa-map"},
  {name: "Arte", iconName: "fa fa-brush"},
  {name: "Tecnologia", iconName: "fa fa-code"},
  {name: "Música", iconName: "fa fa-music"},
  {name: "Outros", iconName: "fa fa-arrows-alt"}
])
puts "Done."
