require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe 'Book', {:type => :feature} do
    it "adds book to library" do
      visit '/'
      fill_in 'word', :with => "foo"
      click_button 'Submit'
      expect(page).to have_content "foo"
    end
