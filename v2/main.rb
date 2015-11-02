require 'byebug'
require_relative 'logic'
# require_relative 'bottles'
# require_relative 'redeem'

class Main
  def run
    puts "\nHow much are you going to spend?"
    amount = gets.chomp.to_i
    logic = Logic.new(amount)
    # byebug
    while logic.can_redeem?
      # byebug
      logic.redeem_bottles
      logic.redeem_caps
    end
    logic.print_state
    run
  end
end

Main.new.run