class Ingredient

    attr_reader :name

    @@all = []

    def initialize (name)
        @name = name

        @@all << self
    end

    def self.all
        @@all
    end

    #`Ingredient.most_common_allergen`
    # should return the ingredient instance
    #that the highest number of users are allergic to
    def self.most_common_allergen
        allergen = Allergy.all.map do |allergyobj|
            allergyobj.ingredient
        end
        allergen.max_by do |allergy|
            allergen.count(allergy)
        end
    end

end

