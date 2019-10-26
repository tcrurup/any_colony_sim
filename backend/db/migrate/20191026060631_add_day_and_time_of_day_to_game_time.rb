class AddDayAndTimeOfDayToGameTime < ActiveRecord::Migration[6.0]
  def change
    add_column :game_times, :day, :integer
    add_column :game_times, :time_of_day, :string
  end
end
