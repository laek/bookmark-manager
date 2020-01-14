require 'capybara/rspec'

feature 'Viewing bookmarks' do
  scenario "visiting the index page shows user's bookmarks" do
    visit('/')

    expect(page).to have_content "http://www.makersacademy.com"
    expect(page).to have_content "http://www.destroyallsoftware.com"
    expect(page).to have_content "http://www.google.com"
  end
end
