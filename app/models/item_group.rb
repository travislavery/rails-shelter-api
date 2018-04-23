class ItemGroup < ApplicationRecord
	has_many :items
	validates :group_name, presence: true
end
