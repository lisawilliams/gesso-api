class CreateShows < ActiveRecord::Migration[5.0]
  def change
    create_table :shows do |t|
      t.string :show_name
      t.string :show_date
      t.string :show_time
      t.string :time
      t.text :notes

      t.timestamps
    end
  end
end
