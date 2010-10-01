class CreateAirports < ActiveRecord::Migration
  def self.up
    create_table :airports do |t|
      t.string :name
      t.string :iata_code, :limit => 3
      t.string :icao_code, :limit => 4

      t.timestamps
    end
  end

  def self.down
    drop_table :airports
  end
end
