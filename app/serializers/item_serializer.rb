class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :description
  has_many :shelter_items
  #belongs_to :shelter, serializer: ItemShelterSerializer
end
