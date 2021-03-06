# frozen_string_literal: true

require 'oystercard.rb'
describe Oystercard do
  it 'has a balance of zero' do
    expect(subject.balance).to eq(0)
  end

  it 'should respond to top up' do
    expect(subject).to respond_to(:top_up).with(1).argument
  end

  it 'can top up the balance' do
    expect { subject.top_up 1 }.to change { subject.balance }.by 1
  end

  it 'raises an error if the maximum balance is exceeded' do
    maximum_balance = Oystercard::MAXIMUM_BALANCE
    subject.top_up maximum_balance
    expect{ subject.top_up 1 }.to raise_error "Maximum balance of #{maximum_balance} exceeded"
  end

  it 'deducts an amount from the balance' do
    subject.top_up(20)
    expect{ subject.deduct 3}.to change{ subject.balance }.by -3
  end

  it 'is initially not in a journey' do
    expect(subject).not_to be_in_journey
  end
end
