require 'bookmark'

describe Bookmark do
  describe '.all' do
    it 'returns a list of bookmarks' do

      Bookmark.create(url: "http://www.makersacademy.com")
      Bookmark.create(url: 'http://www.destroyallsoftware.com')
      Bookmark.create(url: 'http://www.google.com')

      bookmarks = Bookmark.all

      expect(bookmarks).to include("http://www.makersacademy.com")
      expect(bookmarks).to include("http://www.destroyallsoftware.com")
      expect(bookmarks).to include("http://www.google.com")
    end
  end

  describe '.create' do
    it 'adds a new bookmark' do
      bookmark = Bookmark.create(url: "http://www.pinterest.com", title: "Pinterest")

      expect(bookmark['url']).to eq("http://www.pinterest.com")
      expect(bookmark['title']).to eq("Pinterest")
    end
  end
end
