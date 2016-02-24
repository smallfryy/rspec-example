class Song
  attr_accessor :title, :artist, :genre
  # three attributes to initialize instanes of song class.

  def initialize(title, artist, genre)
    @title = title
    @artist = artist
    @genre = genre
  end
end