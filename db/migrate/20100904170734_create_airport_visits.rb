class CreateAirportVisits < ActiveRecord::Migration
  def self.up
    create_table :airport_visits do |t|
      t.references :airport
      t.date :visit_date

      t.timestamps
    end
  end

  def self.down
    drop_table :airport_visits
  end
end
