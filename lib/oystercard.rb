# frozen_string_literal: true

class Oystercard
  MAXIMUM_BALANCE = 50
  attr_reader :balance

  def initialize
    @balance = 0
  end

  def top_up(amount)
    fail "Maximum balance of #{MAXIMUM_BALANCE} exceeded" if amount + balance > MAXIMUM_BALANCE
    @balance += amount
  end

  def deduct(amount)

    @balance = @balance - amount 

  end 

  def in_journey?
    false 

  end 

 
end
