# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Artist.destroy_all
[
  "The Doors",
  "The Doors",
  "The Killers",
  "The Who",
  "The Greatful Dead",
  "Guns 'N Roses"
].each do |name|
  Artist.create name: name
end


[
  "Sony",
  "Virgin",
  "Bad Boy Entertainment",
  "Death Row REcords",
].each do |name|
  Label.find_or_create_by name: name
end

[
  "Who Are You",
  "Appetite For Desctruction",
  "Random Access Memories",
  "Steady Arcadium",
  "Hot Fuss",
].each do |name|
  Album.find_or_create_by name: name
end
