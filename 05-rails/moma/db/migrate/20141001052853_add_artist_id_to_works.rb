class AddArtistIdToWorks < ActiveRecord::Migration
  def change
    add_column :works, :artist_id, :integer
  end
end
