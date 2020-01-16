require 'capybara/rspec'

feature 'Adding bookmarks' do
  scenario 'user can add a new bookmark' do

    visit('/bookmarks')
    fill_in :url, with: "www.pinterest.com"
    fill_in :title, with: "Pinterest"
    click_button('Save')

    expect(page).to have_link("Pinterest", href: "www.pinterest.com")
  end
end
