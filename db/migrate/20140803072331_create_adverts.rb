class CreateAdverts < ActiveRecord::Migration
  def self.up
    create_table :adverts do |t|
      t.integer :dwelling_id, :null => false
      t.integer :user_id, :null => false
      t.text :description, :null => false, :default => ''
      t.decimal :price, :scale => 2, :precision => 9, :null => false, :default => 0
      t.boolean :furniture_exists
      t.boolean :fridge_exists, :null => false, :default => false
      t.boolean :washer_exists, :null => false, :default => false
      t.boolean :tv_exists, :null => false, :default => false
      t.boolean :phone_exists, :null => false, :default => false
      t.boolean :children_allow, :null => false, :default => false
      t.boolean :wild_allow, :null => false, :default => false
      t.string :type
      t.timestamps
    end

    add_index :adverts, :dwelling_id
    add_index :adverts, :user_id
  end

  def self.down
    drop_table :adverts
  end
end
