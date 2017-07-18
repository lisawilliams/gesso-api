class CreateShows < ActiveRecord::Migration[5.0]
  def change
    create_table :shows do |t|
      t.string :show_name
      t.date :show_date
      t.time :show_time
      t.text :notes

      t.timestamps
    end
  end
end
