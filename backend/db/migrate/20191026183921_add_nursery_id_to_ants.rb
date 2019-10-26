class AddNurseryIdToAnts < ActiveRecord::Migration[6.0]
  def change
    add_column :ants, :nursery_id, :integer
  end
end
