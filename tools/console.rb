require_relative '../config/environment.rb'
require "date"

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

#date and time
day1 = DateTime.new(2019,02,03)
day2 = DateTime.new(2020,07,22)
day3 = DateTime.new(2020,01,30)
day4 = DateTime.new(2020,05,28)
day5 = DateTime.new(2020,03,14)

#Methods
jina.add_recipe_card(tiramisu, day1, 5)
jina.add_recipe_card(pasta, day2, 2)
abdullah.add_recipe_card(pasta, day3, 8)
claudia.add_recipe_card(pizza, day4, 7)
claudia.add_recipe_card(pasta, day5, 6)

pasta.add_ingredients(eggs)
pasta.add_ingredients(flour)
# print pasta.ingredients
# print pasta.users
# print jina.recipes
# p Recipe.most_popular

pp jina.most_recent_recipe

# binding.pry
