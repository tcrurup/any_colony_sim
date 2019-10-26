class AddCommonsIdToAnts < ActiveRecord::Migration[6.0]
  def change
    add_column :ants, :commons_id, :integer
  end
end
