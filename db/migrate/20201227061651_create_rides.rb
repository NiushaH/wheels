class CreateRides < ActiveRecord::Migration[6.0]
  def change
    create_table :rides do |t|
      t.date :departure_date
      t.string :origin
      t.string :destination

      t.timestamps
    end
  end
end
