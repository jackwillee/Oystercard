# frozen_string_literal: true

class Oystercard
  MAXIMUM_BALANCE = 1000
  attr_reader :balance

  def initialize
    @balance = 0
  end

  def top_up(amount)
    @balance += amount
  end
end
