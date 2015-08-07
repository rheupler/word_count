require('capybara/rspec')
require('./app')

Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('The word count path', {:type => :feature}) do
  it('Process user entry and tells how many times the word appears in string') do
    visit('/')
    fill_in('word_count', with => 'I am okay with being okay')
    fill_in('word_count', with => 'okay')
    click_button('send')
    expect(page).to have_content(2)
  end
end
