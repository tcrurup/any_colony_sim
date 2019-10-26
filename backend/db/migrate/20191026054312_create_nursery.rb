class CreateNursery < ActiveRecord::Migration[6.0]
  def change
    create_table :nurseries do |t|
      t.integer :colony_id
    end
  end
end
