def make_change(amount)
  result = []

  coins = {
    25 => 'quarter',
    10 => 'dime',
    5 => 'nickel',
    1 => 'penny'
  }

  coins.each_key do |coin_value|
    while amount >= coin_value
      result << coins[coin_value]
      amount -= coin_value
    end
  end

  result
end
