class SetAddressAsNotRequired < ActiveRecord::Migration
  def self.up
    change_column :dwellings, :address, :string, :null => true
  end

  def self.down
    change_column :dwellings, :address, :string, :null => false
  end
end
