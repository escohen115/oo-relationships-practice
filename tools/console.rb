require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

i1 = Ingredients.new("Chocolate", 120)
i2 = Ingredients.new("Sugar", 200)
b1 = Bakery.new("Samantha's Bakery")
d1 = Desserts.new("Chocolate Cake", b1)
r1 = Recipe.new(d1, [i1, i2] )

i3 = Ingredients.new("Apple", 20)
i4 = Ingredients.new("Flour", 50)
d2 = Desserts.new("Apple Pie", b1)
r2 = Recipe.new(d2, [i3, i4] )



binding.pry
