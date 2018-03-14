class Shelter < ApplicationRecord
	has_many :shelter_items
	belongs_to :user
	has_many :items, through: :shelter_items
end
