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

  it('will return the proper number of nickels') do
    expect(5.coin_combinations()).to(eq('1 nickel'))
  end

  it('will return the proper number of dimes') do
    expect(10.coin_combinations()).to(eq('1 dime'))
  end

  it('will return the proper number of quarters') do
    expect(25.coin_combinations()).to(eq('1 quarter'))
  end

end
