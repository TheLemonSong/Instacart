#Instacart.rb


FOODS  = {
  apple: 0.5,
  pear: 0.4,
  orange: 0.7,
  peach: 0.2
}

cart = Hash.new(0)
shopping = true
total_cost = 0
puts "Welcome to Super-Duper-Foods!"
puts "We have the following foods:"

while shopping do
  puts FOODS.keys

  puts "Please choose a food..."
  choice = gets.chomp
  puts "How many #{choice} would you like?"
  ammount = gets.chomp.to_i

  cart.store(choice, ammount)
  p cart
  puts cart.keys
  puts cart.values

  puts "Would like to buy something else (y/n)?"
  shopping = gets.chomp
  if shopping == "y"
    shopping = true
  else
    shopping = false
  end
end

cart.each{ | item, quantity | total_cost += ( quantity * FOODS[item.to_sym] ) }
puts "Total cost is: £" + total_cost.to_s


