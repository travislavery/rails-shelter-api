class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.string :group_name
      t.string :description
      t.integer :item_group_id

      t.timestamps
    end
  end
end
