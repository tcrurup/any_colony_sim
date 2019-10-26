class CreateAnts < ActiveRecord::Migration[6.0]
  def change
    create_table :ants do |t|
      t.integer :colony_id
    end
  end
end
