require 'json'
require 'open-uri'
require 'pry'

Ingredient.destroy_all

url = 'http://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
data_serialized = open(url).read
data = JSON.parse(data_serialized)

data["drinks"].each do |element|
  name = element["strIngredient1"]
  ingr = Ingredient.create(name: name)
  puts "#{ingr.name} created!"
end
puts "Finished seeding"


# Ingredient.destroy_all
# Cocktail.destroy_all


# Ingredient.create(name: "lemon")
# Ingredient.create(name: "ice")
# Ingredient.create(name: "mint leaves")


