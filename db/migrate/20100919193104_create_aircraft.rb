class CreateAircraft < ActiveRecord::Migration
  def self.up
    create_table :aircraft do |t|
      t.string :aircraft_type
      t.string :constructors_number
      t.integer :line_number
      t.integer :aircraft_status_id

      t.timestamps
    end
  end

  def self.down
    drop_table :aircraft
  end
end
