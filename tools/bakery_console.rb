require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


b1 = Bakery.new("B1")
b2 = Bakery.new("B2")
b3 = Bakery.new("B3")

d1 = Dessert.new("D1", b1)
d2 = Dessert.new("D2", b1)
d3 = Dessert.new("D3", b1)
d4 = Dessert.new("D4", b2)
d5 = Dessert.new("D5", b3)

i1 = Ingredient.new("I1", d4, 20)
i2 = Ingredient.new("I2", d4, 200)
i3 = Ingredient.new("I3", d4, 20)
i4 = Ingredient.new("I4", d4, 2)
i5 = Ingredient.new("I5", d4, 2000)
i6 = Ingredient.new("I6I1", d1, 100)
i7 = Ingredient.new("I7I1", d2, 100)
i8 = Ingredient.new("I8", d3, 100)
i9 = Ingredient.new("I9", d5, 100)
i10 = Ingredient.new("I10", d1, 100)



Pry.start
