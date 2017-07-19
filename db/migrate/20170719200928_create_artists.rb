class CreateArtists < ActiveRecord::Migration[5.0]
  def change
    create_table :artists do |t|
      t.string :artist_name
      t.string :artist_website

      t.timestamps
    end
  end
end
