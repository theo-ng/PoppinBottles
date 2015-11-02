require 'byebug'

class BottlePops

  def bottle_poppin(bottles, caps, acc = bottles)
    # byebug
    # puts acc
    return acc if bottles < 2 && caps < 4
    new_caps = caps.divmod(4)
    new_bottles = bottles.divmod(2)
    curr_bottles = new_bottles.inject(:+) + new_caps[0]
    curr_caps = new_caps.inject(:+) + new_bottles[0]
    bottle_poppin(curr_bottles, curr_caps, acc + new_bottles[0] + new_caps[0])
  end

  def run
    puts "How much would you like to spend?"
    amount = gets.chomp.to_i
    puts bottle_poppin(amount / 2, amount / 2)
    run
  end
end

# comment out to run tests
BottlePops.new.run