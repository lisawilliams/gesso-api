class CreateArtworks < ActiveRecord::Migration[5.0]
  def change
    create_table :artworks do |t|
      t.string :title
      t.string :artist
      t.integer :yearcreated
      t.string :artform
      t.string :materials
      t.string :surface
      t.string :dimensions
      t.references :show, foreign_key: true

      t.timestamps
    end
  end
end
