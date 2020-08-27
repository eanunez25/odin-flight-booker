class CreateFlights < ActiveRecord::Migration[6.0]
  def change
    create_table :flights do |t|
      t.integer :start_id
      t.integer :end_id
      t.datetime :takeoff
      t.integer :duration

      t.timestamps
    end
  end
end
