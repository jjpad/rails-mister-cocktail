# require 'open-uri'
# require 'json'

# ingredients = ActiveSupport::JSON.decode(File.read("http://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"))
# ingredients = ingredients[0]

# ingredients.each do |name|
#   Ingredient.create!(
#     name: name
#   )
# end
