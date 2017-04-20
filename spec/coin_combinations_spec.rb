require('rspec')
require('coin_combinations')

describe('Fixnum#coin_combinations') do
  it('will return no change needed if amount is greater than 99') do
    expect(100.coin_combinations()).to(eq("No change needed"))
  end
end
