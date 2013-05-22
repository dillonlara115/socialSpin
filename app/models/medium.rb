class Medium < ActiveRecord::Base
  attr_accessible :album, :album_description, :artist, :artist_description, :average_rating, :year, :image

  letsrate_rateable "artist", "album", "song"

  mount_uploader :image, ImageUploader
end
