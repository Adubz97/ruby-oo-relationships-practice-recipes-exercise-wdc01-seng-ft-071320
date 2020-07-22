class User

    attr_reader :name

    @@all = []

    def initialize (name)
        @name = name 

        @@all << self
    end

    def self.all
        @@all
    end

    def recipes
        recipe_cards = RecipeCard.all.select do |recipe|
            recipe.user == self
        end
        recipe_cards.map do |recipecard|
            recipecard.recipe
        end
    end

    def add_recipe_card(recipe, date, rating)
        RecipeCard.new(self, recipe, date, rating)
    end

    # - `User#declare_allergy`
    # should accept an`Ingredient` instance as an argument, 
    # and create a new `Allergy` instance for this `User` and the given `Ingredient`
        # def declare_allergy

        # end

    # - `User#allergens`
    # should return all of the ingredients this user is allergic to


    # - `User#top_three_recipes`
    # should return the top three highest rated recipes for this user.
        def top_three_recipes

        end

    # - `User#most_recent_recipe`
    # should return the recipe most recently added to the user's cookbook.
        def most_recent_recipe
            user_recipe = RecipeCard.all.select do |recipe|
                recipe.user == self
            end
            recent = user_recipe.map do |recipe|
                recipe.date
            end
            recent_recipe = user_recipe.select do |rec|
                rec.date == recent.sort.last
            end
            recent_recipe.map do |rr|
                rr.recipe
            end
            # binding.pry
        end



    ### `**Bonus**`
    # - `User#safe_recipes`
    # should return all recipes that do not contain ingredients the user is allergic to
    # - What other methods might be useful to have?

end