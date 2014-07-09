class AddHasDietaryToGuests < ActiveRecord::Migration
  def change
    add_column :guests, :has_dietary, :boolean
  end
end
