class AddUserToShows < ActiveRecord::Migration[5.0]
  def change
    add_reference :shows, :user, foreign_key: true
  end
end
