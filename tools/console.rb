require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


#Bakery ==> Deserts <==> Ingredients

def Bakery
  @@all = []
  attr_accessor :desert
  def initialize (name)
    @name = name 
    @@all << self
  end

  def ingredients
    Dessert.all.map{|dessert|dessert.ingredient}
  end

  def desserts
    Dessert.all.select{|dessert|dessert.bakery == self}
  end

  def average_calories
    total = 0
    arr = self.desserts.all.map{|dessert|dessert.ingredient.calories}
    arr.each do |cal|
      total += cal
    end
    total / arr.count
  end

  def self.all
    @@all
  end

  def shopping_list
    self.desserts.map{|dessert|dessert.ingredient}
  end


end

