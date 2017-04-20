require('rspec')
require('coin_combinations')

describe('Fixnum#coin_combinations') do
  it('will return no change needed if amount is greater than 99') do
    expect(100.coin_combinations(4, 4, 4)).to(eq("No change needed"))
  end

  it('will return the proper amount of pennies') do
    expect(1.coin_combinations(4, 4, 4)).to(eq('1 penny'))
  end

  it('will return the proper amount of pennies') do
    expect(4.coin_combinations(4, 4, 4)).to(eq('4 pennies'))
  end

  it('will return the proper number of nickels') do
    expect(5.coin_combinations(4, 4, 4)).to(eq('1 nickel'))
  end

  it('will return the proper number of dimes') do
    expect(10.coin_combinations(4, 4, 4)).to(eq('1 dime'))
  end

  it('will return the proper number of quarters') do
    expect(25.coin_combinations(4, 4, 4)).to(eq('1 quarter'))
  end

  it('will return the proper number of coins') do
    expect(94.coin_combinations(4, 4, 4)).to(eq('3 quarters 1 dime 1 nickel 4 pennies'))
  end

  it('will return the proper number of coins even when missing some coins') do
    expect(99.coin_combinations(2, 4, 4)).to(eq('2 quarters 4 dimes 1 nickel 4 pennies'))
  end

end
