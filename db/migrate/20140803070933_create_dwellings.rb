class CreateDwellings < ActiveRecord::Migration
  def self.up
    create_table :dwellings do |t|
      t.integer :area, :null => false, :default => 0
      t.integer :dwelling_area, :null => false, :default => 0
      t.integer :kitchen_area, :null => false, :default => 0
      t.integer :count_room, :null => false, :default => 1
      t.boolean :adjacent_rooms, :null => false, :default => false
      t.boolean :separated_bathroom, :null => false, :default => false
      t.integer :level, :null => false, :default => 1
      t.string :address, :null => false
      t.string :type
      t.timestamps
    end
  end

  def self.down
    drop_table :dwellings
  end
end
