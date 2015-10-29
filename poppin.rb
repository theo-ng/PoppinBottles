def poppin_bottles(amount)
  # @bottle_count = amount / 2
  # puts "You purchased #{@bottle_count} bottles with #{amount} dollars"
  # @cap_count = @bottle_count
  # @cap_redeems = 0
  # @bottle_redeems = 0
  # while @bottle_count > 1 || @cap_count > 3
  #   recycle_bottles(@bottle_count)
  #   recycle_caps(@cap_count)
  # end
  # @redeemed = @cap_redeems + @bottle_redeems
  # puts "You have redeemed #{@redeemed} bottles \n\n"
# def recycle_bottles(bottles)
#   puts "Recycling #{bottles} bottles"
#   quotient, remainder = bottles.divmod(2)
#   @bottle_count = quotient + remainder
#   @cap_count = quotient + remainder 
#   @bottle_redeems += quotient
#   puts "#{quotient} Bottles free from recycling bottles"
#   puts "#{remainder} Bottles left over"
# end

# def recycle_caps(caps)
#   puts "Recycling #{caps} caps"
#   quotient, remainder = caps.divmod(4)
#   @bottle_count += quotient + remainder
#   @cap_count += quotient + remainder
#   @cap_redeems += quotient
#   puts "#{quotient} Bottles free from recycling caps"
#   puts "#{remainder} Caps left over"
# end

  @current_bottles = amount / 2
  @caps_free = 0
  @bottles_free = 0
  @current_caps = @current_bottles
  @total_bottles = @current_bottles
  calculate_free
  puts "\n--------------------------------------------------------"
  puts "With the initial amount of: $#{amount} \nTotal Bottles: #{@total_bottles} \nFrom Bottles: #{@bottles_free}, From Caps: #{@caps_free} \nBottles Left: #{@current_bottles}, Caps Left: #{@current_caps}"
  puts "--------------------------------------------------------"
end

def calculate_free()
  recycle_one("bottle") if @current_bottles > 1
  recycle_one("caps") if @current_caps > 3
  calculate_free if @current_bottles > 1 || @current_caps > 3
end

def recycle_one(type)
  if type == "bottle"
    @current_bottles -= 2
    @bottles_free += 1

  # do bottle minusing stuff
  else
    @current_caps -= 4
    @caps_free += 1
    # do caps
  end
  @current_bottles += 1
  @current_caps += 1
  @total_bottles += 1
end

def repl_ui
  loop do
    puts "\nHow much are you going to spend?"
    amount = gets.chomp
    poppin_bottles(amount.to_i)
  end
end

repl_ui