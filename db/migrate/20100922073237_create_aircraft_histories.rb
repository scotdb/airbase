class CreateAircraftHistories < ActiveRecord::Migration
  def self.up
    create_table :aircraft_histories do |t|
      t.integer :aircraft_id
      t.integer :aircraft_sequence
      t.string :registration,:limit => 10
      t.string :aircraft_details

      t.timestamps
    end
  end

  def self.down
    drop_table :aircraft_histories
  end
end
