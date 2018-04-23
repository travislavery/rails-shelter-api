class Item < ApplicationRecord
	has_many :shelter_items
	has_many :shelters, through: :shelter_items
	belongs_to :item_group

	validates :group_name, presence: true
end
