require "spec_helper"
require "pry"

describe Song do
  before :each do
  @song = Song.new "Title", "Artist", :genre
  end

  describe "#initialize" do
    it "takes three attributes and returns a Song object" do
      expect(@song).to be_a(Song)
    end
  end

  describe "#title" do
    it "returns the correct song title" do
      expect(@song.title).to eq("Title")
    end
  end

  describe "#artist" do
    it "returns the correct artist" do
      expect(@song.artist).to eq("Artist")
    end
  end

  describe "#genre" do
    it "returns the correct genre" do
      expect(@song.genre).to eq(:genre)
    end
  end

end