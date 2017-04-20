class Fixnum
  define_method(:coin_combinations) do
    coins = Hash.new()
    coins.store(25, "quarter")
    coins.store(10, "dime")
    coins.store(5, "nickel")
    coins.store(1, "penny")
    coin_array = []
    result = coin_array.join(' ')
    pennies = self./(1).to_s
    nickels = self./(5).to_s

    if self > 99
      coin_array.push("No change needed")
    elsif self > 5
      coin_array.push(nickels.+(" nickels"))
    elsif self == 5
      coin_array.push(nickels.+(" nickel"))
    elsif self > 1
      coin_array.push(pennies.+(" pennies"))
    elsif self == 1
      coin_array.push(pennies.+(" penny"))
    end
    result = coin_array.join(' ')
  end
end
