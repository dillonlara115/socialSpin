class Medium < ActiveRecord::Base
  attr_accessible :album, :album_description, :artist, :artist_description, :average_rating, :year

  letsrate_rateable "album", "artist"
end
