class Logic

  attr_reader :bots_caps_count
  attr_reader :from_bottles
  attr_reader :from_caps
  attr_reader :total_bottles

  def initialize(amount)
    @total_bottles = amount / 2
    @bots_caps_count = Array.new(2, @total_bottles)
    @from_bottles = 0
    @from_caps = 0
  end

  def can_redeem?
    @bots_caps_count[0] > 1 || @bots_caps_count[1] > 3
  end

  def redeem_bottles
    #quotient = bottles redeemed
    #remainder = bottles left
    quotient, remainder = @bots_caps_count[0].divmod(2)
    @bots_caps_count[0] = remainder + quotient
    @bots_caps_count[1] += quotient
    @from_bottles += quotient
    @total_bottles += quotient
    # print_state
  end

  def redeem_caps
    #quotient = caps redeemed
    #remainder = caps left
    quotient, remainder = @bots_caps_count[1].divmod(4)
    @bots_caps_count[1] = remainder + quotient
    @bots_caps_count[0] += quotient
    @from_caps += quotient
    @total_bottles += quotient
    # print_state
  end

  def print_state
    puts "Total Bottles: #{@total_bottles}, From Bottles: #{@from_bottles}, From Caps: #{@from_caps}"
    puts "Current Bottles: #{@bots_caps_count[0]}"
    puts "Current Caps: #{@bots_caps_count[1]}"
  end
end
