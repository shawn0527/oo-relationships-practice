class Dessert

    attr_accessor :name, :bakery

    @@all = []

    def initialize(name, bakery)
        @name = name
        @bakery = bakery
        @@all << self
    end

    def self.all
        @@all
    end

    def ingredients
        Ingredient.all.select do |ingredient|
            ingredient.dessert == self
        end.flatten
    end

    def calories
        dessert_calories = 0
        self.ingredients.each do |ingredient|
            dessert_calories += ingredient.calories
        end
        dessert_calories
    end
end
