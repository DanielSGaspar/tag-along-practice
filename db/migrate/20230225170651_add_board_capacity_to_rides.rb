class AddBoardCapacityToRides < ActiveRecord::Migration[7.0]
  def change
    add_column :rides, :board_capacity, :string
  end
end
