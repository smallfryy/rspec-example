require "spec_helper"
require "pry"

describe "Library" do
  before :all do
    lib_obj = [
                Song.new("The End", "The Doors", :classic_rock),
                Song.new("Oops I did it Again", "Britney Spears", :pop),
                Song.new("Blackstar", "David Bowie", :glam_rock),
                Song.new("Save Me", "Queen", :glam_rock),
                Song.new("Strange (I've Seen That Face Before)", "Grace Jones", :grace_jones)
            ]
    File.open "songs.yml", "w" do |f|
      f.write YAML::dump lib_obj
    end
    # This dumps the library object into new YML file.
  end

  before :each do
    @lib = Library.new "songs.yml"
  end

  describe "#initialize" do
    context "initialize Library with no parameters" do
      it "Library has no songs" do
        lib = Library.new
        expect(lib.songs).to eq([])
      end
    end

    context "Initialize Library with a YAML file parameter" do
      it "Library has five songs" do
        @lib.songs.length == 5
      end
    end
  end

  describe "#get_songs_in_genre" do
  it "returns all the songs in a given genre" do
    @lib.get_songs_in_genre(:classic_rock).length == 2
    end
  end

  describe "#add_song" do
  it "cccepts new songs and adds to library" do
    @lib.add_song(Song.new("A Jealous Heart Can Never Rest", 
      "The Black Madonna", :techno))
    end
  end

end