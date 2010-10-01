class CreateAircraftStatuses < ActiveRecord::Migration
  def self.up
    create_table :aircraft_statuses do |t|
      t.string :description

      t.timestamps
    end
  end

  def self.down
    drop_table :aircraft_statuses
  end
end
