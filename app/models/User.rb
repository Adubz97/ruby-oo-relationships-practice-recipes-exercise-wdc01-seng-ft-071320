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

    def recipe_card
        RecipeCard.all.select do |recipe|
            recipe.user == self
        end
    end

    def recipes
        self.recipe_card.map do |recipecard|
            recipecard.recipe
        end
    end

    def add_recipe_card(recipe, date, rating)
        RecipeCard.new(self, recipe, date, rating)
    end


    # and create a new `Allergy` instance for this `User` and the given `Ingredient`
        def declare_allergy(ingredient)
            Allergy.new(self, ingredient)
        end

    # - `User#allergens`
    # should return all of the ingredients this user is allergic to
        def allergens
            Allergy.all.select do |allergy|
                allergy.user == self
            end.map do |allergy|
                allergy.ingredient
            end
        end

    # - `User#top_three_recipes`
    # should return the top three highest rated recipes for this user.
        def top_three_recipes
            all_ratings = self.recipe_card.map do |recipe|
                recipe.rating
            end
            user_recipeobj = self.recipe_card.select do |recipe_cardobj|
                all_ratings.sort.last(3).include?(recipe_cardobj.rating)
            end
            user_recipeobj.map do |recipe_cardobj|
                recipe_cardobj.recipe
            end
        end

    # - `User#most_recent_recipe`
    # should return the recipe most recently added to the user's cookbook.
        def most_recent_recipe
            recent_date = self.recipe_card.map do |recipe|
                recipe.date #date of recipe
            end
            recent_recipe = self.recipe_card.select do |cardobj|
                cardobj.date == recent_date.sort.last
            end
            recent_recipe.map do |recipe_cardobj|
                recipe_cardobj.recipe
            end
        end



    ### `**Bonus**`
    # - `User#safe_recipes`
    # should return all recipes that do not contain ingredients the user is allergic to
    # - What other methods might be useful to have?

end