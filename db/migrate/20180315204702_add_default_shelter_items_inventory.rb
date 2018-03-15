class AddDefaultShelterItemsInventory < ActiveRecord::Migration[5.1]
  def change
  	change_column :shelter_items, :inventory, :integer, default: 0
  end
end
