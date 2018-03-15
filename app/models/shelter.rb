class Shelter < ApplicationRecord
	has_many :shelter_items
	belongs_to :user
	has_many :items, through: :shelter_items

	validates :name, presence: true
	validates :address, presence: true
	validates :phone_number, numericality: {only_integer: true}
end
