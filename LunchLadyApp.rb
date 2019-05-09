require "pry"

class LunchLady
attr_accessor :user_name, :main_dish, :side_dish, :price, :order

@main_dish = [{name:"MeatLoaf", price:5}, {name:"Lasagna", price:6}, {name:"Burger", price:5},]
@side_dish = [{name:"Fries", price:1}, {name:"Vegetables", price:2}, {name:"Scotch", price:3},]
@order = []


  def initialize(user_name, main_dish, side_dish, price, order)
    @user_name = user_name
    @main_dish = main_dish
    @side_dish = side_dish
    @price = price
    @order = order
  end
  
  def user_name
  puts "What is your name?"
  input = gets.to.strip
  
  main_dish
  side_dish
  side_dish
  order
  end

  def main_dish
    puts "What main dish would you like, #{user_name}?"
    @main_dish.each_with_index do |main_dish, i|
      puts "#{i + 1}) #{main_dish}"
    end
    input = gets.to.i
    puts "You have selected #{@main_dish[input - 1]}"
    @order << @main_dish[input - 1]
  end

  def side_dish
    "What side dish would you like?"
    @side_dish.each_with_index do |side_dish, i|
      puts "#{i + 1}) #{side_dish}"
    end
      input = gets.to.i
        puts "You have selected #{@side_dish[input - 1]}"
      @order << side_dish[input - 1]
  end

  def order
    puts "Your order consists of #{main_dish}, #{side_dish}, #{side_dish}"
    price.sum(@order)
    puts "Your total is #{price.sum}"
    order = {}
  end
end



LunchLady.new

binding.pry


