# require 'json'
# require 'open-uri'
# require 'pry'

# url = 'http://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
# data_serialized = open(url).read
# data = JSON.parse(data_serialized)

# data["drinks"].each do |name|
#   name = element["strIngredient1"]
#   ingr = Ingredient.create(name: name)
#   puts "#{ingr.name}"
# end
# binding.pry

Ingredient.create(name: "lemon")
Ingredient.create(name: "ice")
Ingredient.create(name: "mint leaves")
