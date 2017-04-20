require('rspec')
require('coin_combinations')

describe('Fixnum#coin_combinations') do
  it('will return no change needed if amount is greater than 99') do
    expect(100.coin_combinations()).to(eq("No change needed"))
  end

  it('will return the proper amount of pennies') do
    expect(1.coin_combinations()).to(eq('1 penny'))
  end

  it('will return the proper amount of pennies') do
    expect(4.coin_combinations()).to(eq('4 pennies'))
  end
end
