class AddCarToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :car_id, :integer
    add_index :users, :car_id
  end
end
