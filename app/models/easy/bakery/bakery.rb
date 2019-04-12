class Bakery

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def desserts
        Dessert.all.select do |dessert|
            dessert.bakery == self
        end
    end

    def ingredients
        self.desserts.map do |dessert|
            dessert.ingredients
        end.flatten
    end

    def average_calories
        bakery_calories = 0
        self.desserts.each do |dessert|
            bakery_calories += dessert.calories
        end
        (bakery_calories/self.desserts.size.to_f).round(2)
    end

    def shopping_list
        self.ingredients.map do |ingredient|
            ingredient.name
        end.join(", ")
    end
end
