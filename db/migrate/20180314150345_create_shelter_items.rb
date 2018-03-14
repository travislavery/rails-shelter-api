class CreateShelterItems < ActiveRecord::Migration[5.1]
  def change
    create_table :shelter_items do |t|
      t.integer :shelter_id
      t.integer :item_id
      t.integer :inventory

      t.timestamps
    end
  end
end
