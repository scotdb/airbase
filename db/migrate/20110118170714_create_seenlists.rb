class CreateSeenlists < ActiveRecord::Migration
  def self.up
    create_table :seenlists do |t|
      t.integer :airport_visit_id
      t.integer :aircraft_history_id
      t.string :registration
      t.string :aircraft_type
      t.string :constructors_number
      t.integer :line_number
      t.string :operator
      t.text :notes

      t.timestamps
    end
  end

  def self.down
    drop_table :seenlists
  end
end
