class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :description
  has_many :shelter_items
  has_many :shelters, serializer: AllShelterItemsSerializer
end
