class Dish

attr_accessor :name, :price

def initialize(name, price)
  @name = name
  @price = price
end
end

dish = Dish.new("Pizza", 9.99)

puts dish.name
puts dish.price