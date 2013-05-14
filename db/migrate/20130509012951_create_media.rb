class CreateMedia < ActiveRecord::Migration
  def change
    create_table :media do |t|
      t.string :artist
      t.text :artist_description
      t.string :album
      t.text :album_description
      t.string :year
      t.string :average_rating

      t.timestamps
    end
  end
end
