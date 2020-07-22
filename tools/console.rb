require_relative '../config/environment.rb'

#Users
jina = User.new("Jina")
claudia = User.new("Claudia")
abdullah = User.new("Abdullah")

#Recipes
tiramisu = Recipe.new("Tiramisu")
pasta = Recipe.new("Pasta")
pizza = Recipe.new("Pizza")

#ingredients
flour = Ingredient.new("Flour")
coffee = Ingredient.new("Coffee")
eggs =  Ingredient.new("Eggs")

#Methods
jina.add_recipe_card(tiramisu, "07/22", 6)
jina.add_recipe_card(pasta, "06/02", 2)
abdullah.add_recipe_card(pasta, "07/23",8)
claudia.add_recipe_card(pizza, "07/24",7)
claudia.add_recipe_card(pasta, "06/24",6)

pasta.add_ingredients(eggs)
pasta.add_ingredients(flour)
# print pasta.ingredients
# print pasta.users
# print jina.recipes
p Recipe.most_popular

# binding.pry
