class CreateGuests < ActiveRecord::Migration
  def change
    create_table :guests do |t|
      t.string :name
      t.boolean :is_coming
      t.string :dietary

      t.timestamps
    end
  end
end
