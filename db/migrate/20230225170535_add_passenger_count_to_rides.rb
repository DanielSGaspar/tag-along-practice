class AddPassengerCountToRides < ActiveRecord::Migration[7.0]
  def change
    add_column :rides, :passenger_count, :integer
  end
end
