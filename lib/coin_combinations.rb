class Fixnum
  define_method(:coin_combinations) do |quarters, dimes, nickels|
    pennies = 999
    coins = Hash.new()
    coins.store(25, [" quarter", quarters])
    coins.store(10, [" dime", dimes])
    coins.store(5, [" nickel", nickels])
    coins.store(1, [" penny", pennies])
    coin_array = []
    change = self % 100

    if change == 0
      coin_array.push("No change needed")
    else
      coins.each_pair do |key, value|
        number = change./(key)
        remainder = change % key

        def make_change(number_of_coins, array, coin_name, penny)
          number_as_string = number_of_coins.to_s
          if number_of_coins > 1
            if penny == 1
              array.push(number_as_string.+(" pennies"))
            else
              array.push(number_as_string.+(coin_name.+("s")))
            end
          elsif number_of_coins == 1
            array.push(number_as_string.+(coin_name))
          end
        end

        if value[1] >= number
          make_change(number, coin_array, value[0], key)
          value[1] = value[1].-(number)
          change = remainder
        elsif value[1] == 0
          change = number
        elsif value[1] < number
          make_change(value[1], coin_array, value[0], key)
          change = remainder.+((number.-(value[1]).*(key)))
          value[1] = 0
        end
      end
    end
    pennies = 999
    coin_array.join(' ')
  end
end
