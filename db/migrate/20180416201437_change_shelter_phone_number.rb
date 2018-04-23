class ChangeShelterPhoneNumber < ActiveRecord::Migration[5.1]
  def change
  	change_column :shelters, :phone_number, :string
  end
end
