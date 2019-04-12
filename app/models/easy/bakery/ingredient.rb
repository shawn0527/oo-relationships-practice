class Ingredient

    attr_accessor :name, :dessert, :calories
                    #  :desssert_arr

    @@all = []

    def initialize(name, dessert, calories)
        @name = name
        @dessert = dessert
        @calories = calories
        @@all << self
    end

    def self.all
        @@all
    end


    def bakery
        self.dessert.bakery
        # self.dessert_arr.map do |dessert|
        #     dessert.bakery
        # end
    end

    def self.find_all_by_name(ingredient_name)
        self.all.select do |ingredient|
            ingredient.name.include?(ingredient_name)
        end
    end
 end
