class CreateGameTime < ActiveRecord::Migration[6.0]
  def change
    create_table :game_times do |t|
      t.integer :colony_id
    end
  end
end
