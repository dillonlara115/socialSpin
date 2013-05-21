class Medium < ActiveRecord::Base
  attr_accessible :album, :album_description, :artist, :artist_description, :average_rating, :year, :arPhoto, :arPhoto_file_name

  letsrate_rateable "album", "artist"

  has_attached_file :arPhoto,
  	:styles => {
    :thumb  => "100x100",
    :medium => "200x200",
    :large => "600x400"
	},
	:storage => :s3,
	:s3_credentials => "/config/s3.yml",
	:path => ":attachment/:id/:style.:extension",
	:bucket => 'yourbucket'

	# if you are using attr_accessible to protect certain attributes, you will need to allow these:
	# attr_accessible :photo, :photo_file_name, :photo_content_type, :photo_file_size, :photo_updated_at
end
