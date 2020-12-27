class AddCarToRide < ActiveRecord::Migration[6.0]
  def change
    add_column :rides, :car_id, :integer
    add_index :rides, :car_id
  end
end
