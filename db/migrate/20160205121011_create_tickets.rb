class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.integer :train_id
      t.integer :start_railway_station_id
      t.integer :stop_railway_station_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
