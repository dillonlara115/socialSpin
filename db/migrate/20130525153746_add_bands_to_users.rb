class AddBandsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :fav_bands, :string
  end
end
