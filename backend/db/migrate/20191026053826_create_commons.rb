class CreateCommons < ActiveRecord::Migration[6.0]
  def change
    create_table :commons do |t|
      t.integer :colony_id
    end
  end
end
