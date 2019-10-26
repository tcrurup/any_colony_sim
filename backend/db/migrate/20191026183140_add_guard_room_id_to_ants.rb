class AddGuardRoomIdToAnts < ActiveRecord::Migration[6.0]
  def change
    add_column :ants, :guard_room_id, :integer
  end
end
