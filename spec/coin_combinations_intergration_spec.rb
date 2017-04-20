require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('coin_combinations', {:type => :feature}) do
  it('an amount in cents') do
    visit('/')
    fill_in('number', :with => '3')
    click_button('Give me my change!')
    expect(page).to have_content('3 pennies')
  end
end
