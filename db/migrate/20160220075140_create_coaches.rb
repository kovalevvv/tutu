class CreateCoaches < ActiveRecord::Migration
  def change
    create_table :coaches do |t|
      t.string :coach_type
      t.integer :seats_all_up
      t.integer :seats_all_down
      t.integer :seats_up
      t.integer :seats_down
      t.integer :train_id
    end
  end
end
