require 'capybara/rspec'

feature 'Viewing bookmarks' do
  scenario "visiting the bookmarks page shows user's bookmarks" do
    connection = PG.connect(dbname: 'bookmark_manager_test')

    Bookmark.create(url: 'http://www.makersacademy.com', title: "Makers")
    Bookmark.create(url: 'http://www.destroyallsoftware.com', title: "Destroy all software")
    Bookmark.create(url: 'http://www.google.com', title: "Google")

    visit('/bookmarks')

    expect(page).to have_content "http://www.makersacademy.com"
    expect(page).to have_content "http://www.destroyallsoftware.com"
    expect(page).to have_content "http://www.google.com"
  end
end
