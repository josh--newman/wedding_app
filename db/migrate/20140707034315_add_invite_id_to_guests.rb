class AddInviteIdToGuests < ActiveRecord::Migration
  def change
    add_column :guests, :invite_id, :int
  end
end
