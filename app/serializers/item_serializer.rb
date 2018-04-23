class ItemSerializer < ActiveModel::Serializer
  attributes :id, :group_name, :description
  has_many :shelter_items
  #belongs_to :shelter, serializer: ItemShelterSerializer
end
