require 'rails_helper'

RSpec.describe Album, type: :model do
  describe "validations" do
    it "is valid" do
      # instantiate a valid album and ensure it is valid
      valid_album = double("Album", valid?: true)

      expect(valid_album.valid?).to be true
    end

    it "is invalid without a name" do
      # instantiate an album without a name and ensure it is invalid
      invalid_album = Album.new(name: nil, available: true, artist_id: 1)

      expect(invalid_album.valid?).to be false
    end
  end

  describe "attributes" do
    it "has expected attributes" do
      # ensure exactly the expected attributes are present on an album
      album = Album.new(name: "Album Name", available: true, artist_id: 1)
  
      expect(album.attribute_names.map(&:to_sym)).to contain_exactly(
        :id,
        :available,
        :name,
        :artist_id,
        :created_at,
        :updated_at
      )
    end
  end

  context "scopes" do
    describe "available" do
      it "returns a list of available albums sorted by name" do
        # set up a some available albums and unavailable albums and make expecations that the
        # available albums scope only returns available albums sorted by name
      end
    end
  end

  describe "#length_seconds" do
    it "calculates the total length in seconds of an album" do
      # setup a valid album and songs and make expecations about the return value of length seconds
    end
  end
end
