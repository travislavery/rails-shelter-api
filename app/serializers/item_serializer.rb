class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :description
  #belongs_to :shelter, serializer: ItemShelterSerializer
end
