class Fixnum
  define_method(:coin_combinations) do
    coins = Hash.new()
    coins.store(25, " quarter")
    coins.store(10, " dime")
    coins.store(5, " nickel")
    coins.store(1, " penny")
    coin_array = []
    change = self

    if self > 99
      coin_array.push("No change needed")
    else
      coins.each_pair do |key, value|
        number = change./(key)
        remainder = change % key
        number_as_string = number.to_s

        if number > 0
          if key == 1
            if number > 1
              coin_array.push(number_as_string.+(" pennies"))
            else
              coin_array.push(number_as_string.+(value))
            end
          elsif number > 1
            coin_array.push(number_as_string.+(value.+("s")))
            change = remainder
          elsif number == 1
            coin_array.push(number_as_string.+(value))
            change = remainder
          end
        end
      end
    end
    coin_array.join(' ')
  end
end
