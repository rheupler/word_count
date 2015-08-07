require('Capybara/rspec')
require('./app')

Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('word_count path', {:type => :feature}) do
  it('Process user entry and tells how many times the word appears in string') do
    visit('/')
    fill_in("user_string", :with => "I am so sad")
    fill_in("word", :with => "sad")
    click_button("Send")
    expect(page).to have_content(1)
  end
end
