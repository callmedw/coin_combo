class Fixnum
  define_method(:coin_combinations) do
    result = ""
    if self > 99
      result = "No change needed"
    end
    result
  end
end
