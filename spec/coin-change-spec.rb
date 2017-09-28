require 'rspec'
require_relative "../lib/coin-change.rb"

describe "make_change" do
  it 'returns an empty array if input is zero' do
    expect(make_change(0)).to eq([])
  end

  it 'returns a penny if input is 1 cent' do
    expect(make_change(1)).to eq(['penny'])
  end

  it 'returns 2 pennies if input is 2 cents' do
    expect(make_change(2)).to eq(['penny', 'penny'])
  end

  it 'returns a nickel if input is 5 cents' do
    expect(make_change(5)).to eq(['nickel'])
  end

  it 'returns a nickel and 2 pennies if input is 7 cents' do
    expect(make_change(7)).to eq(['nickel', 'penny', 'penny'])
  end

  it 'returns a dime if input is 10 cents' do
    expect(make_change(10)).to eq(['dime'])
  end

  it 'returns a dime and a nickel if input is 15 cents' do
    expect(make_change(15)).to eq(['dime', 'nickel'])
  end

  it 'returns a dime, a nickel and 3 pennies if input is 18 cents' do
    expect(make_change(18)).to eq(['dime', 'nickel', 'penny', 'penny', 'penny'])
  end

  it 'returns a quarter if input is 25 cents' do
    expect(make_change(25)).to eq(['quarter'])
  end

  it 'returns a quarter, a dime, a nickel and a penny if input is 41 cents' do
    expect(make_change(41)).to eq(['quarter', 'dime', 'nickel', 'penny'])
  end

  it 'returns 2 quarters, a dime, a nickel and 4 pennies if input is 89 cents' do
    expect(make_change(69)).to eq(['quarter', 'quarter', 'dime', 'nickel', 'penny', 'penny', 'penny', 'penny'])
  end
end
