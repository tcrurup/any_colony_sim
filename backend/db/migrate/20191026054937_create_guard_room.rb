class CreateGuardRoom < ActiveRecord::Migration[6.0]
  def change
    create_table :guard_rooms do |t|
      t.integer :colony_id
    end
  end
end
