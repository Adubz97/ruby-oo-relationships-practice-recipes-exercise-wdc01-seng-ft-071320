class Recipe

    attr_reader :name

    @@all = []

    def initialize (name)
        @name = name

        @@all << self
    end

    def self.all
     @@all
    end

    def self.most_popular
        recipe_card = RecipeCard.all.map do |rc|
            rc.recipe
        end
            recipe_card.max_by do |rec|
            recipe_card.count(rec)
        end
    end

    def users
        RecipeCard.all.select do |rc|
            rc.recipe == self
        end.map do |rc|
            rc.user
        end
    end

    def ingredients
        RecipeIngredient.all.select do |recipeingredient|
            recipeingredient.recipe == self
        end.map do |recipeingredient|
            recipeingredient.ingredient
        end
    end

# - `Recipe#allergens`
# should return all of the `Ingredient`s in this 
#recipe that are allergens 

    def allergens
        
    end

    def add_ingredients(ingredient)
        RecipeIngredient.new(self, ingredient)
    end

end