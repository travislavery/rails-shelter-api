class Item < ApplicationRecord
	has_many :shelter_items
	has_many :shelters, through: :shelter_items
end
