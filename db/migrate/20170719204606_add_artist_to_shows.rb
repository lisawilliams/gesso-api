class AddArtistToShows < ActiveRecord::Migration[5.0]
  def change
    add_reference :shows, :artist, foreign_key: true
  end
end
