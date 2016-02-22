class Library
  attr_accessor :songs

  def initialize(lib_file = false)
    @lib_file = lib_file
    @songs = @lib_file ? YAML::load(File.read(@lib_file)) : []
    # YAML syntax to initialize text file with song data.
  end

  def get_songs_in_genre(genre)
    @songs.select do |song|
      song.genre == genre
    end
  end

  def add_song(song)
    @songs.push song
  end

  def get_song(title)
    @songs.select do |song|
      song.title == title
    end.first
  end

  def save (lib_file = false)
    @lib_file = lib_file || @lib_file || "library.yml"
    File.open @lib_file, "w" do |f|
      f.write YAML::dump @songs
    end
  end
end